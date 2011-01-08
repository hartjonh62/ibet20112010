<%@ WebHandler Language="C#" Class="GetOption_CancelBet" %>

using System;
using System.Web;

public class GetOption_CancelBet : IHttpHandler {
    
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