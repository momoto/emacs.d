# encoding: utf-8

require 'net/http'
require 'rexml/document'

class Statdb
  def initialize()
    @@cache_path = Rails.root.join('tmp/opendata')
    @params = {}
  end

  def setParameters(params)
    params.each {|k, v|
      @params.store("cd" + k.capitalize, v.join(','))
    }
  end

  def getStatsList(code)
    if code.match('[0-8]{8}')
      cache = code + '.list.xml'
      param = {'statsCode' => code}
    else
      cache = 'statistics.xml'
      param = {'statsNameList' => 'Y'}
    end
    statslist = request('getStatsList', param, cache)
    stats_xml = REXML::Document.new(statslist)
    return stats_xml
      .elements['GET_STATS_LIST/DATALIST_INF[1]']
  end

  def getMetaInfo(id)
    cache = id + '.meta.xml'
    param = {'statsDataId' => id}
    metainfo = request('getMetaInfo', param, cache)
    stats_xml = REXML::Document.new(metainfo)
    return stats_xml
      .elements['GET_META_INFO/METADATA_INF[1]']
  end

  def getStatsData(id)
    cache = id + '.data.xml'
    param = {'statsDataId' => id}
    statsdata = request('getStatsData', param, cache)
    stats_xml = REXML::Document.new(statsdata)
    return stats_xml
      .elements['GET_STATS_DATA/STATISTICAL_DATA[1]']
  end

  def getInformation(xml)
    unless table_inf = xml.elements['TABLE_INF']
      return false
    end
    info = Hash.new
    info[:ID]              = table_inf.attributes['id']
    info[:CODE]            = table_inf.elements['STAT_NAME'].attributes['code']
    info[:STAT_NAME]       = table_inf.elements['STAT_NAME'].text
    info[:STATISTICS_NAME] = table_inf.elements['STATISTICS_NAME'].text
    info[:TITLE]           = table_inf.elements['TITLE'].text
    info[:GOV_ORG]         = table_inf.elements['GOV_ORG'].text
    info[:SURVEY_DATE]     = table_inf.elements['SURVEY_DATE'].text
    return info
  end

  def getList(xml)
    list = {:name => "name", :stats => Array.new}
    list[:count] = xml.elements['NUMBER'].text
    xml.elements.each('LIST_INF') do |list_inf|
      stat = {
        :id => list_inf.attributes['id'],
        :stat_name => list_inf.elements['STAT_NAME'].text,
        :stat_code => list_inf.elements['STAT_NAME'].attributes['code'],
        :gov_name => list_inf.elements['GOV_ORG'].text,
        :gov_code => list_inf.elements['GOV_ORG'].attributes['code']
      }
      if list_inf.elements['STATISTICS_NAME']
        stat[:statistics_name] = list_inf.elements['STATISTICS_NAME'].text
      end
      if list_inf.elements['TITLE']
        stat[:title] = list_inf.elements['TITLE'].text
      end
      if (list_inf.elements['CYCLE'])
        stat[:cycle] = list_inf.elements['CYCLE'].text
      end
      if (list_inf.elements['SURVEY_DATE'])
        stat[:survey_date] = list_inf.elements['SURVEY_DATE'].text
      end
      if (list_inf.elements['OPEN_DATE'])
        stat[:open_date] = list_inf.elements['OPEN_DATE'].text
      end
      list[:stats].push stat
    end
    return list
  end

  def getMeta(xml, id)
    unless class_inf = xml.elements['CLASS_INF']
      return false
    end
    meta = {:id => id, :fields => Array.new }
    class_inf.elements.each('CLASS_OBJ') do |class_obj|
      field = {
        :id => 'api[' + class_obj.attributes['id'] + '][]',
        :name => class_obj.attributes['name'],
        :options => Array.new,
        :selected => Array.new,
        :description => class_obj.attributes['description']
      }
      class_obj.elements.each('CLASS') do |option|
        field[:options].push [
          option.attributes['name'],
          option.attributes['code']
        ]
        if option.attributes['level'] == '1'
          field[:selected].push option.attributes['code']
        end
      end
      meta[:fields].push field
    end
    return meta
  end

  def getStatistics(xml)
    unless table_inf = xml.elements['TABLE_INF']
      return false
    end
    unless class_inf = xml.elements['CLASS_INF']
      return false
    end
    unless data_inf = xml.elements['DATA_INF']
      return false
    end
    stats = {
      :name => table_inf.elements['TITLE'].text,
      :meta => Hash.new,
      :data => Array.new
    }
    class_inf.elements.each('CLASS_OBJ') do |class_obj|
      items = Hash.new
      class_obj.elements.each('CLASS') do |item|
        items.store item.attributes['code'], item.attributes['name']
      end
      stats[:meta]
        .store class_obj.attributes['id'], {:name=>class_obj.attributes['name'], :items=>items}
    end
    data_inf.elements.each('VALUE') do |value|
      row = Array.new
      stats[:meta].keys.each do |meta|
        row.push stats[:meta]
          .fetch(meta)[:items]
          .fetch(value.attributes[meta])
      end
      row.push value.text
      stats[:data].push row
    end
    return stats
  end

  private
  def request(path, param, cache)
    if should_use_cache?(cache)
      res = read_cache(cache)
    else
      res = http_request(path, param)
      save_cache(cache, res)
    end
    return res
  end

  private
  def should_use_cache?(filename)
    unless @params.length == 0
      return false
    end
    cache = @@cache_path.join(filename)
    unless File.exists?(cache)
      return false
    end
    cachedate = File.mtime(cache)
    yesterday = Time.now - 60 * 60 * 24
    if cachedate > yesterday
      return true
    else
      return false
    end
  end

  private
  def read_cache(filename)
    cache_file = File.open(@@cache_path.join(filename))
    cache = cache_file.read
    cache_file.close
    return cache
  end

  private
  def save_cache(filename, content)
    unless File.directory?(@@cache_path)
      FileUtils.mkdir_p(@@cache_path)
    end
    unless File.writable?(@@cache_path)
      raise @@cache_path + "にファイルを書き込めません"
    end
    detected_encoding = content.encoding
    unless detected_encoding == Encoding::UTF_8
      content = content
        .encode(detected_encoding)
        .force_encoding(Encoding::UTF_8)
    end
    File.open(@@cache_path.join(filename), 'w') do |f|
      f.write(content)
    end
  end

  private
  def http_request(path, param)
    host = 'http://statdb.nstac.go.jp/api/1.0b/app/'
    param['appId'] = 'afe504de49de927279178f0934af9facf1425bab'
    path = path + '?' + URI.encode_www_form(param.merge(@params))
    uri = URI.join(host, path)
    return Net::HTTP.get(uri)
  end
end
