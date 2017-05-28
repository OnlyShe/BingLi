<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="Repeater.aspx.cs" Inherits="yixiang.Repeater" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>

<title>Repeater</title>

<LINK rel="stylesheet" type="text/css" href="../Style.css">

<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">

<meta name="CODE_LANGUAGE" Content="C#">

<meta name="vs_defaultClientScript" content="JavaScript">

<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">

</HEAD>

<body MS_POSITIONING="GridLayout">

<form id="Form1" method="post" runat="server">

<div align="center">

<center>

<table border="0" cellpadding="0" cellspacing="0" width="272" height="136">

<tr>

<td width="272" height="136">

<div align="center">

<center>

<table border="1" cellpadding="0" cellspacing="0" width="272" height="60" bordercolorlight="#000000"

bordercolordark="#ffffff" class="smallRed">

<asp:Repeater id="Repeater1" runat="server">

<HeaderTemplate>

<tr>

<td width="90" height="30"><FONT face="宋体">数字</FONT></td>

<td width="91" height="30"><FONT face="宋体">平方</FONT></td>

<td width="91" height="30"><FONT face="宋体">立方</FONT></td>

</tr>

</HeaderTemplate>

<ItemTemplate>

<tr>

<td width="90" height="30"><％# DataBinder.Eval(Container.DataItem,"数字") ％></td>

<td width="91" height="30"><％# DataBinder.Eval(Container.DataItem,"平方") ％></td>

<td width="91" height="30"><％# DataBinder.Eval(Container.DataItem,"立方") ％></td>

</tr>

</ItemTemplate>

</asp:Repeater>

</table>

</center>

</div>

</td>

</tr>

</table>

</center>

</div>

</form>

</body>

</HTML>
