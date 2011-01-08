<%@ WebHandler Language="C#" Class="SetLanguage" %>

using System;
using System.Web;

public class SetLanguage : IHttpHandler {
    
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