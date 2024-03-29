﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Prototipo
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
           
            // Código que se ejecuta al iniciar la aplicación
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            
        }
        void Session_Start(object sender, EventArgs e)
        {
            
            Session["Autentificacion"] = false;
        }
        void Session_End(object sender, EventArgs e)
        {
            //Session.Abandon();
            Session.Contents.RemoveAll();
        }
        void Application_End(object sender, EventArgs e)
        {

        }
    }
}