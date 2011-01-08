<%@ WebHandler Language="C#" Class="GetBalloonTip" %>

using System;
using System.Web;

public class GetBalloonTip : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Response.Write("Hello World");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}

