<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>

<div class="contact-form">
    <h3>CunTACtS tEM!!</h3>
    <div class="input-small">
        <asp:Label runat="server" CssClass="label">NaMEs!!</asp:Label>
        <asp:TextBox runat="server" ID="Name"/>
        <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="eNTUrs naMES!!!" ControlToValidate="Name" runat="server" CssClass="validation" />
    </div>
    <div class="input-small">
        <asp:Label runat="server" CssClass="label">emAILS!!</asp:Label>
        <asp:TextBox runat="server" ID="Email" TextMode="Email" />
        <asp:RegularExpressionValidator Display="Dynamic" ErrorMessage="eNTUrs an imAIlS!!!" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" CssClass="validation" />
        <asp:RequiredFieldValidator Display="Dynamic" CssClass="validation" ErrorMessage="eNTUrs an imAIlS!!!" ControlToValidate="Email" runat="server" />
    </div>
    <div class="input-small">
        <asp:Label runat="server" CssClass="label">PHonS!!</asp:Label>
        <asp:TextBox runat="server" ID="Phone" />
        <asp:RequiredFieldValidator Display="Dynamic" ErrorMessage="eNTUrs an PHuns!!!" ControlToValidate="Phone" runat="server" CssClass="validation" />
        <asp:RegularExpressionValidator Display="Dynamic" CssClass="validation" ErrorMessage="PhOUn numBERs is wROnGS!!!!!" ControlToValidate="Phone" runat="server" ValidationExpression="06\d( |)\d\d( |)\d\d( |)\d\d\d" />
    </div>
    <asp:Button Text="SUbmIHTS!!!" runat="server" />
</div>
