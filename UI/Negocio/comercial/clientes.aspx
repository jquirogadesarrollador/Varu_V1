<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Proceso.master" AutoEventWireup="true"
    CodeFile="clientes.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../../Scripts/jquery-1.11.3.js" type="text/javascript"></script>
    <script src="../../BootStrapV3.3.4/js/bootstrap.js" type="text/javascript"></script>
    <link href="../../BootStrapV3.3.4/css/bootstrapValidator.css" rel="stylesheet" type="text/css" />
    <script src="../../BootStrapV3.3.4/js/bootstrapValidator.js" type="text/javascript"></script>
    <script src="../../Scripts/validatorForm.js" type="text/javascript"></script>
    <script src="../../BootStrapV3.3.4/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
    <link href="../../css/SLogin.css" rel="stylesheet" type="text/css" />
    <link href="../../css/SForms.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server"
    ClientIDMode="Static">
    <%--Titulo del formulario--%>
    <div style="width:100%">
    <div class="divflotanteizquierdarelativo">
        <div class="DId" style="border-bottom: 1px solid #003366;">
            <h3 class="text-left fontRegular">
                MERCADEO Y VENTAS</h3>
        </div>
        <asp:Panel ID="Panel_FORM_BOTONES" runat="server">
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top">
                        <legend>
                            <div style="width: 220px" class="legForm fontItalic">
                                Botones de acción</div>
                        </legend>
                        <div>
                            <table cellpadding="0" cellspacing="0" border="0" style="margin: 0 auto;">
                                <tr>
                                    <td rowspan="0">
                                        <asp:Button ID="Button_NUEVO" Style="width: 220px" runat="server" Text="Nuevo" CssClass='btn form-control btnCerSes fontBold'
                                            OnClick="Button_NUEVO_Click" />
                                    </td>
                                    <td rowspan="0">
                                        <asp:Button ID="Button_MODIFICAR" runat="server" Text="Actualizar" CssClass='btn form-control btnCerSes fontBold'
                                            OnClick="Button_MODIFICAR_Click" />
                                    </td>
                                    <td rowspan="0">
                                        <asp:Button ID="Button_GUARDAR" runat="server" Text="Guardar" CssClass='btn form-control btnCerSes fontBold'
                                            OnClick="Button_GUARDAR_Click" />
                                    </td>
                                    <td rowspan="0">
                                        <asp:Button ID="Button_CANCELAR" runat="server" Text="Cancelar" CssClass='btn form-control btnCerSes fontBold'
                                            OnClick="Button_CANCELAR_Click" />
                                    </td>
                                    <td rowspan="0">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td style="margin-left: 2%" valign="top">
                        <div style="margin-left: 4%">
                            <legend>
                                <div class="legForm fontItalic">
                                    Sección de busqueda
                                </div>
                            </legend>
                        </div>
                        <div>
                            <table cellpadding="0" cellspacing="0" border="0" style="margin: 0 auto;">
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <div class="col-md-3">
                                                <asp:TextBox ID="TextBox_BUSCAR" runat="server" name="TextBox_BUSCAR" Width="220px"
                                                    CssClass="form-control input-md" ValidationGroup="gg" placeholder="Valor a buscar"></asp:TextBox>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <asp:Button ID="Button_BUSCAR" runat="server" Text="Buscar" CssClass='btn form-control btnCerSes fontBold'
                                            OnClick="Button_BUSCAR_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_BUSCAR"
                            ControlToValidate="TextBox_BUSCAR" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />Necesita digitar los datos a buscar."
                            ValidationGroup="BUSCAR_CLIENTE" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
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
            <div>
                <legend class="legFormClientes">
                    <div class="legForm fontBold">
                        <table width="100%">
                            <tr>
                                <td>
                                    Clientes
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
            <div>
                <asp:Panel ID="Panel_CONTROL_REGISTRO" runat="server">
                    <asp:Panel ID="Panel_CABEZA_REGISTRO" runat="server">
                        <table>
                            <tr>
                                <div>
                                    <h4>
                                        DATOS DE CONTROL</h4>
                                </div>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="Panel_CONTENIDO_REGISTRO" runat="server">
                        <table>
                            <tr>
                                <td>
                                    Informacion de registro
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox_FCH_CRE" runat="server" Enabled="False" ReadOnly="True"
                                        CssClass="form-control input-md" placeholder="Fecha registro"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox_HOR_CRE" runat="server" Enabled="False" ReadOnly="True"
                                        CssClass="form-control input-md" placeholder="Hora registro"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox_USU_CRE" runat="server" Enabled="False" ReadOnly="True"
                                        CssClass="form-control input-md" placeholder="Usuario registro"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Información de actualización
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox_FCH_MOD" runat="server" Enabled="False" ReadOnly="True"
                                        CssClass="form-control input-md" placeholder="Fecha actualización"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox_HOR_MOD" runat="server" Enabled="False" ReadOnly="True"
                                        CssClass="form-control input-md" placeholder="Hora actualización"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox_USU_MOD" runat="server" Enabled="False" ReadOnly="True"
                                        CssClass="form-control input-md" placeholder="Ultimo usuario actualizó"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Identificador
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox_COD_EMPRESA" runat="server" ReadOnly="True" CssClass="form-control input-md"
                                        placeholder="Código del cliente" ValidationGroup="COD_CLIENTE"></asp:TextBox>
                                </td>
                                <td colspan="3">
                                    <asp:DropDownList ID="DropDownList_ACTIVO" runat="server" AutoPostBack="True" CssClass="form-control placeholder"
                                        OnSelectedIndexChanged="DropDownList_ACTIVO_SelectedIndexChanged" ValidationGroup="NUEVOCLIENTE">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_ACTIVO"
                            ControlToValidate="DropDownList_ACTIVO" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El ESTADO de la empresa es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel_COD_EMPRESA" runat="server">
                    <!-- DropDownList_ACTIVO -->
                    <asp:Panel ID="Panel_HISTORIAL_ACT" runat="server">
                        <div>
                            Por qué?
                            <asp:Label ID="Label_TIPO_DE_ACTIVACION" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox_DESCRIPCION_HISTORIAL_ACT" runat="server" TextMode="MultiLine"
                                Height="50px" MaxLength="250" Width="760px" ValidationGroup="NUEVOCLIENTE" placeholder="Describa brevemente la causa del cambio de estado"></asp:TextBox>
                        </div>
                        <!-- TextBox_DESCRIPCION_HISTORIAL_ACT -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_DESCRIPCION_HISTORIAL_ACT"
                            ControlToValidate="TextBox_DESCRIPCION_HISTORIAL_ACT" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La DESCRIPCIÓN DEL CAMBIO DE ESTADO de la empresa es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                    </asp:Panel>
                </asp:Panel>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel_INFORMACION_CLIENTE" runat="server">
            <div>
                <h4>
                    DATOS BASICOS DEL CLIENTE</h4>
            </div>
            <div>
                <asp:HiddenField ID="HiddenField_RAZ_SOCIAL_ANTERIOR" runat="server" />
                <table>
                    <tr>
                        <td>
                            Fecha de Ingreso
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox_FCH_INGRESO" class="form-control input-md" onfocus="(this.type='date')"
                                CssClass="form-control input-md" runat="server" MaxLength="10" placeholder="Fecha de Ingreso"></asp:TextBox>
                        </td>
                        <td>
                            Nit
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox_NIT_EMPRESA" runat="server" name="TextBox_NIT_EMPRESA" MaxLength="15"
                                CssClass="form-control input-md" placeholder="Nit"></asp:TextBox>
                        </td>
                        <td>
                            Dv
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox_DIG_VER" runat="server" name="TextBox_DIG_VER" MaxLength="1"
                                CssClass="form-control input-md" placeholder="Dv"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            Razón social
                        </td>
                        <td colspan="3">
                            <asp:TextBox ID="TextBox_RAZ_SOCIAL" runat="server" MaxLength="60" name="TextBox_RAZ_SOCIAL"
                                CssClass="form-control input-md" placeholder="Razón social"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Dirección
                        </td>
                        <td colspan="3">
                            <asp:TextBox ID="TextBox_DIR_EMP" runat="server" MaxLength="40" name="TextBox_DIR_EMP"
                                CssClass="form-control input-md" placeholder="Dirección Empresa"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Regional
                        </td>
                        <td colspan="3">
                            <asp:DropDownList ID="DropDownList_REGIONAL" name="DropDownList_REGIONAL" runat="server"
                                AutoPostBack="True" CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_REGIONAL_SelectedIndexChanged"
                                ValidationGroup="NUEVOCLIENTE">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Departamento
                        </td>
                        <td colspan="3">
                            <asp:DropDownList ID="DropDownList_DEPARTAMENTO" name="DropDownList_DEPARTAMENTO"
                                runat="server" AutoPostBack="True" CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_DEPARTAMENTO_SelectedIndexChanged"
                                ValidationGroup="NUEVOCLIENTE">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ciudad
                        </td>
                        <td colspan="3">
                            <asp:DropDownList ID="DropDownList_CIUDAD" CssClass="form-control placeholder" name="DropDownList_CIUDAD"
                                runat="server" ValidationGroup="NUEVOCLIENTE" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Teléfonos
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox_TEL_EMP" runat="server" name="TextBox_TEL_EMP" CssClass="form-control input-md"
                                placeholder="Teléfono 1" MaxLength="30"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox_TEL_EMP_1" runat="server" name="TextBox_TEL_EMP_1" CssClass="form-control input-md"
                                placeholder="Teléfono 2" MaxLength="30"></asp:TextBox>
                        </td>
                        <td colspan="3">
                            <asp:TextBox ID="TextBox_CEL_EMP" runat="server" name="TextBox_CEL_EMP" CssClass="form-control input-md"
                                placeholder="Celular" MaxLength="15"></asp:TextBox>
                        </td>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TEL_EMP" ControlToValidate="TextBox_TEL_EMP"
                            Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El TELEFONO DEL CLIENTE es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                    </tr>
                    <tr>
                        <td>
                            Representante Legal
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox_NOM_REP_LEGAL" runat="server" MaxLength="40" CssClass="form-control input-md"
                                placeholder="Nombre" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE" runat="server" CssClass="form-control placeholder"
                                ValidationGroup="NUEVOCLIENTE" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox_CC_REP_LEGAL" runat="server" MaxLength="15" CssClass="form-control input-md"
                                placeholder="Número documento" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:DropDownList ID="DropDownList_DEP_CC_REP_LEGAL" runat="server" Width="250px"
                                CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE" AutoPostBack="True"
                                OnSelectedIndexChanged="DropDownList_DEP_CC_REP_LEGAL_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList_CIU_CC_REP_LEGAL" runat="server" Width="250px"
                                CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <%-- TextBox_FCH_INGRESO --%>
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_FCH_INGRESO"
                    ControlToValidate="TextBox_FCH_INGRESO" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La FECHA DE INGRESO es requerida."
                    ValidationGroup="NUEVOCLIENTE" />
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
        <asp:Panel ID="Panel_UBICACION" runat="server">
        </asp:Panel>
        <asp:Panel ID="Panel_ACTIVIDAD_COBERTURA" runat="server">
            <div>
                <h5>
                    ACTIVIDAD ECONOMICA DEL CLIENTE</h5>
            </div>
            <div>
                <table>
                    <tr>
                        <td>
                            Sección
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList_NOMBRE_SECCION" runat="server" AutoPostBack="True"
                                Width="700px" CssClass="form-control placeholder" name="DropDownList_NOMBRE_SECCION"
                                OnSelectedIndexChanged="DropDownList_NOMBRE_SECCION_SelectedIndexChanged" ValidationGroup="NUEVOCLIENTE">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            División
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList_DIVISION" runat="server" AutoPostBack="True" CssClass="form-control placeholder"
                                Width="700px" OnSelectedIndexChanged="DropDownList_DIVISION_SelectedIndexChanged"
                                ValidationGroup="NUEVOCLIENTE">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Clase
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList_CLASE" name="DropDownList_CLASE" runat="server"
                                Width="700px" AutoPostBack="True" CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_CLASE_SelectedIndexChanged"
                                ValidationGroup="NUEVOCLIENTE">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Actividad
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList_ACTIVIDAD" name="DropDownList_ACTIVIDAD" runat="server"
                                Width="700px" CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </div>
            <!-- DropDownList_ACTIVIDAD -->
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_ACTIVIDAD"
                ControlToValidate="DropDownList_ACTIVIDAD" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La ACTIVIDAD ECONÓMICA DEL CLIENTE es requerida."
                ValidationGroup="NUEVOCLIENTE" />
            <!-- TextBox_DES_ACTIVIDAD -->
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_DES_ACTIVIDAD"
                ControlToValidate="TextBox_DES_ACTIVIDAD" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La DESCRIPCIÓN DE LA ACTIVIDAD ECONÓMICA es requerida."
                ValidationGroup="NUEVOCLIENTE" />
        </asp:Panel>
        <asp:TextBox ID="TextBox_DES_ACTIVIDAD" runat="server" TextMode="MultiLine" Height="50px"
            CssClass="form-control input-md" placeholder="Realice una descripción mas clara de la actividad económica del cliente"
            Width="750px" MaxLength="50" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
        <asp:Panel ID="Panel_SELECCIONAR_RIESGO" runat="server">
            <table>
                <tr>
                    <td>
                        Porcentaje de riesgos
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList_LISTA_RIESGOS" runat="server" AutoPostBack="True"
                            Width="260px" CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_LISTA_RIESGOS_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>
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
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel_COBERTURA" runat="server">
            <div class="div_espaciador">
            </div>
            <div>
                <h5>
                    CIUDADES DE ATENCION AL CLIENTE</h5>
            </div>
            <div>
                <asp:Panel ID="Panel_COBERTURA_DROPS" runat="server">
                    <table>
                        <tr>
                            <td>
                                Regional
                            </td>
                            <td colspan="5">
                                <asp:DropDownList ID="DropDownList_REGIONAL_COVERTURA" runat="server" Width="200px"
                                    AutoPostBack="True" OnSelectedIndexChanged="DropDownList_REGIONAL_COVERTURA_SelectedIndexChanged"
                                    CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                                </asp:DropDownList>
                            </td>
                            <td>
                                Departamento
                            </td>
                            <td colspan="5">
                                <asp:DropDownList ID="DropDownList_DEPARTAMNETO_COVERTURA" runat="server" Width="200px"
                                    AutoPostBack="True" OnSelectedIndexChanged="DropDownList_DEPARTAMNETO_COVERTURA_SelectedIndexChanged"
                                    CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                                </asp:DropDownList>
                            </td>
                            <td>
                                Ciudad
                            </td>
                            <td colspan="5">
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
                <table>
                    <tr>
                        <td>
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
        <asp:Panel ID="Panel_DATOS_DE_FACTURACION" runat="server">
            <div>
                <h5>
                    TIPO DE EMPRESA</h5>
            </div>
            <div>
                <table>
                    <tr>
                        <td>
                            Estatal
                        </td>
                        <td>
                            Regimén común(IVA)
                        </td>
                        <td>
                            Presencia Nacional
                        </td>
                        <td>
                            <asp:Label ID="Label_TIPO_EMPRESA" runat="server" Text="Tipo Empresa (AIU)"></asp:Label>
                        </td>
                        <td>
                            No. Empleados (Proyección)
                        </td>
                        <td>
                            No. Empleados (Activos)
                        </td>
                        <tr>
                            <td>
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
                            <td>
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
        <asp:Panel ID="Panel_ALIANZA_GRUPO_EMPRESARIAL" runat="server" Visible="false">
            <table>
                <tr>
                    <td>
                        <div>
                            <table>
                                <tr>
                                    <td>
                                        Grupo
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
                                    <td>
                                        Alianza
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
        <asp:Panel ID="Panel_NEGOCIO" runat="server" Visible="false">
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
                                        <td>
                                            Departamento
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
                                        <td>
                                            Ciudad
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
    <div id="main" class="divflotanteizquierdarelativo2">
        <ul id="navigationMenu">
            <li><a class="search" href="#"><span>
                <asp:TextBox ID="txtSearch" CssClass="icon-large icon-search btnSearch input-md fontRegular"
                    runat="server" placeholder="Buscar"></asp:TextBox>
            </span></a></li>
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
    </div>
</asp:Content>
