class OpendataController < ApplicationController
  layout 'opendata'

  def list
    api = Statdb.new
    code = params[:code] ? params[:code] : String.new
    unless xml = api.getStatsList(code)
      render :action => 'error', :status => 404 and return
    end
    unless @list = api.getList(xml)
      render :action => 'error', :status => 404 and return
    end
  end

  def meta
    api = Statdb.new
    id = params[:id] ? params[:id] : String.new
    unless xml = api.getMetaInfo(id)
      render :action => 'error', :status => 404 and return
    end
    unless @info = api.getInformation(xml)
      render :action => 'error', :status => 404 and return
    end
    unless @meta = api.getMeta(xml, id)
      render :action => 'error', :status => 404 and return
    end
  end

  def stats
    api = Statdb.new
    id = params[:id] ? params[:id] : String.new
    if params.has_key?(:api)
      api.setParameters(params[:api])
    end
    unless xml = api.getStatsData(id)
      render :action => 'error', :status => 404 and return
    end
    unless @info = api.getInformation(xml)
      render :action => 'error', :status => 404 and return
    end
    unless @stats = api.getStatistics(xml)
      render :action => 'error', :status => 404 and return
    end
  end
end
