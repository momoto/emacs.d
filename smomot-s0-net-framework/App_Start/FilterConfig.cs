﻿using System.Web;
using System.Web.Mvc;

namespace smomot_s0_net_framework
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new ErrorHandler.AiHandleErrorAttribute());
        }
    }
}