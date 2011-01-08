<%@ WebHandler Language="C#" Class="OddEven1x2Data" %>

using System;
using System.Web;

public class OddEven1x2Data : IHttpHandler {
    
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