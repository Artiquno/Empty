<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableDemo.aspx.cs" Inherits="Demos_TableDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: auto;
        }
        .table-name {
            width: 200px;
        }
        .auto-style3 {
            border-style: solid;
            border-width: 1px;
            padding: 0;
width: 446px;
        }

        .auto-style4 {
            border-style: solid;
            border-width: 1px;
            padding: 0;
            width: 446px;
            text-align: left;
        }

        .auto-style5 {
            border-style: solid;
            border-width: 1px;
            width: 200px;
        }
        .auto-style6 {
            border-style: solid;
            border-width: 1px;
            padding: 0;
        }
        th, td{
            border: 1px solid black;
        }
        table{
            border-collapse: collapse;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <caption>Some random-ass table</caption>
            <tr>
                <th class="auto-style6">Name</th>
                <th class="auto-style3">Amount</th>
            </tr>
            <tr>
                <td class="auto-style6">Bulleted List</td>
                <td class="auto-style4">
                    <ul>
                        <li>Item 1</li>
                        <li>Item 2</li>
                        <li>Item NaN</li>
                        <li>No Item At All</li>
                        <li><strong>Annoying dog</strong></li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Numbered List</td>
                <td class="auto-style4">
                    <ol>
                        <li><em>Raise your hand</em></li>
                        <li><em>Stare at the raised hand</em></li>
                        <li><em>Realize your have 5 fingers</em></li>
                        <li><em>Freak out</em></li>
                        <li><em>Start to accept the fact that your life will never be the same</em></li>
                        <li><em>???</em></li>
                        <li><em>Profit</em></li>
                    </ol>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Link</td>
                <td class="auto-style4">
                    <a href="/Default.aspx">Zelda</a>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
