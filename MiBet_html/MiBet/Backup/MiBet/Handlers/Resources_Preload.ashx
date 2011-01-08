<%@ WebHandler Language="C#" Class="Resources_Preload" %>

using System;
using System.Web;

public class Resources_Preload : IHttpHandler {
    
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