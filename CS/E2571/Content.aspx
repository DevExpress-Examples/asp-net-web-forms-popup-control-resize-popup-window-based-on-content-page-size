<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.18.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td style="width: 100px; padding: 5px">User Name:</td>
                <td style="padding: 5px">
                    <dx:ASPxTextBox ID="namebox" runat="server" Width="160px"></dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 5px">Email:</td>
                <td style="padding: 5px">
                    <dx:ASPxTextBox ID="emailbox" runat="server" Width="160px"></dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding: 5px">Notes:</td>
            </tr>
            <tr>
                <td colspan="2" style="padding: 5px">
                    <dx:ASPxMemo ID="notes" runat="server" Width="270px" Height="150px"></dx:ASPxMemo>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
