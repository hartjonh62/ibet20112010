<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>
<frameset rows="89,*, 25" border="0" framespacing="0" frameborder="no">
    <frame src="Header.aspx" noresize="noresize" scrolling="no" frameborder="0" id="frHeader" name="frHeader" />
    <frameset cols="220,*" border="0">
        <frame src="Menu2.aspx" scrolling="auto" id="menu" name="menu" noresize="noresize" frameborder="0" />
        <frame src="Info/CreditBalance.aspx?siteload=1" id="main" name="main" scrolling="auto" noresize="noresize" frameborder="0" />
    </frameset>
    <frame src="Footer.htm" noresize="noresize" scrolling="no" frameborder="0" id="frFooter" name="frFooter" />
</frameset>
<noframe></noframe>
</html>
