﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Text;
using System.IO;

using Brainsbits.LLB.seleccion;
using Brainsbits.LLB.maestras;
using Brainsbits.LLB.comercial;
using Brainsbits.LLB;

using TSHAK.Components;
using Brainsbits.LLB.seguridad;

using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

public partial class Negocio_comercial_Tablero : System.Web.UI.Page
{
    private String NOMBRE_AREA = tabla.NOMBRE_AREA_GESTION_COMERCIAL;


    //private void RolPermisos()
    //{
    //    #region variables
    //    int contadorPermisos = 0;
    //    #endregion variables

    //    seguridad _seguridad = new seguridad(Session["idEmpresa"].ToString(), Session["USU_LOG"].ToString());

    //    tools _tools = new tools();

    //    String rutaScript = _tools.obtenerRutaVerdaderaScript(Request.ServerVariables["SCRIPT_NAME"]);

    //    DataTable tablaInformacionPermisos = _seguridad.ObtenerPermisosBotones(NOMBRE_AREA, rutaScript);

    //    maestrasInterfaz _maestrasInterfaz = new maestrasInterfaz();

    //    contadorPermisos = _maestrasInterfaz.RolPermisos(this, tablaInformacionPermisos);

    //    if (contadorPermisos <= 0)
    //    {
    //        SecureQueryString QueryStringSeguro;
    //        QueryStringSeguro = new SecureQueryString(_tools.byteParaQueryStringSeguro());

    //        QueryStringSeguro["img_area"] = "restringido";
    //        QueryStringSeguro["nombre_area"] = "ACCESO RESTRINGIDO";
    //        QueryStringSeguro["nombre_modulo"] = "ACCESO RESTRINGIDO";
    //        QueryStringSeguro["accion"] = "inicial";

    //        Response.Redirect("~/sinPermisos/sinPermisos.aspx?data=" + HttpUtility.UrlEncode(QueryStringSeguro.ToString()));
    //    }
    //    else
    //    {
    //        Session["URL_ANTERIOR"] = HttpContext.Current.Request.RawUrl;
    //    }
    //}

    //protected void Page_LoadComplete(object sender, EventArgs e)
    //{
    //    RolPermisos();
    //}

    #region Variables.
    private System.Drawing.Color colorRojo = System.Drawing.ColorTranslator.FromHtml("#F8523A");
    private System.Drawing.Color colorAmarillo = System.Drawing.ColorTranslator.FromHtml("#FFF200");
    private System.Drawing.Color colorVerde = System.Drawing.ColorTranslator.FromHtml("#50CE04");

    private enum Proceso
    {
        Correcto = 0,
        Error = 1,
        Advertencia = 2
    }
    #endregion Variables.

    #region Constructores
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            Iniciar();
        }
    }
    #endregion Constructores

    #region Métodos
    private void Iniciar()
    {
        //Configurar();
        //Cargar();
        //cargar_menu_botones_modulos_internos();
        cargarSemaforos();
        //creargrafico();
    }

    private void creargrafico()
    {

        DataTable myTable = new DataTable("myTable");
        DataColumn colItem = new DataColumn("item", Type.GetType("System.String"));
        DataColumn colItem1 = new DataColumn("item1", Type.GetType("System.Int32"));

        myTable.Columns.Add(colItem);
        myTable.Columns.Add(colItem1);


        // Add five items.
        DataRow NewRow;
        for (int i = 0; i < 3; i++)
        {
            NewRow = myTable.NewRow();
            NewRow["item"] = i;
            myTable.Rows.Add(NewRow);
        }

        myTable.Rows[0]["item"] = "Mas de un mes de vencimiento";
        myTable.Rows[0]["item1"] = "149";

        myTable.Rows[1]["item"] = "Menos de un mes de vencimiento";
        myTable.Rows[1]["item1"] = "10";

        myTable.Rows[2]["item"] = "Vencido";
        myTable.Rows[2]["item1"] = "38";


        myTable.AcceptChanges();

        //DataView custDV = new DataView(custDS.Tables["Customers"], "Country = 'USA'", "ContactName", DataViewRowState.CurrentRows);
        DataView custDV = new DataView(myTable);

        Display(custDV);
    }

    private void cargarSemaforos()
    {
        contratosServicio _contratosServicio = new contratosServicio(Session["idEmpresa"].ToString());
        DataTable tblcontratosServicio = new DataTable();
        
        tblcontratosServicio = _contratosServicio.ObtenerSemaforoContratosDeServico();
        int conteoBajo = (from s in tblcontratosServicio.AsEnumerable() where s["ALERTA"].ToString()=="BAJO" select s).Count();
        int conteoMedio = (from s in tblcontratosServicio.AsEnumerable() where s["ALERTA"].ToString()=="MEDIO" select s).Count();
        int conteoAlto = (from s in tblcontratosServicio.AsEnumerable() where s["ALERTA"].ToString()=="ALTO" select s).Count();

        var listaFinal = (from s in tblcontratosServicio.AsEnumerable() select new { ALERTA = s["ALERTA"].ToString(), contador = 0 });
        DataTable tablaFinal = new System.Data.DataTable();
        tablaFinal.Columns.Add("ALERTA");
        tablaFinal.Columns.Add("contador");

        foreach (var item in (from s in listaFinal orderby s.ALERTA select s).Distinct().ToList())
        {

            //if ((from s in tablaFinal.AsEnumerable() where s["ALERTA"] == item.ALERTA select s).Count() <= 0)
            //{
                DataRow fila = tablaFinal.NewRow();

                fila["ALERTA"] = item.ALERTA;
                switch (item.ALERTA.ToLower())
                {
                    case "bajo":
                        fila["contador"] = conteoBajo;
                        break;
                    case "medio":
                        fila["contador"] = conteoMedio;
                        break;
                    case "alto":
                        fila["contador"] = conteoAlto;
                        break;
                }

                tablaFinal.Rows.Add(fila);
            //}
        }
       
        DataView custDV = new DataView(tablaFinal);

        Display(custDV);

    }

    private void Configurar()
    {
        Page.Header.Title = "HOJA DE TRABAJO";
        //this.Button_EXPORTAR.Visible = false;
    }


    //private void Cargar(GridView gridView, DataTable dataTable)
    //{
    //    int cantidad_alto = 0;
    //    int cantidad_medio = 0;
    //    int cantidad_bajo = 0;

    //    gridView.DataSource = dataTable;
    //    gridView.DataBind();

    //    for (int i = 0; i < gridView.Rows.Count; i++)
    //    {
    //        DataRow filaParaColocarColor = dataTable.Rows[(gridView.PageIndex * gridView.PageSize) + i];

    //        if (filaParaColocarColor["ALERTA"].ToString().Trim() == "ALTO")
    //        {
    //            gridView.Rows[i].BackColor = colorRojo;
    //            cantidad_alto++;
    //        }
    //        else
    //        {
    //            if (filaParaColocarColor["ALERTA"].ToString().Trim() == "MEDIO")
    //            {
    //                gridView.Rows[i].BackColor = colorAmarillo;
    //                cantidad_medio++;
    //            }
    //            else
    //            {
    //                if (filaParaColocarColor["ALERTA"].ToString().Trim() == "BAJO")
    //                {
    //                    gridView.Rows[i].BackColor = colorVerde;
    //                    cantidad_bajo++;
    //                }
    //                else
    //                {
    //                    gridView.Rows[i].BackColor = System.Drawing.Color.Transparent;
    //                }
    //            }
    //        }
    //    }

    //    Label_ALERTA_BAJA.Text = "Falta más de un mes para Vencimiento " + cantidad_bajo.ToString();
    //    Label_ALERTA_MEDIA.Text = "Falta un mes o menos para Vencimiento " + cantidad_medio.ToString();
    //    Label_ALERTA_ALTA.Text = "Vencido " + cantidad_alto.ToString();
    //}

    //private void cargar_menu_botones_modulos_internos()
    //{
    //    tools _tools = new tools();
    //    SecureQueryString QueryStringSeguro;
    //    QueryStringSeguro = new SecureQueryString(_tools.byteParaQueryStringSeguro());

    //    QueryStringSeguro["img_area"] = "comercial";
    //    QueryStringSeguro["nombre_area"] = "COMERCIAL";
    //    QueryStringSeguro["accion"] = "inicial";

    //    TableRow filaTabla;
    //    TableCell celdaTabla;
    //    HyperLink link;
    //    Image imagen;

    //    int contadorFilas = 0;

    //    filaTabla = new TableRow();
    //    filaTabla.ID = "row_" + contadorFilas.ToString();

    //    //Acá inicia "ADMINISTRACIÓN DE CLIENTES"
    //    celdaTabla = new TableCell();
    //    celdaTabla.ID = "cell_1_row_" + contadorFilas.ToString();
    //    link = new HyperLink();
    //    link.ID = "link_clientes";
    //    QueryStringSeguro["nombre_modulo"] = "ADMINISTRACIÓN DE CLIENTES";
    //    link.NavigateUrl = "~/comercial/clientes.aspx?data=" + HttpUtility.UrlEncode(QueryStringSeguro.ToString());
    //    link.Target = "_blank";
    //    imagen = new Image();
    //    imagen.ImageUrl = "~/imagenes/areas/bClientesEstandar.png";
    //    imagen.Attributes.Add("onmouseover", "this.src='../imagenes/areas/bClientesAccion.png'");
    //    imagen.Attributes.Add("onmouseout", "this.src='../imagenes/areas/bClientesEstandar.png'");

    //    imagen.CssClass = "botones_menu_principal";
    //    link.CssClass = "botones_menu_principal";

    //    link.Controls.Add(imagen);

    //    celdaTabla.Controls.Add(link);

    //    filaTabla.Cells.Add(celdaTabla);


    //    //Acá inicia "ESTADÍSTICAS DE VENTAS"
    //    celdaTabla = new TableCell();
    //    celdaTabla.ID = "cell_4_row_" + contadorFilas.ToString();
    //    link = new HyperLink();
    //    link.ID = "link_estadisticas_ventas";
    //    QueryStringSeguro["nombre_modulo"] = "ESTADÍSTICAS DE VENTAS";
    //    link.NavigateUrl = "~/comercial/EstadisticasVentas.aspx?data=" + HttpUtility.UrlEncode(QueryStringSeguro.ToString());
    //    link.Target = "_blank";
    //    imagen = new Image();
    //    imagen.ImageUrl = "~/imagenes/areas/bEstadisticasVentasEstandar.png";
    //    imagen.Attributes.Add("onmouseover", "this.src='../imagenes/areas/bEstadisticasVentasAccion.png'");
    //    imagen.Attributes.Add("onmouseout", "this.src='../imagenes/areas/bEstadisticasVentasEstandar.png'");

    //    imagen.CssClass = "botones_menu_principal";
    //    link.CssClass = "botones_menu_principal";

    //    link.Controls.Add(imagen);

    //    celdaTabla.Controls.Add(link);

    //    filaTabla.Cells.Add(celdaTabla);


    //    //Acá inicia "CARTERA"
    //    celdaTabla = new TableCell();
    //    celdaTabla.ID = "cell_4_row_" + contadorFilas.ToString();
    //    link = new HyperLink();
    //    link.ID = "link_cartera";
    //    QueryStringSeguro["nombre_modulo"] = "CARTERA";
    //    link.NavigateUrl = "~/comercial/cartera.aspx?data=" + HttpUtility.UrlEncode(QueryStringSeguro.ToString());
    //    link.Target = "_blank";
    //    imagen = new Image();
    //    imagen.ImageUrl = "~/imagenes/areas/bCarteraComercialEstandar.png";
    //    imagen.Attributes.Add("onmouseover", "this.src='../imagenes/areas/bCarteraComercialAccion.png'");
    //    imagen.Attributes.Add("onmouseout", "this.src='../imagenes/areas/bCarteraComercialEstandar.png'");

    //    imagen.CssClass = "botones_menu_principal";
    //    link.CssClass = "botones_menu_principal";

    //    link.Controls.Add(imagen);

    //    celdaTabla.Controls.Add(link);

    //    filaTabla.Cells.Add(celdaTabla);


    //    //Acá inicia "ADMINISTRACIÓN"
    //    celdaTabla = new TableCell();
    //    celdaTabla.ID = "cell_5_row_" + contadorFilas.ToString();
    //    link = new HyperLink();
    //    link.ID = "link_administracion";
    //    QueryStringSeguro["nombre_modulo"] = "ADMINISTRACIÓN";
    //    link.NavigateUrl = "~/comercial/administracion.aspx?data=" + HttpUtility.UrlEncode(QueryStringSeguro.ToString());
    //    link.Target = "_blank";
    //    imagen = new Image();
    //    imagen.ImageUrl = "~/imagenes/areas/bMenuAdministracionEstandar.png";
    //    imagen.Attributes.Add("onmouseover", "this.src='../imagenes/areas/bMenuAdministracionAccion.png'");
    //    imagen.Attributes.Add("onmouseout", "this.src='../imagenes/areas/bMenuAdministracionEstandar.png'");

    //    imagen.CssClass = "botones_menu_principal";
    //    link.CssClass = "botones_menu_principal";

    //    link.Controls.Add(imagen);

    //    celdaTabla.Controls.Add(link);

    //    filaTabla.Cells.Add(celdaTabla);



    //    Table_MENU.Rows.Add(filaTabla);




    //    contadorFilas = 0;



    //    //Acá inicia "REPORTES"
    //    celdaTabla = new TableCell();
    //    celdaTabla.ID = "cell_3_T1_row_" + contadorFilas.ToString();
    //    link = new HyperLink();
    //    link.ID = "link_reportes";
    //    QueryStringSeguro["nombre_modulo"] = "REPORTES";
    //    link.NavigateUrl = "~/Reportes/comercial.aspx?data=" + HttpUtility.UrlEncode(QueryStringSeguro.ToString());
    //    link.Target = "_blank";
    //    imagen = new Image();
    //    imagen.ImageUrl = "~/imagenes/areas/bReportesEstandar.png";
    //    imagen.Attributes.Add("onmouseover", "this.src='../imagenes/areas/bReportesAccion.png'");
    //    imagen.Attributes.Add("onmouseout", "this.src='../imagenes/areas/bReportesEstandar.png'");

    //    imagen.CssClass = "botones_menu_principal";
    //    link.CssClass = "botones_menu_principal";

    //    link.Controls.Add(imagen);

    //    celdaTabla.Controls.Add(link);

    //    filaTabla.Cells.Add(celdaTabla);

    //    Table_MENU_1.Rows.Add(filaTabla);
    //}



    #region Método que permite visualizar el gráfico piechart (gráfico circular) usando librerías JSAPI.
    /// <summary>
    /// Autor   : BraintsBits (jpqc) 
    /// Fecha   : Julio 18 de 2015
    /// Funcion : Método que permite visualizar el gráfico piechart (gráfico circular) usando librerías JSAPI.
    /// </summary>
    public void Display(DataView dataview)
    {
        string values = "";
        string url = "https://www.google.com/jsapi";
        System.Text.StringBuilder javaScript = new System.Text.StringBuilder();
        javaScript.Append("<script type=\"text/javascript\" src=" + url + "></script>");
        javaScript.Append("<script type=\"text/javascript\"> google.load(\"visualization\", \"1\", {packages:[\"corechart\"]});");
        javaScript.Append("google.setOnLoadCallback(drawChart); function drawChart() { var data = google.visualization.arrayToDataTable([ ['Date', 'WMins'],");

        for (int loopCount = 0; loopCount < dataview.Count; loopCount++)
        {
            values = values + "['" + dataview[loopCount][0].ToString() + "'," + Math.Round(float.Parse(dataview[loopCount][1].ToString())) + "],";
        }
        values = values.Substring(0, values.Length - 1);
        javaScript.Append(values);
        javaScript.Append("]);");
        javaScript.Append(" var options = { 'title': '', 'width': 750, 'height': 600, fontSize: '25', fontName: 'Open Sans, Regular', colors: ['#99cc66', '#ffcc66', '#c32420'], legend: { alignment: 'center', textStyle: { fontSize: 14} }}; var chart = new google.visualization.PieChart(document.getElementById('chart_div')); chart.draw(data, options); google.visualization.events.addListener(chart, 'select', onAreaSliceSelected);}");
        //javaScript.Append("
        
        javaScript.Append("</script>");

        Page.RegisterStartupScript("Graph", javaScript.ToString());
    }
    #endregion


    #endregion Métodos

    #region eventos

    protected void Button_EXPORTAR_Click(object sender, EventArgs e)
    {
        StringBuilder sb;
        StringWriter sw;
        HtmlTextWriter htw;
        sb = new StringBuilder();
        sw = new StringWriter(sb);
        htw = new HtmlTextWriter(sw);
        Response.Clear();
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=ComparativoMensualVentas_" + DateTime.Now.ToString("ddMMyyyy") + ".xls");
        //GridView_HOJA_DE_TRABAJO.RenderControl(htw);
        Response.Output.Write(sw.ToString());
        Response.End();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {

    }
    #endregion eventos
}

