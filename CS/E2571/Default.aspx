<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var iframeElement;
        function OnPopupInit(s, e) {
            iframeElement = popup.GetContentIFrame();
            loadingPanel.ShowInElement(iframeElement);
            ASPxClientUtils.AttachEventToElement(iframeElement, 'load', OnContentLoaded);
        }
        function OnContentLoaded(e) {
            loadingPanel.Hide();
            var frame = GetFrameOfIFrame(iframeElement);
            var doc = frame.document;
            var array = CalculateSize(iframeElement, doc);
            popup.SetSize(array[0], array[1]);
        }
        function CalculateSize(popupiframe, contentDocument) {
            var windowElement = popup.GetWindowElement(-1);
            var scrollX = contentDocument.documentElement.scrollWidth;
            var scrollY = contentDocument.documentElement.scrollHeight;
            var offsetX = windowElement.offsetWidth - popupiframe.offsetWidth;
            var offsetY = windowElement.offsetHeight - popupiframe.offsetHeight;
            var width = scrollX + offsetX;
            var height = scrollY + offsetY;
            if (window.navigator.userAgent.indexOf("Edge") > -1) {
                width += 10;
                height += 10;
            }
            var array = [width, height];
            return array;
        }
        function GetFrameOfIFrame(iframeElement) {
            var name = iframeElement.contentWindow.name;
            var frameIndex = this.internalGetFrameByWindowName(name);
            return window.frames[frameIndex];
        }
        function internalGetFrameByWindowName(name) {
            var count = window.top.frames.length;
            for (var i = 0; i < count; i++) {
                if (window.top.frames[i].window.name === name)
                    return i;
            }
            return -1;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" ContentUrl="~/Content.aspx" ClientInstanceName="popup"
            ShowOnPageLoad="True" CloseAction="CloseButton">
            <ClientSideEvents Init="OnPopupInit" />
        </dx:ASPxPopupControl>
        <dx:ASPxLoadingPanel ID="ASPxLoadingPanel1" ClientInstanceName="loadingPanel" runat="server"></dx:ASPxLoadingPanel>
    </form>
</body>
</html>
