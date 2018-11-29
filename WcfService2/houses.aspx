﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="houses.aspx.cs" Inherits="WcfService2.houses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <title>Houses - Game Of Thrones</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="desktop.css" type="text/css" />
    <link rel="stylesheet" href="print.css" type="text/css" media="print" />
    <link rel="stylesheet" href="mobile.css" type="text/css" media="screen and (max-device-width: 480px)" />
</head>
<body>
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="/index.html">Home</a>
        <a href="/books.aspx">Search Book</a>
        <a href="/houses.aspx">Search Houses</a>
    </div>
    <div id="main">
        <div>
            <span id="menuIcon" onclick="openNav()">&#9776;</span>
            <h1 class="textcolor">A Song of Ice and Fire</h1>
        </div>
        <div class="filter">
            <form id="form1" runat="server">
                <div>
                    <label for="TxtHouseName">Search By House Name</label>
                    <asp:TextBox ID="TxtHouseName" runat="server"></asp:TextBox>
                    <label for="TxtHouseName"> OR </label>
               
                    <label for="TxtRegion"> Search By Region</label>
                    <asp:TextBox ID="TxtRegion" runat="server"></asp:TextBox>
                    <label for="TxtRegion"> OR </label>
               
                    <label for="TxtCoatOfArms">Search By Coat Of Arms</label>
                    <asp:TextBox ID="TxtCoatOfArms" runat="server"></asp:TextBox>
                    <label for="TxtCoatOfArms"> OR </label>
               
                    <label for="TxtWords">Search By Words</label>
                    <asp:TextBox ID="TxtWords" runat="server"></asp:TextBox>
                    <label for="TxtWords"> OR </label>
               
                    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
                </div>
            </form>
        </div>

        <div>
            <table>
                <caption class="textcolor">Details of Characters</caption>
                <tr>
                    <th class="textcolor">Name</th>
                    <th class="textcolor">Region</th>
                    <th class="textcolor">Coat Of Arms</th>
                    <th class="textcolor">Words</th>
                    <th class="textcolor">Seats</th>
                </tr>
                <%=GetTableData()%>
            </table>
        </div>
        <script src="scripting.js" type="text/javascript"></script>
    </div>
</body>
</html>
