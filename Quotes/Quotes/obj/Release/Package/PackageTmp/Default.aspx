﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Quotes._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top: 20px">
        <asp:Repeater ID="repeaterQuotes" runat="server">
            <ItemTemplate>
                <div class="alert alert-success" role="alert">
                    <h3><%#DataBinder.Eval(Container.DataItem, "QuoteText") %></h3>
                </div>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <div class="alert alert-danger" role="alert">
                    <h3><%#DataBinder.Eval(Container.DataItem, "QuoteText") %></h3>
                </div>
            </AlternatingItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
