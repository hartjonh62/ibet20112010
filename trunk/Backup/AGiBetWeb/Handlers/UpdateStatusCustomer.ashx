﻿<%@ WebHandler Language="C#" Class="UpdateStatusCustomer" %>

using System;
using System.Web;

public class UpdateStatusCustomer : IHttpHandler {
    
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