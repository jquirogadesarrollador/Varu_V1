<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Proceso.Master" AutoEventWireup="true"
    CodeFile="FrmForms.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Scripts/jquery-1.11.3.js" type="text/javascript"></script>
    <script src="../../BootStrapV3.3.4/js/bootstrap.js" type="text/javascript"></script>
    <link href="../../BootStrapV3.3.4/css/bootstrapValidator.css" rel="stylesheet" type="text/css" />
    <script src="../../BootStrapV3.3.4/js/bootstrapValidator.js" type="text/javascript"></script>
    <script src="../../Scripts/validatorForm.js" type="text/javascript"></script>
    <script src="../../BootStrapV3.3.4/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
    <link href="../../css/SLogin.css" rel="stylesheet" type="text/css" />
    <link href="../../Iconos/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(
                function () {
                    $("#savefrm").click(
                        function () {
                            if (confirm('¿Desea Guardar?')) __doPostBack('fnPrueba', '');
                        }
                    );
                }
            );
    </script>

    <style type="text/css">
        .textoCentroMenu {
            color: #59c2e6;
            font-size: 18px;
            border-bottom: 0.0625em solid rgb(60,78,100);
            width: 100%;
        }

        .textoContenidoMenu {
            color: white;
            font-size: 12px;
        }

            .textoContenidoMenu:hover {
                color: #59c2e6;
                font-size: 12px;
            }

        .estiloListaMenu {
            background-color: #2b2e35;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"
    ClientIDMode="Static">
    <div class="DId" style="border-bottom: 1px solid #003366;">
        <h3 class="text-left fontRegular">ID / Donde estoy</h3>
    </div>
    <div class="DivCont">
        <form id="Form1" class="form-horizontal frmClass" action="">

            <fieldset>
                <!-- Form Name -->
                <legend>

                    <div class="legForm fontItalic" style="width: 97%">
                        <table width="100%">
                            <tr>
                                <td>INFORMACIÓN BÁSICA</td>
                                <td>
                                    <ul class="menu">
                                        <li><span class="colorOrigenSubmenu icon-formulariomenu"></span>

                                            <ul>

                                                <li class="estiloListaMenu">
                                                    <asp:Button ID="Button1" runat="server" Text="MENU FORMULARIO" CssClass='btnSubMenu textoCentroMenu' /></li>

                                                <li class="estiloListaMenu">
                                                    <asp:Button ID="btnOpc1" runat="server" Text="Opción 1" CssClass='btnSubMenu textoContenidoMenu aFont fontItalic' /></li>
                                                <li class="estiloListaMenu">
                                                    <asp:Button ID="btnOpc2" runat="server" Text="Opción 2" CssClass='btnSubMenu textoContenidoMenu aFont fontItalic' /></li>

                                            </ul>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                        </table>

                    </div>

                    <nav>
                
            </nav>

                </legend>
                <!-- Text input-->
                <div class="dvSep1 fontRegular">
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="nombre">
                            Nombres</label>
                        <div class="col-md-3">
                            <asp:TextBox ID="nombre" runat="server" name="nombre" CssClass="form-control input-md"
                                placeholder="Nombres" required></asp:TextBox>
                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="apellidos">
                            Apellidos</label>
                        <div class="col-md-3">
                            <asp:TextBox ID="apellidos" runat="server" name="apellidos" CssClass="form-control input-md"
                                placeholder="Apellidos" required></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="dvLinea">
                </div>
                <div class="dvSep1 fontRegular">
                    <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-20 control-label" for="tipDoc">
                            Tipo de Documento</label>
                        <div class="col-md-20">
                            <select id="tipDoc" name="tipDoc" class="form-control placeholder">
                                <option value="">Seleccione</option>
                                <option value="1">Cédula de Ciudadanía</option>
                                <option value="2">Nit</option>
                            </select>
                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <div class="col-md-20">
                            <input id="numDocumento" name="numDocumento" type="text" placeholder="Número de Documento"
                                class="form-control input-md" required>
                        </div>
                    </div>
                    <!-- Select Basic -->
                    <div class="form-group">
                        <div class="col-md-20">
                            <select id="departamentos" name="departamento" class="form-control placeholder">
                                <option value="">Departamento</option>
                                <option value="1">Cundinamarca</option>
                                <option value="2">Antioquia</option>
                                <option value="3">Bogota</option>
                                <option value="4">Boyaca</option>
                                <option value="5">Cauca</option>
                            </select>
                        </div>
                    </div>
                    <!-- Select Basic -->
                    <div class="form-group">
                        <div class="col-md-20">
                            <select id="ciudades" name="ciudad" class="form-control placeholder">
                                <option value="">Ciudad</option>
                                <option value="1">Bogotá</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="dvLinea">
                </div>
                <!-- Fechas -->
                <div class="dvSep1 fontRegular">
                    <div class="form-group">
                        <div class='date col-md-3'>
                            <input placeholder="Fecha de nacimiento" class="form-control input-md" type="text"
                                name="fechanacimiento" onfocus="(this.type='date')" id="date">
                        </div>
                    </div>
                    <!-- Select Basic -->
                    <div class="form-group">
                        <div class="col-md-3">
                            <select id="Select1" name="paisNaci" class="form-control placeholder">
                                <option value="">País de Nacimiento</option>
                                <option value="1">Colombia</option>
                                <option value="2">Chile</option>
                            </select>
                        </div>
                    </div>
                    <!-- Select Basic -->
                    <div class="form-group">
                        <div class="col-md-3">
                            <select id="rhs" name="rh" class="form-control placeholder">
                                <option value="">RH</option>
                                <option value="1">O+</option>
                                <option value="2">O-</option>
                                <option value="3">A+</option>
                                <option value="4">A-</option>
                            </select>
                        </div>
                    </div>
                    <!-- Multiple Radios -->
                    <div class="form-group">
                        <div class="col-md-3">
                            <div class="radio">
                                <label id="lblMasculino" class="radio-inline">
                                    <input type="radio" class="radioButtonGeneral" name="genero" id="inlineRadio1" value="option1" onchange="cambioRadio(this,document.getElementById('inlineRadio2'),document.getElementById('lblMasculino'),document.getElementById('lblFemenino'))">
                                    MASCULINO
                                </label>
                                <label id="lblFemenino" class="radio-inline">
                                    <input type="radio"  class="radioButtonGeneral" name="genero" id="inlineRadio2" value="option2" onchange="cambioRadio(this,document.getElementById('inlineRadio1'),document.getElementById('lblFemenino'),document.getElementById('lblMasculino'))">
                                    FEMENINO
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="dvLinea">
                </div>
                <div class="dvSep1 fontRegular">
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="libretamilitar">
                            Libreta Militar</label>
                        <div class="col-md-3">
                            <input id="libretamilita" name="libretamilitar" type="text" placeholder="Libreta Militar"
                                class="form-control input-md" required="">
                        </div>
                    </div>
                    <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-3 control-label" for="catConduccion">
                            Categoria Conducción</label>
                        <div class="col-md-3">
                            <select id="catConduccions" name="catConduccion" class="form-control">
                                <option value="">Seleccione</option>
                                <option value="1">Clase A</option>
                                <option value="2">Clase B</option>
                            </select>
                        </div>
                    </div>
                </div>
            </fieldset>
    </div>
    <div id="main">
        <ul id="navigationMenu">
            <li><a class="search" href="#"><span>
                <asp:TextBox ID="txtSearch" CssClass="icon-large icon-search btnSearch input-md fontRegular"
                    runat="server" placeholder="Buscar"></asp:TextBox>
                <%--<input type="search" class="icon-large icon-search btnSearch input-md fontRegular"
                    name="nombre" placeholder="Buscar">--%></span></a></li>
            <li>
                <asp:Button ID="btnNew" runat="server" CssClass='BtnNew' /></li>
            <li>
                <asp:Button ID="btnEdit" runat="server" CssClass='BtnEdit' /></li>
            <li>
                <asp:Button ID="btnSave" runat="server" CssClass='BtnSave' />
            </li>
            <li>
                <asp:Button ID="btnPrint" runat="server" CssClass='BtnPrint' /></li>
        </ul>
    </div>
    <script type="text/javascript">

        function cambioRadio(s,ss,sss,ssss) {
            if (s.checked == 1) {
                s.className = 'radioButtonAzulClaro'; sss.className = 'radioButtonAzulClaro'
                ss.className = 'radio-inline'; ssss.className = 'radio-inline'
                
            }
            
        }
    </script>
    </form>
</asp:Content>
