using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace smomot_s0_net_framework.Controllers
{
    /// <summary>
    /// Value(s) を応答する
    /// </summary>
    public class ValuesController : ApiController
    {
        /// <summary>
        /// Value(s) のリストを応答する
        /// </summary>
        public IEnumerable<string> Get()
        {
            System.Diagnostics.Trace.TraceInformation("カスタムメッセージです");
            System.Diagnostics.Trace.TraceWarning("カスタムメッセージです");
            // System.Diagnostics.Trace.TraceError("カスタムメッセージです");

            return new string[] { "value1", "value2" };
        }
        /// <summary>
        /// 特定の {id} に対応する Value を応答する
        /// </summary>
        public string Get(int id)
        {
            return "value";
        }
        /// <summary>
        /// Value を登録する
        /// </summary>
        public void Post([FromBody]string value)
        {
        }
        /// <summary>
        /// 特定の {id} の Value を変更する
        /// </summary>
        public void Put(int id, [FromBody]string value)
        {
        }
        /// <summary>
        /// 特定の {id} の Value を削除する
        /// </summary>
        public void Delete(int id)
        {
        }
    }
}
