<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Container.aspx.cs" Inherits="Demos_Container" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Text="Show Panel" OnCheckedChanged="CheckBox1_CheckedChanged" />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Width="500px" OnFinishButtonClick="Wizard1_FinishButtonClick">
                <WizardSteps>
                    <asp:WizardStep runat="server" title="Name the fallen child">
                        Name<asp:TextBox ID="YourName" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Use Item" StepType="Finish">
                        <asp:DropDownList ID="UseItem" runat="server">
                            <asp:ListItem Value="GoldenFlower">Golden Flower</asp:ListItem>
                            <asp:ListItem Value="Typha">Typha Plant</asp:ListItem>
                            <asp:ListItem Value="EchoFlower">Echo Flower</asp:ListItem>
                            <asp:ListItem Value="Flowey">Flowey The Flower</asp:ListItem>
                        </asp:DropDownList>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Complete" Title="Ready">
                        <asp:Label ID="Result" runat="server" />
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
            
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
