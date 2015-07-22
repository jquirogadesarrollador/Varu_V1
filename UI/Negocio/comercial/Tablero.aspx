<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Tablero.Master" AutoEventWireup="true"
    CodeFile="Tablero.aspx.cs" Inherits="Negocio_comercial_Tablero" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12" style="border-bottom: 1px solid #003366; width: 80%;">
            <h3 class="text-left">
                Tablero de Control Mercadeo y Ventas</h3>
        </div>
        <div id="canvas-holder" class="col-md-12 text-center">
            <div class="DivGrafP">
                <%--                <div id="piechart">
                </div>--%>
                <div id="piechart" style="width: 150%; height: 150%;">
                    --%>
                    <div id="chart_div">
                    </div>
        </div>
    </div>
</asp:Content>
