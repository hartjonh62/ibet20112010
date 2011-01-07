<%@ WebHandler Language="C#" Class="GenMixParlay" %>

using System;
using System.Web;

public class GenMixParlay : IHttpHandler {
    
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