<%@ WebHandler Language="C#" Class="GetBetlist_CancelBet" %>

using System;
using System.Web;

public class GetBetlist_CancelBet : IHttpHandler {
    
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