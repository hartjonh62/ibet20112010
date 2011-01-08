<%@ WebHandler Language="C#" Class="NextGoalData" %>

using System;
using System.Web;

public class NextGoalData : IHttpHandler {
    
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