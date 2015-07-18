<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Proceso.master" AutoEventWireup="true"
    CodeFile="clientes.aspx.cs" Inherits="_Default" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<script src="../../Scripts/jquery-1.11.3.js" type="text/javascript"></script>--%>
    <link href="../../BootStrapV3.3.4/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../BootStrapV3.3.4/js/bootstrap.js" type="text/javascript"></script>
    <link href="../../BootStrapV3.3.4/css/bootstrapValidator.css" rel="stylesheet" type="text/css" />
    <script src="../../BootStrapV3.3.4/js/bootstrapValidator.js" type="text/javascript"></script>
    <script src="../../BootStrapV3.3.4/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
    <link href="../../css/SLogin.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/validatorClientes.js?ver=1" type="text/javascript"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server"
    ClientIDMode="Static">
    <%--Titulo del formulario--%>


    <div id="divPrincipal" style="width: 100%">
        <asp:Panel ID="panelMensajeError" Width="80%" runat="server" Visible="false">
            <div id="divError" style="width: 87%; height: 80px; margin-left: 1%; background-color: rgb(187,0,31)" class="tipoLetraNegritaCursiva letrasBlancas">
                <br />
                <center>
                    <table width="80%">
                        <tr>
                            <td align="right"><span class="icon-error" style="font-size: 23px"></span></td>
                            <td align="left" style="font-size: 23px">¡Error!</td>
                            <td align="center">
                                <asp:Label Text="Este es un mensaje de error" ForeColor="White" ID="lblMensajeError" runat="server" /></td>
                        </tr>
                    </table>
                </center>


            </div>
        </asp:Panel>

        <asp:Panel ID="panelMensajeAdvertencia" Width="80%" runat="server" Visible="false">
            <div id="divAdvertencia" style="width: 87%; height: 80px; margin-left: 1%; background-color: rgb(255,206,85)" class="tipoLetraNegritaCursiva letrasBlancas">
                <br />

                <center>
                    <table width="80%">
                        <tr>
                            <td align="right"><span class="icon-advertencia" style="font-size: 23px"></span></td>
                            <td align="left" style="font-size: 23px">¡Cuidado!</td>
                            <td align="center">
                                <asp:Label Text="Este es un mensaje de error" ForeColor="White" ID="lblMensajeAdvertencia" runat="server" /></td>
                        </tr>
                    </table>
                </center>


            </div>
        </asp:Panel>

        <asp:Panel ID="panelMensajeCorrecto" Width="80%" runat="server" Visible="false">
            <div id="divCorrecto" style="width: 87%; height: 80px; margin-left: 1%; background-color: rgb(160,212,104)" class="tipoLetraNegritaCursiva letrasBlancas">
                <br />

                <center>
                    <table width="80%">
                        <tr>
                            <td align="right"><span class="icon-ok" style="font-size: 23px"></span></td>
                            <td align="left" style="font-size: 23px">¡Correcto!</td>
                            <td align="center">
                                <asp:Label Text="Este es un mensaje de error" ForeColor="White" ID="lblMensajeCorrecto" runat="server" /></td>
                        </tr>
                    </table>
                </center>


            </div>
        </asp:Panel>
        <div class="divflotanteizquierdarelativo">
            <div class="DId" style="border-bottom: 1px solid #003366;">
                <h3 class="text-left fontRegular">MERCADEO Y VENTAS</h3>
            </div>

            <asp:Panel ID="Panel_FORM_BOTONES" runat="server" DefaultButton="Button_BUSCAR">
                <div id="main" class="divflotanteizquierdarelativo2">
                    <ul id="navigationMenu">
                        <li><a class="search" href="#"><span>
                            <asp:TextBox ID="TextBox_BUSCAR" CssClass="icon-large icon-search btnSearch input-md fontRegular"
                                runat="server" placeholder="Nit, Razón social"></asp:TextBox>
                            <asp:Button ID="Button_BUSCAR" runat="server" OnClick="Button_BUSCAR_Click" ValidationGroup="validatorBuscar" Style="display: none" />
                        </span></a></li>
                        <li id="libtnNuevo" runat="server">
                            <asp:Button ID="Button_NUEVO" runat="server" CssClass='BtnNew' OnClientClick="ActivarValidaciones();" OnClick="Button_NUEVO_Click" ValidationGroup="validatorNuevo" /></li>
                        <li id="libtnModificar" runat="server">
                            <asp:Button ID="Button_MODIFICAR" runat="server" CssClass='BtnEdit' OnClick="Button_MODIFICAR_Click" ValidationGroup="validatorEditar" /></li>
                        <li id="libtnGuardar" runat="server">
                            <asp:Button ID="Button_GUARDAR" runat="server" CssClass='BtnSave' OnClick="Button_GUARDAR_Click" ValidationGroup="validatorGuardar" />
                        </li>
                        <li id="libtnPrint" runat="server">
                            <asp:Button ID="btnPrint" runat="server" CssClass='BtnPrint' /></li>
                        <li id="libtnCancelar" runat="server">
                            <asp:Button ID="Button_CANCELAR" runat="server" ValidationGroup="validatorImprimir" CssClass='BtnPrint' OnClick="Button_CANCELAR_Click" /></li>
                    </ul>
                </div>
            </asp:Panel>

            <div class="DivCont">

                <asp:Panel ID="Panel_RESULTADOS_GRID" runat="server">
                    <div>
                        <div>
                            <div>
                                <div>
                                    <asp:GridView ID="GridView_RESULTADOS_BUSQUEDA" runat="server" Width="885px" AllowPaging="True"
                                        OnPageIndexChanging="GridView_RESULTADOS_BUSQUEDA_PageIndexChanging" OnSelectedIndexChanged="GridView_RESULTADOS_BUSQUEDA_SelectedIndexChanged"
                                        AutoGenerateColumns="False" DataKeyNames="ID">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" SelectImageUrl="~/imagenes/plantilla/view2.gif"
                                                ButtonType="Image">
                                                <ItemStyle CssClass="columna_grid_centrada" />
                                            </asp:CommandField>
                                            <asp:BoundField DataField="Raz. social" HeaderText="Raz. social" />
                                            <asp:BoundField DataField="NIT" HeaderText="NIT">
                                                <ItemStyle CssClass="columna_grid_der" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Dirección" HeaderText="Dirección" />
                                            <asp:BoundField DataField="Telefono" HeaderText="Telefono">
                                                <ItemStyle CssClass="columna_grid_centrada" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Tel 1" HeaderText="Tel 1">
                                                <ItemStyle CssClass="columna_grid_centrada" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Celular" HeaderText="Celular">
                                                <ItemStyle CssClass="columna_grid_centrada" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Estado" HeaderText="Estado">
                                                <ItemStyle CssClass="columna_grid_centrada" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Código" HeaderText="Código">
                                                <ItemStyle CssClass="columna_grid_der" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ID" HeaderText="ID" Visible="False" />
                                        </Columns>
                                        <HeaderStyle BackColor="#DDDDDD" />
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:Panel>

                <asp:Panel ID="Panel_FORMULARIO" runat="server">
                    <asp:HiddenField ID="HiddenField_ID_EMPRESA" runat="server" />
                    <asp:HiddenField ID="HiddenField_ESTADO_EMPRESA" runat="server" />
                    <div class="colorFondoPaneles">
                        <legend class="legFormClientes">
                            <div class="legForm fontBold">
                                <table width="100%">
                                    <tr>
                                        <td class="tipoLetraNegritaCursiva">CLIENTES
                                        </td>
                                        <td>
                                            <ul class="menu">
                                                <li><span class="colorOrigenSubmenu icon-formulariomenu"></span>
                                                    <ul>
                                                        <li class="estiloListaMenu">
                                                            <asp:Button ID="Button1" runat="server" Text="CLIENTES" CssClass='btnSubMenu textoCentroMenu' /></li>
                                                        <li class="estiloListaMenu">
                                                            <asp:Button ID="btnOpc1" runat="server" Text="Contrato de Servicio" CssClass='btnSubMenu textoContenidoMenu aFont fontItalic' /></li>
                                                        <li class="estiloListaMenu">
                                                            <asp:Button ID="btnOpc2" runat="server" Text="Condiciones Económicas" CssClass='btnSubMenu textoContenidoMenu aFont fontItalic' /></li>
                                                        <li class="estiloListaMenu">
                                                            <asp:Button ID="Button2" runat="server" Text="Contáctos Comerciales" CssClass='btnSubMenu textoContenidoMenu aFont fontItalic' /></li>
                                                        <li class="estiloListaMenu">
                                                            <asp:Button ID="Button3" runat="server" Text="Historial de Activaciones" CssClass='btnSubMenu textoContenidoMenu aFont fontItalic' /></li>
                                                        <li class="estiloListaMenu">
                                                            <asp:Button ID="Button4" runat="server" Text="Unidad de Negocio" CssClass='btnSubMenu textoContenidoMenu aFont fontItalic' /></li>
                                                        <li class="estiloListaMenu">
                                                            <asp:Button ID="Button5" runat="server" Text="Manual del Cliente" CssClass='btnSubMenu textoContenidoMenu aFont fontItalic' /></li>
                                                        <li class="estiloListaMenu">
                                                            <asp:Button ID="Button6" runat="server" Text="Información Básica Comercial" CssClass='btnSubMenu textoContenidoMenu aFont fontItalic' /></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </legend>
                    </div>
                    <div class="colorFondoPaneles">
                        <asp:Panel ID="Panel_CONTROL_REGISTRO" runat="server">
                            <asp:Panel ID="Panel_CABEZA_REGISTRO" runat="server">
                                <br />
                                <table width="100%">
                                    <tr>
                                        <div>
                                            <legend class="legFormClientes">
                                                <div class="legForm fontBold tipoLetraNegritaCursiva">
                                                    DATOS DE CONTROL
                                                </div>
                                            </legend>
                                        </div>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel ID="Panel_CONTENIDO_REGISTRO" runat="server">
                                <table width="100%">
                                    <tr class="dvSep1">
                                        <td class="espacioColumnaIzquierda tipoLetraNegrita">Informacion de registro
                                        </td>
                                        <td>
                                           
                                                    <asp:TextBox ID="TextBox_FCH_CRE" runat="server" Enabled="False" ReadOnly="True"
                                                        CssClass="form-control input-md" placeholder="Fecha registro" required></asp:TextBox>
                                         
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox_HOR_CRE" runat="server" Enabled="False" ReadOnly="True"
                                                CssClass="form-control input-md" placeholder="Hora registro"></asp:TextBox>
                                        </td>
                                        <td class="espacioColumnaDerecha">
                                            <asp:TextBox ID="TextBox_USU_CRE" runat="server" Enabled="False" ReadOnly="True"
                                                CssClass="form-control input-md" placeholder="Usuario registro"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="100">
                                            <div class="dvLinea">
                                            </div>
                                        </td>

                                    </tr>
                                    <tr class="dvSep1">
                                        <td class="espacioColumnaIzquierda tipoLetraNegrita">Información de actualización
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox_FCH_MOD" runat="server" Enabled="False" ReadOnly="True"
                                                CssClass="form-control input-md" placeholder="Fecha actualización"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox_HOR_MOD" runat="server" Enabled="False" ReadOnly="True"
                                                CssClass="form-control input-md" placeholder="Hora actualización"></asp:TextBox>
                                        </td>
                                        <td class="espacioColumnaDerecha">
                                            <asp:TextBox ID="TextBox_USU_MOD" runat="server" Enabled="False" ReadOnly="True"
                                                CssClass="form-control input-md" placeholder="Ultimo usuario actualizó"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="100">
                                            <div class="dvLinea">
                                            </div>
                                        </td>

                                    </tr>
                                    <tr class="dvSep1">
                                        <td class="espacioColumnaIzquierda tipoLetraNegrita">Identificador
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox_COD_EMPRESA" runat="server" ReadOnly="True" CssClass="form-control input-md"
                                                placeholder="Código del cliente" ValidationGroup="COD_CLIENTE"></asp:TextBox>
                                        </td>
                                        <td colspan="3" class="espacioColumnaDerecha">
                                       
                                                    <asp:DropDownList ID="DropDownList_ACTIVO" runat="server" AutoPostBack="True" CssClass="form-control placeholder"
                                                        OnSelectedIndexChanged="DropDownList_ACTIVO_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                               
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="100">
                                            <div class="dvLinea">
                                            </div>
                                        </td>

                                    </tr>
                                </table>
                                <%--      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_ACTIVO"
                                    ControlToValidate="DropDownList_ACTIVO" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El ESTADO de la empresa es requerido."
                                    ValidationGroup="NUEVOCLIENTE" />--%>
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel_COD_EMPRESA" runat="server">
                            <!-- DropDownList_ACTIVO -->
                            <center>
                                <asp:Panel ID="Panel_HISTORIAL_ACT" runat="server">
                                    <div class="tipoLetraNegrita">
                                        Por qué?
                                <asp:Label ID="Label_TIPO_DE_ACTIVACION" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                                        <br />
                                       
                                                <asp:TextBox ID="TextBox_DESCRIPCION_HISTORIAL_ACT" runat="server" TextMode="MultiLine"
                                                    Height="50px" MaxLength="250" Width="760px" placeholder="Describa brevemente la causa del cambio de estado"></asp:TextBox>
                                          
                                    </div>
                                    <div class="dvLinea">
                                    </div>
                                    <!-- TextBox_DESCRIPCION_HISTORIAL_ACT -->
                                    <%--<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_DESCRIPCION_HISTORIAL_ACT"
                                        ControlToValidate="TextBox_DESCRIPCION_HISTORIAL_ACT" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La DESCRIPCIÓN DEL CAMBIO DE ESTADO de la empresa es requerido."
                                        ValidationGroup="NUEVOCLIENTE" />--%>
                                </asp:Panel>
                            </center>
                        </asp:Panel>
                    </div>
                </asp:Panel>
                <br />
                <br />

                <asp:Panel ID="Panel_INFORMACION_CLIENTE" CssClass="colorFondoPaneles" runat="server">
                    <div>
                        <legend class="legFormClientes">
                            <div class="legForm fontBold tipoLetraNegritaCursiva">
                                DATOS BASICOS DEL CLIENTE
                            </div>
                        </legend>
                    </div>
                    <div>
                        <asp:HiddenField ID="HiddenField_RAZ_SOCIAL_ANTERIOR" runat="server" />

                        <table width="100%">
                            <tr class="dvSep1">
                                <td class="espacioColumnaIzquierda tipoLetraNegrita">Fecha de Ingreso
                                </td>
                                <td>
                                 
                                            <asp:TextBox ID="TextBox_FCH_INGRESO" class="form-control input-md" onfocus="(this.type='date')"
                                                CssClass="form-control input-md" runat="server" MaxLength="10" placeholder="Fecha de Ingreso"></asp:TextBox>
                                    
                                </td>
                                <td class="tipoLetraNegrita">Nit
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox_NIT_EMPRESA" runat="server" name="TextBox_NIT_EMPRESA" MaxLength="15"
                                        CssClass="form-control input-md" placeholder="Nit"></asp:TextBox>
                                </td>
                                <td class="tipoLetraNegrita">Dv
                                </td>
                                <td class="espacioColumnaDerecha tipoLetraNegrita">
                                    <asp:TextBox ID="TextBox_DIG_VER" runat="server" name="TextBox_DIG_VER" MaxLength="1"
                                        CssClass="form-control input-md" placeholder="Dv"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="100">
                                    <div class="dvLinea">
                                    </div>
                                </td>

                            </tr>
                            <tr class="dvSep1">
                                <td class="espacioColumnaIzquierda tipoLetraNegrita">Razón social
                                </td>
                                <td colspan="6" class="espacioColumnaDerecha">
                                    <asp:TextBox ID="TextBox_RAZ_SOCIAL" runat="server" MaxLength="60" name="TextBox_RAZ_SOCIAL"
                                        CssClass="form-control input-md" placeholder="Razón social"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="100">
                                    <div class="dvLinea">
                                    </div>
                                </td>

                            </tr>
                            <tr class="dvSep1">
                                <td class="espacioColumnaIzquierda tipoLetraNegrita">Dirección
                                </td>
                                <td colspan="6" class="espacioColumnaDerecha">
                                    <asp:TextBox ID="TextBox_DIR_EMP" runat="server" MaxLength="40" name="TextBox_DIR_EMP"
                                        CssClass="form-control input-md" placeholder="Dirección Empresa"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="100">
                                    <div class="dvLinea">
                                    </div>
                                </td>

                            </tr>
                            <tr class="dvSep1">
                                <td class="espacioColumnaIzquierda tipoLetraNegrita">Regional
                                </td>
                                <td colspan="6" class="espacioColumnaDerecha">
                                    <asp:DropDownList ID="DropDownList_REGIONAL" name="DropDownList_REGIONAL" runat="server"
                                        AutoPostBack="True" CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_REGIONAL_SelectedIndexChanged"
                                        ValidationGroup="NUEVOCLIENTE">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="100">
                                    <div class="dvLinea">
                                    </div>
                                </td>

                            </tr>
                            <tr class="dvSep1">
                                <td class="espacioColumnaIzquierda tipoLetraNegrita">Departamento
                                </td>
                                <td colspan="6" class="espacioColumnaDerecha tipoLetraNegrita">
                                    <asp:DropDownList ID="DropDownList_DEPARTAMENTO" name="DropDownList_DEPARTAMENTO"
                                        runat="server" AutoPostBack="True" CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_DEPARTAMENTO_SelectedIndexChanged"
                                        ValidationGroup="NUEVOCLIENTE">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="100">
                                    <div class="dvLinea">
                                    </div>
                                </td>

                            </tr>
                            <tr class="dvSep1">
                                <td class="espacioColumnaIzquierda tipoLetraNegrita">Ciudad
                                </td>
                                <td colspan="6" class="espacioColumnaDerecha">
                                    <asp:DropDownList ID="DropDownList_CIUDAD" CssClass="form-control placeholder" name="DropDownList_CIUDAD"
                                        runat="server" ValidationGroup="NUEVOCLIENTE" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="100">
                                    <div class="dvLinea">
                                    </div>
                                </td>

                            </tr>
                            <tr class="dvSep1">
                                <td class="espacioColumnaIzquierda tipoLetraNegrita">Teléfonos
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox_TEL_EMP" runat="server" name="TextBox_TEL_EMP" CssClass="form-control input-md"
                                        placeholder="Teléfono 1" MaxLength="30"></asp:TextBox>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox ID="TextBox_TEL_EMP_1" runat="server" name="TextBox_TEL_EMP_1" CssClass="form-control input-md"
                                        placeholder="Teléfono 2" MaxLength="30"></asp:TextBox>
                                </td>
                                <td colspan="2" class="espacioColumnaDerecha">
                                    <asp:TextBox ID="TextBox_CEL_EMP" runat="server" name="TextBox_CEL_EMP" CssClass="form-control input-md"
                                        placeholder="Celular" MaxLength="15"></asp:TextBox>
                                </td>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TEL_EMP" ControlToValidate="TextBox_TEL_EMP"
                                    Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El TELEFONO DEL CLIENTE es requerido."
                                    ValidationGroup="NUEVOCLIENTE" />
                            </tr>
                            <tr>
                                <td colspan="100">
                                    <div class="dvLinea">
                                    </div>
                                </td>

                            </tr>
                            <tr class="dvSep1">
                                <td class="espacioColumnaIzquierda tipoLetraNegrita">Representante Legal
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox_NOM_REP_LEGAL" runat="server" MaxLength="40" CssClass="form-control input-md"
                                        placeholder="Nombre" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                                </td>
                                <td colspan="2">
                                    <asp:DropDownList ID="DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE" runat="server" CssClass="form-control placeholder"
                                        ValidationGroup="NUEVOCLIENTE" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td colspan="2" class="espacioColumnaDerecha">
                                    <asp:TextBox ID="TextBox_CC_REP_LEGAL" runat="server" MaxLength="15" CssClass="form-control input-md"
                                        placeholder="Número documento" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                                </td>
                            </tr>

                            <tr class="dvSep1">
                                <td colspan="2" class="espacioColumnaIzquierda">
                                    <asp:DropDownList ID="DropDownList_DEP_CC_REP_LEGAL" runat="server" Width="250px"
                                        Visible="false" CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE"
                                        AutoPostBack="True" OnSelectedIndexChanged="DropDownList_DEP_CC_REP_LEGAL_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td class="espacioColumnaDerecha">
                                    <asp:DropDownList ID="DropDownList_CIU_CC_REP_LEGAL" runat="server" Width="250px"
                                        Visible="false" CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="100">
                                    <div class="dvLinea">
                                    </div>
                                </td>

                            </tr>
                        </table>
                        <%-- TextBox_FCH_INGRESO --%>
                        <%--      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_FCH_INGRESO"
                            ControlToValidate="TextBox_FCH_INGRESO" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La FECHA DE INGRESO es requerida."
                            ValidationGroup="NUEVOCLIENTE" />--%>
                        <%-- TextBox_NIT_EMPRESA --%>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_NIT_EMPRESA"
                            ControlToValidate="TextBox_NIT_EMPRESA" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El NIT DEL CLIENTE es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%-- TextBox_DIG_VER --%>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DIG_VER" ControlToValidate="TextBox_DIG_VER"
                            Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El DIGITO DE VERIFICACIÓN DEL NIT es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%-- TextBox_RAZ_SOCIAL --%>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_RAZ_SOCIAL"
                            ControlToValidate="TextBox_RAZ_SOCIAL" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La RAZÓN SOCIAL DEL CLIENTE es requerida."
                            ValidationGroup="NUEVOCLIENTE" />
                        <!-- TextBox_DIR_EMP -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DIR_EMP" ControlToValidate="TextBox_DIR_EMP"
                            Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La DIRECCIÓN DEL CLIENTE es requerida."
                            ValidationGroup="NUEVOCLIENTE" />
                        <!-- DropDownList_CIUDAD -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_CIUDAD" ControlToValidate="DropDownList_CIUDAD"
                            Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La CIUDAD DEL CLIENTE es requerida."
                            ValidationGroup="NUEVOCLIENTE" />
                        <!-- TextBox_NOM_REP_LEGAL -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_NOM_REP_LEGAL"
                            ControlToValidate="TextBox_NOM_REP_LEGAL" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El NOMBRE DEL REP. LEGAL DEL CLIENTE es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <!-- DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE"
                            ControlToValidate="DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE" Display="None"
                            ErrorMessage="<b>Campo Requerido faltante</b><br />El TIPO DE DOCUMENTO es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <!-- TextBox_CC_REP_LEGAL -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_CC_REP_LEGAL"
                            ControlToValidate="TextBox_CC_REP_LEGAL" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La CEDULA DEL REP. LEGAL DEL CLIENTE es requerida."
                            ValidationGroup="NUEVOCLIENTE" />
                        <!-- DropDownList_CIU_CC_REP_LEGAL -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_CIU_CC_REP_LEGAL"
                            ControlToValidate="DropDownList_CIU_CC_REP_LEGAL" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La CIUDAD DEL REP. LEGAL DEL CLIENTE es requerida."
                            ValidationGroup="NUEVOCLIENTE" />
                    </div>
                </asp:Panel>

                <asp:Panel ID="Panel_UBICACION" CssClass="colorFondoPaneles" runat="server">
                </asp:Panel>
                <br />
                <br />


                <asp:Panel ID="Panel_ACTIVIDAD_COBERTURA" CssClass="colorFondoPaneles" runat="server">

                    <div>
                        <legend class="legFormClientes">
                            <div class="legForm fontBold tipoLetraNegritaCursiva">
                                ACTIVIDAD ECONOMICA DEL CLIENTE
                            </div>
                        </legend>
                    </div>
                    <center>
                        <div>
                            <table width="100%">
                                <tr class="dvSep1">

                                    <td class="columnaUnPocoAncha espacioColumnaIzquierda tipoLetraNegrita">Sección
                                    </td>
                                    <td class="espacioColumnaDerecha">
                                        <asp:DropDownList ID="DropDownList_NOMBRE_SECCION" runat="server" AutoPostBack="True"
                                            Width="700px" CssClass="form-control placeholder" name="DropDownList_NOMBRE_SECCION"
                                            OnSelectedIndexChanged="DropDownList_NOMBRE_SECCION_SelectedIndexChanged" ValidationGroup="NUEVOCLIENTE">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="100">
                                        <div class="dvLinea">
                                        </div>
                                    </td>

                                </tr>
                                <tr class="dvSep1">
                                    <td class="espacioColumnaIzquierda tipoLetraNegrita">División
                                    </td>
                                    <td class="espacioColumnaDerecha">
                                        <asp:DropDownList ID="DropDownList_DIVISION" runat="server" AutoPostBack="True" CssClass="form-control placeholder"
                                            Width="700px" OnSelectedIndexChanged="DropDownList_DIVISION_SelectedIndexChanged"
                                            ValidationGroup="NUEVOCLIENTE">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="100">
                                        <div class="dvLinea">
                                        </div>
                                    </td>

                                </tr>
                                <tr class="dvSep1">
                                    <td class="espacioColumnaIzquierda tipoLetraNegrita">Clase
                                    </td>
                                    <td class="espacioColumnaDerecha">
                                        <asp:DropDownList ID="DropDownList_CLASE" name="DropDownList_CLASE" runat="server"
                                            Width="700px" AutoPostBack="True" CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_CLASE_SelectedIndexChanged"
                                            ValidationGroup="NUEVOCLIENTE">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="100">
                                        <div class="dvLinea">
                                        </div>
                                    </td>

                                </tr>
                                <tr class="dvSep1">
                                    <td class="espacioColumnaIzquierda tipoLetraNegrita">Actividad
                                    </td>
                                    <td class="espacioColumnaDerecha">
                                        <asp:DropDownList ID="DropDownList_ACTIVIDAD" name="DropDownList_ACTIVIDAD" runat="server"
                                            Width="700px" CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="100">
                                        <div class="dvLinea">
                                        </div>
                                    </td>

                                </tr>
                            </table>
                        </div>
                    </center>
                    <!-- DropDownList_ACTIVIDAD -->
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_ACTIVIDAD"
                        ControlToValidate="DropDownList_ACTIVIDAD" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La ACTIVIDAD ECONÓMICA DEL CLIENTE es requerida."
                        ValidationGroup="NUEVOCLIENTE" />
                    <!-- TextBox_DES_ACTIVIDAD -->
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_DES_ACTIVIDAD"
                        ControlToValidate="TextBox_DES_ACTIVIDAD" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La DESCRIPCIÓN DE LA ACTIVIDAD ECONÓMICA es requerida."
                        ValidationGroup="NUEVOCLIENTE" />
                </asp:Panel>
                <div class="colorFondoPaneles">
                    <center>
                        <asp:TextBox ID="TextBox_DES_ACTIVIDAD" runat="server" TextMode="MultiLine" Height="50px"
                            CssClass="form-control input-md" placeholder="Realice una descripción mas clara de la actividad económica del cliente"
                            Width="750px" MaxLength="50" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>

                        <asp:Panel ID="Panel_SELECCIONAR_RIESGO" runat="server">
                            <table width="50%">
                                <tr class="dvSep1">
                                    <td class="espacioColumnaIzquierda tipoLetraNegrita">Porcentaje de riesgos
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList_LISTA_RIESGOS" runat="server" AutoPostBack="True"
                                            Width="700px" CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_LISTA_RIESGOS_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="espacioColumnaDerecha">
                                        <asp:GridView ID="GridView_RIESGOS_CONFIGURADOS" runat="server" AutoGenerateColumns="False"
                                            Width="279px" OnRowCommand="GridView_RIESGOS_CONFIGURADOS_RowCommand" DataKeyNames="ID_EMPRESA,CODIGO">
                                            <Columns>
                                                <asp:ButtonField ButtonType="Image" CommandName="eliminar" ImageUrl="~/imagenes/plantilla/delete.gif"
                                                    Text="Eliminar">
                                                    <ItemStyle CssClass="columna_grid_centrada" />
                                                </asp:ButtonField>
                                                <asp:BoundField DataField="ID_EMPRESA" HeaderText="ID_EMPRESA" Visible="False" />
                                                <asp:BoundField DataField="DESCRIPCION_RIESGO" HeaderText="Código">
                                                    <ItemStyle CssClass="columna_grid_centrada" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="CODIGO" HeaderText="%">
                                                    <ItemStyle CssClass="columna_grid_der" />
                                                </asp:BoundField>
                                            </Columns>
                                            <HeaderStyle BackColor="#DDDDDD" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="100">
                                        <div class="dvLinea">
                                        </div>
                                    </td>

                                </tr>
                            </table>
                        </asp:Panel>
                    </center>
                </div>
                <asp:Panel ID="Panel_COBERTURA" CssClass="colorFondoPaneles" runat="server">

                    <div>
                        <legend class="legFormClientes">
                            <div class="legForm fontBold tipoLetraNegritaCursiva">
                                CIUDADES DE ATENCION AL CLIENTE
                            </div>
                        </legend>
                    </div>
                    <div>
                        <asp:Panel ID="Panel_COBERTURA_DROPS" runat="server">
                            <table>
                                <tr class="dvSep1">
                                    <td class="espacioColumnaIzquierda tipoLetraNegrita">Regional
                                    </td>
                                    <td colspan="5">
                                        <asp:DropDownList ID="DropDownList_REGIONAL_COVERTURA" runat="server" Width="200px"
                                            AutoPostBack="True" OnSelectedIndexChanged="DropDownList_REGIONAL_COVERTURA_SelectedIndexChanged"
                                            CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="tipoLetraNegrita">Departamento
                                    </td>
                                    <td colspan="5">
                                        <asp:DropDownList ID="DropDownList_DEPARTAMNETO_COVERTURA" runat="server" Width="200px"
                                            AutoPostBack="True" OnSelectedIndexChanged="DropDownList_DEPARTAMNETO_COVERTURA_SelectedIndexChanged"
                                            CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="tipoLetraNegrita">Ciudad
                                    </td>
                                    <td colspan="5" class="espacioColumnaDerecha">
                                        <asp:DropDownList ID="DropDownList_CIUDAD_COVERTURA" runat="server" Width="200px"
                                            AutoPostBack="True" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged"
                                            CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                            <div class="div_espaciador">
                            </div>
                        </asp:Panel>
                        <table width="100%">
                            <tr class="dvSep1">
                                <td class="espacioColumnaIzquierda">
                                    <div>
                                        <div>
                                            <asp:GridView ID="GridView_COVERTURA" runat="server" Width="600px" OnSelectedIndexChanged="GridView_COVERTURA_SelectedIndexChanged"
                                                AutoGenerateColumns="False">
                                                <Columns>
                                                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/imagenes/plantilla/delete.gif"
                                                        ShowSelectButton="True" HeaderText="Acción">
                                                        <ItemStyle CssClass="columna_grid_centrada" />
                                                    </asp:CommandField>
                                                    <asp:BoundField DataField="Código Ciudad" HeaderText="Código Ciudad">
                                                        <ItemStyle CssClass="columna_grid_centrada" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Regional" HeaderText="Regional" />
                                                    <asp:BoundField DataField="Departamento" HeaderText="Departamento" />
                                                    <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:Panel>

                <asp:Panel ID="Panel_DATOS_DE_FACTURACION" CssClass="colorFondoPaneles" runat="server">

                    <div>
                        <legend class="legFormClientes">
                            <div class="legForm fontBold tipoLetraNegritaCursiva">
                                TIPO DE EMPRESA
                            </div>
                        </legend>
                    </div>
                    <div>
                        <table width="100%">
                            <tr class="dvSep1">
                                <td class="espacioColumnaIzquierda tipoLetraNegrita">Estatal
                                </td>
                                <td class="tipoLetraNegrita">Regimén común(IVA)
                                </td>
                                <td class="tipoLetraNegrita">Presencia Nacional
                                </td>
                                <td class="tipoLetraNegrita">
                                    <asp:Label ID="Label_TIPO_EMPRESA" runat="server" Text="Tipo Empresa (AIU)"></asp:Label>
                                </td>
                                <td class="tipoLetraNegrita">No. Empleados (Proyección)
                                </td>
                                <td class="espacioColumnaDerecha tipoLetraNegrita">No. Empleados (Activos)
                                </td>
                            </tr>
                            <tr class="dvSep1">
                                <td class="espacioColumnaIzquierda">
                                    <asp:DropDownList ID="DropDownList_EMP_ESTADO" runat="server" CssClass="form-control placeholder"
                                        ValidationGroup="NUEVOCLIENTE">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList_EMP_EXC_IVA" runat="server" CssClass="form-control placeholder"
                                        ValidationGroup="NUEVOCLIENTE">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList_FAC_NAL" runat="server" ValidationGroup="NUEVOCLIENTE"
                                        CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_FAC_NAL_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList_TIPO_EMPRESA" runat="server" ValidationGroup="NUEVOCLIENTE"
                                        CssClass="form-control placeholder">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox_NUM_EMPLEADOS" runat="server" MaxLength="6" CssClass="form-control input-md"
                                        ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                                </td>
                                <td class="espacioColumnaDerecha">
                                    <asp:Label ID="Label_num_empleados_reales" runat="server" Text="0" Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <!-- DropDownList_EMP_ESTADO -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_EMP_ESTADO"
                            ControlToValidate="DropDownList_EMP_ESTADO" InitialValue="0" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />EMPRESA DEL ESTADO es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <!-- DropDownList_FAC_NAL -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_FAC_NAL"
                            ControlToValidate="DropDownList_FAC_NAL" InitialValue="0" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />FACTURACIÓN NACIONAL es requerida."
                            ValidationGroup="NUEVOCLIENTE" />
                        <!-- DropDownList_EMP_EXC_IVA -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_EMP_EXC_IVA"
                            ControlToValidate="DropDownList_EMP_EXC_IVA" InitialValue="0" Display="None"
                            ErrorMessage="<b>Campo Requerido faltante</b><br />EMPRESA EXCLUIDA DEL IVA es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <!-- DropDownList_TIPO_EMPRESA -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_TIPO_EMPRESA"
                            ControlToValidate="DropDownList_TIPO_EMPRESA" InitialValue="0" Display="None"
                            ErrorMessage="<b>Campo Requerido faltante</b><br />TIPO DE EMPRESA es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <!-- TextBox_NUM_EMPLEADOS -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_NUM_EMPLEADOS"
                            ControlToValidate="TextBox_NUM_EMPLEADOS" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El NÚMERO DE EMPLEADOS es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                    </div>
                </asp:Panel>

                <asp:Panel ID="Panel_ALIANZA_GRUPO_EMPRESARIAL" CssClass="colorFondoPaneles" runat="server" Visible="false">
                    <table width="100%">
                        <tr class="dvSep1">
                            <td class="espacioColumnaIzquierda">
                                <div>
                                    <table>
                                        <tr>
                                            <td>Grupo
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList_GRUPO_EMPRESARIAL" runat="server" Width="350px"
                                                    CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                            <td style="width: 50%">
                                <div>
                                    <table>
                                        <tr>
                                            <td>Alianza
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList_ALIANZA" runat="server" Width="350px" CssClass="form-control placeholder"
                                                    ValidationGroup="NUEVOCLIENTE">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>

                <asp:Panel ID="Panel_NEGOCIO" runat="server" CssClass="colorFondoPaneles" Visible="false">
                    <table>
                        <tr>
                            <td>
                                <asp:Panel ID="Panel_CIUDAD_NEGOCIO" runat="server">
                                    <div>
                                        Ciudad que Originó el Negocio
                                    </div>
                                    <div>
                                        <table>
                                            <tr>
                                                <td>Departamento
                                                </td>
                                                <td>
                                                    <div style="padding: 3px 0px 3px 0px;">
                                                        <asp:DropDownList ID="DropDownList_DEPARTAMENTO_ORIGINO" runat="server" Width="250px"
                                                            AutoPostBack="True" OnSelectedIndexChanged="DropDownList_DEPARTAMENTO_ORIGINO_SelectedIndexChanged"
                                                            CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Ciudad
                                                </td>
                                                <td>
                                                    <div style="padding: 3px 0px 3px 0px;">
                                                        <asp:DropDownList ID="DropDownList_CIUDAD_ORIGINO" runat="server" Width="250px" CssClass="form-control placeholder"
                                                            ValidationGroup="NUEVOCLIENTE">
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <!-- DropDownList_CIUDAD_ORIGINO -->
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_CIUDAD_ORIGINO"
                                            ControlToValidate="DropDownList_CIUDAD_ORIGINO" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La CIUDAD QUE ORIGINÓ EL NEGOCIO es requerido."
                                            ValidationGroup="NUEVOCLIENTE" />
                                    </div>
                                </asp:Panel>
                                <asp:Panel ID="Panel_UNIDAD_NEGOCIO" runat="server">
                                    <div>
                                        Unidad de Negocio
                                    </div>
                                    <div>
                                        <asp:Panel ID="Panel_INFO_SIN_UNIDAD_NEGOCIO" runat="server">
                                            <div style="text-align: center; margin: 10px; font-weight: bold; color: Red;">
                                                No se ha asignado ningún usuario para esta empresa.
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="Panel_GRILLA_UNIDAD_NEGOCIO" runat="server">
                                            <div>
                                                <div>
                                                    <asp:GridView ID="GridView_UNIDAD_NEGOCIO" runat="server" AutoGenerateColumns="False"
                                                        Width="415px" DataKeyNames="ID_EMPRESA_USUARIO,ID_USUARIO">
                                                        <Columns>
                                                            <asp:BoundField DataField="ID_EMPRESA_USUARIO" HeaderText="ID_EMPRESA_USUARIO" Visible="False" />
                                                            <asp:BoundField DataField="ID_USUARIO" HeaderText="ID_USUARIO" Visible="False" />
                                                            <asp:BoundField DataField="USU_LOG" HeaderText="Usuario" />
                                                            <asp:BoundField DataField="NOMBRES_EMPLEADO" HeaderText="Empleado" />
                                                            <asp:BoundField DataField="UNIDAD_NEGOCIO" HeaderText="Unidad de Negocio" />
                                                        </Columns>
                                                        <HeaderStyle BackColor="#DDDDDD" />
                                                    </asp:GridView>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //AgregarValidacionesCorrespondientes();
        function AcomodarBarraBotones(reiniciar, esResize) {
            var contenedorPrincipal;
            if (!reiniciar) {


                if (document.getElementById('divPrincipal')) {
                    contenedorPrincipal = document.getElementById('divPrincipal')
                }

                if (screen.availWidth == window.outerWidth && screen.availHeight == window.outerHeight && esResize == true) {
                    if (document.getElementById('main'))
                        document.getElementById('main').style.left = '70%'
                } else {
                    var inicial = contenedorPrincipal.clientWidth
                    inicial = (inicial * 22) / 100;
                    if (document.getElementById('main'))
                        document.getElementById('main').style.left = (contenedorPrincipal.clientWidth - inicial) + 'px'
                }

            } else {
                if (document.getElementById('main'))
                    document.getElementById('main').style.left = '70%'



            }




        }

        function ActivarValidaciones() {
            $('#formularioProceso').bootstrapValidator('enableFieldValidators', 'ctl00$ContentPlaceHolder1$DropDownList_ACTIVO', false, 'notEmpty')
            $('#formularioProceso').bootstrapValidator('enableFieldValidators', 'ctl00$ContentPlaceHolder1$TextBox_DESCRIPCION_HISTORIAL_ACT', false, 'notEmpty')
            $('#formularioProceso').bootstrapValidator('enableFieldValidators', 'ctl00$ContentPlaceHolder1$TextBox_FCH_INGRESO', false, 'notEmpty')
            
        }

    </script>
</asp:Content>
