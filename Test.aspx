<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/css/temp.css" type="text/css" />
    <style type="text/css">
        .some-style {
            color: #FF0000;
        }

        @keyframes move {
            0% {
                left: 100px;
            }

            50% {
                left: 500px;
            }

            100% {
                left: 100px;
            }
        }

        .move {
            padding: 30px;
            position: relative;
            top: 100px;
            background-color: darkturquoise;
            width: 40px;
            height: 40px;
            -moz-animation: move ease-in-out 5s infinite;
            -o-animation: move ease-in-out 5s infinite;
            -webkit-animation: move ease-in-out 5s infinite;
            animation: move ease-in-out 5s infinite;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>hOI!!!!! weLcOM tO planET tEM!!!!!</h1>
            <p>
                tEm reAL haPY YOu viSIt<span class="some-style"> tEM ShoP</span>!!!!!
            </p>
            <p>
                tEm ALsO hAve<strong> wEBS SiTEs</strong>!! tEM saYS visiTS <a href="http://www.tEMsiTE.tem">www.tEMsiTE.tem</a> ya ya!!!!!
            </p>
            <p>
                tEM agREEs to visIT&#39;S <a href="http://www.tEMsiTE.tem">tEMsiTE.tem</a>!!!!!
            </p>
            <p>
                VisiTS moAR TEm SITeS!!!!<br />
                <a href="/Demos/CodeBehind.aspx">InviSABLE CODS!!</a><br />
                <a href="/Demos/CodeInline.aspx">CUtE COde'S!!!!!!</a><br />
                <a href="/Demos/Container.aspx">BoxES!!!</a><br />
                <a href="/Demos/ListControls.aspx">LisTS!!</a><br />
                <a href="/Demos/States.aspx">STatuS!!!1!</a><br />
                <a href="/Demos/TableDemo.aspx">TabLE'S!!!!</a><br />
            </p>
            <div class="move">
                STOP
            </div>

        </div>
    </form>
</body>
</html>
