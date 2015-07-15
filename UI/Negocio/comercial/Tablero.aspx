<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Tablero.Master" AutoEventWireup="true" CodeFile="Tablero.aspx.cs" Inherits="Negocio_comercial_Tablero" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        $(document).ready(
                function () {
                    var myNewChart = new google.visualization.PieChart(document.getElementById('piechart'));

                    $("#piechart").click(
                        function (evt) {
                            window.location = "Grid.aspx";
                        }
                    );
                }
            );
        google.load("visualization", "1", { packages: ["corechart"] });
        google.setOnLoadCallback(drawChart);
        function drawChart() {

            var data = google.visualization.arrayToDataTable([
          ['Estado', ''],
          ['Activo', 50],
          ['Rechazado', 25],
          ['Disponible', 25]
        ]);

            var options = { 'title': '',
                'width': 750,
                'height': 600,
                colors: ['#99cc66', '#ffcc66', '#c32420'],
                legend: { alignment: 'center' }
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>
    <div class="row">
        <div class="col-md-12" style="border-bottom: 1px solid #003366; width: 80%;">
            <h3 class="text-left">
                Tablero de Control Mercadeo y Ventas</h3>
        </div>
        <div id="canvas-holder" class="col-md-12 text-center">
            <div class="DivGrafP">
                <div id="piechart">
                </div>
            </div>
        </div>
    </div>

</asp:Content>