<%@ Page Title="" Language="C#" MasterPageFile="/UI/Master/Proceso.master" AutoEventWireup="true"
    CodeFile="clientes.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<link href="../css/Site.css" rel="stylesheet" type="text/css"  />
    --%>
    <script src="../../Scripts/jquery-1.11.3.js" type="text/javascript"></script>
    <script src="../../BootStrapV3.3.4/js/bootstrap.js" type="text/javascript"></script>
    <link href="../../BootStrapV3.3.4/css/bootstrapValidator.css" rel="stylesheet" type="text/css" />
    <script src="../../BootStrapV3.3.4/js/bootstrapValidator.js" type="text/javascript"></script>
    <script src="../../Scripts/validatorForm.js" type="text/javascript"></script>
    <script src="../../BootStrapV3.3.4/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
    <link href="../../css/SLogin.css" rel="stylesheet" type="text/css" />
    <%--<link href="../../Iconos/style.css" rel="stylesheet" type="text/css" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server"
    ClientIDMode="Static">
    <div class="DId" style="border-bottom: 1px solid #003366;">
        <h3 class="text-left fontRegular">
            Búsqueda y Creación de Clientes</h3>
    </div>
    <asp:Panel ID="Panel_FORM_BOTONES" runat="server">
        <div style="margin-top: 1%" class="div_espaciador">
        </div>
        <table class="tabla_contiene_botones" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top">
                    <legend>
                        <div style="width: 220px" class="legForm fontItalic">
                            Botones de acción</div>
                    </legend>
                    <div class="div_contenido_groupbox">
                        <table cellpadding="0" cellspacing="0" border="0" style="margin: 0 auto;">
                            <tr>
                                <td rowspan="0">
                                    <%--                                    <asp:Button ID="Button_NUEVO" runat="server" Text="Nuevo" CssClass="margin_botones"
                                        OnClick="Button_NUEVO_Click" ValidationGroup="NUEVO_CLIENTE" />--%>
                                    <asp:Button ID="Button_NUEVO" Style="width: 220px" runat="server" Text="Nuevo" CssClass='btn form-control btnCerSes fontBold'
                                        OnClick="Button_NUEVO_Click" />
                                </td>
                                <td rowspan="0">
                                    <%--                                    <asp:Button ID="Button_MODIFICAR" runat="server" Text="Actualizar" CssClass="margin_botones"
                                        OnClick="Button_MODIFICAR_Click" />--%>
                                    <asp:Button ID="Button_MODIFICAR" runat="server" Text="Actualizar" CssClass='btn form-control btnCerSes fontBold'
                                        OnClick="Button_MODIFICAR_Click" />
                                </td>
                                <td rowspan="0">
                                    <%--                                    <asp:Button ID="Button_GUARDAR" runat="server" Text="Guardar" CssClass="margin_botones"
                                        OnClick="Button_GUARDAR_Click" ValidationGroup="NUEVOCLIENTE" />--%>
                                    <asp:Button ID="Button_GUARDAR" runat="server" Text="Guardar" CssClass='btn form-control btnCerSes fontBold'
                                        OnClick="Button_GUARDAR_Click" />
                                </td>
                                <td rowspan="0">
                                    <%--                                    <asp:Button ID="Button_CANCELAR" runat="server" Text="Cancelar" CssClass="margin_botones"
                                        ValidationGroup="CANCELAR" OnClick="Button_CANCELAR_Click" />--%>
                                    <asp:Button ID="Button_CANCELAR" runat="server" Text="Cancelar" CssClass='btn form-control btnCerSes fontBold'
                                        OnClick="Button_CANCELAR_Click" />
                                </td>
                                <td rowspan="0">
                                    <%--                                    <input class="margin_botones" id="Button_CERRAR" onclick="window.close();" type="button"
                                        value="Salir" />--%>
                                    <%--                                    <asp:Button ID="Button_CERRAR" ValidationGroup="gghjg" CausesValidation="false" runat="server"
                                        Text="Salir" CssClass='btn form-control btnCerSes fontBold' />--%>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td style="margin-left: 2%" valign="top">
                    <%--                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                        <ContentTemplate>
                    --%>
                    <div style="margin-left: 4%" class="div_cabeza_groupbox">
                        <legend>
                            <div class="legForm fontItalic">
                                Sección de busqueda</div>
                        </legend>
                    </div>
                    <div class="div_contenido_groupbox">
                        <table cellpadding="0" cellspacing="0" border="0" style="margin: 0 auto;">
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <div class="col-md-3">
                                            <asp:TextBox ID="TextBox_BUSCAR" runat="server" name="TextBox_BUSCAR" Width="220px"
                                                CssClass="form-control input-md" ValidationGroup="gg" placeholder="Valor a buscar"></asp:TextBox>
                                        </div>
                                    </div>
                                    <%--                                    <asp:TextBox ID="TextBox_BUSCAR" runat="server" Width="220px" ValidationGroup="BUSCAR_CLIENTE"
                                        CssClass="margin_botones"></asp:TextBox>--%>
                                </td>
                                <td>
                                    <%--                                   <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button_BUSCAR_Click"
                                        ValidationGroup="BUSCAR_CLIENTE" CssClass="margin_botones" />
                                    --%>
                                    <asp:Button ID="Button_BUSCAR" runat="server" Text="Buscar" CssClass='btn form-control btnCerSes fontBold'
                                        OnClick="Button_BUSCAR_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <!-- DropDownList_BUSCAR -->
                    <%--                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_BUSCAR"
                                    ControlToValidate="DropDownList_BUSCAR"
                                    Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />Debe seleccionar el campo sobre el cual desea realizar la busqueda." 
                                ValidationGroup="BUSCAR_CLIENTE" />
                    --%>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_BUSCAR"
                        ControlToValidate="TextBox_BUSCAR" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />Necesita digitar los datos a buscar."
                        ValidationGroup="BUSCAR_CLIENTE" />
                    <%--                        </ContentTemplate>
                        <Triggers>
                            <asp:PostBackTrigger ControlID="Button_BUSCAR"/>
                        </Triggers>
                    </asp:UpdatePanel>
                    --%>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel_RESULTADOS_GRID" runat="server">
        <div class="div_espaciador">
        </div>
        <div class=" div_contenedor_formulario">
            <div class="div_cabeza_groupbox">
                Resultados de la busqueda
            </div>
            <div class="div_contenido_groupbox">
                <%--                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                    <ContentTemplate>
                --%>
                <div class="div_contenedor_grilla_resultados">
                    <div class="grid_seleccionar_registros">
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
                <%--                    </ContentTemplate>
                    <Triggers>
                        <asp:PostBackTrigger ControlID="GridView_RESULTADOS_BUSQUEDA" />
                    </Triggers>
                </asp:UpdatePanel>
                --%>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel_FORMULARIO" runat="server">
        <div class="div_espaciador">
        </div>
        <div class="div_contenedor_formulario">
            <asp:HiddenField ID="HiddenField_ID_EMPRESA" runat="server" />
            <asp:HiddenField ID="HiddenField_ESTADO_EMPRESA" runat="server" />
            <div class="div_cabeza_groupbox">
                <legend>
                    <div class="centered legForm fontItalic">
                        Manejo de Empresas</div>
                </legend>
            </div>
            <div class="div_contenido_groupbox">
                <asp:Panel ID="Panel_CONTROL_REGISTRO" runat="server">
                    <asp:Panel ID="Panel_CABEZA_REGISTRO" runat="server" CssClass="div_cabeza_groupbox_gris">
                        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">
                            <tr>
                                <td style="width: 87%;">
                                    Control de registro
                                </td>
                                <td>
                                    <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">
                                        <tr>
                                            <td style="font-size: 80%">
                                                <asp:Label ID="Label_REGISTRO" runat="server">(Mostrar detalles...)</asp:Label>
                                            </td>
                                            <td>
                                                <asp:Image ID="Image_REGISTRO" runat="server" CssClass="img_cabecera_hoja" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="Panel_CONTENIDO_REGISTRO" runat="server" CssClass="div_contenido_groupbox_gris">
                        <table class="table_control_registros">
                            <tr>
                                <td class="td_izq">
                                    <asp:Label ID="Label_FCH_CRE" runat="server" Text="Fecha de Creación"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:TextBox ID="TextBox_FCH_CRE" runat="server" Enabled="False" ReadOnly="True"
                                        ValidationGroup="REGISTRO_CONTROL"></asp:TextBox>
                                </td>
                                <td class="td_izq">
                                    <asp:Label ID="Label_HOR_CRE" runat="server" Text="Hora de Creación"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:TextBox ID="TextBox_HOR_CRE" runat="server" Enabled="False" ReadOnly="True"
                                        ValidationGroup="REGISTRO_CONTROL"></asp:TextBox>
                                </td>
                                <td class="td_izq">
                                    <asp:Label ID="Label_USU_CRE" runat="server" Text="Usuario"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:TextBox ID="TextBox_USU_CRE" runat="server" Enabled="False" ReadOnly="True"
                                        ValidationGroup="REGISTRO_CONTROL"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_izq">
                                    <asp:Label ID="Label_FCH_MOD" runat="server" Text="Fecha de Modificación"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:TextBox ID="TextBox_FCH_MOD" runat="server" Enabled="False" ReadOnly="True"
                                        ValidationGroup="REGISTRO_CONTROL"></asp:TextBox>
                                </td>
                                <td class="td_izq">
                                    <asp:Label ID="Label_HOR_MOD" runat="server" Text="Hora de Modificación"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:TextBox ID="TextBox_HOR_MOD" runat="server" Enabled="False" ReadOnly="True"
                                        ValidationGroup="REGISTRO_CONTROL"></asp:TextBox>
                                </td>
                                <td class="td_izq">
                                    <asp:Label ID="Label_USU_MOD" runat="server" Text="Usuario"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:TextBox ID="TextBox_USU_MOD" runat="server" Enabled="False" ReadOnly="True"
                                        ValidationGroup="REGISTRO_CONTROL"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel_COD_EMPRESA" runat="server">
                    <div class="div_espaciador">
                    </div>
                    <div class="div_cabeza_groupbox_gris">
                        Código y estado del cliente
                    </div>
                    <div class="div_contenido_groupbox_gris">
                        <%--                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                            <ContentTemplate>
                        --%>
                        <table class="table_control_registros">
                            <tr>
                                <td class="td_izq">
                                    <asp:Label ID="Label_COD_EMPRESA" runat="server" Text="Código de Cliente"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:TextBox ID="TextBox_COD_EMPRESA" runat="server" ReadOnly="True" ValidationGroup="COD_CLIENTE"></asp:TextBox>
                                </td>
                                <td class="td_izq">
                                    <asp:Label ID="Label_ACTIVO" runat="server" Text="Estado"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:DropDownList ID="DropDownList_ACTIVO" runat="server" Width="100px" AutoPostBack="True"
                                        OnSelectedIndexChanged="DropDownList_ACTIVO_SelectedIndexChanged" ValidationGroup="NUEVOCLIENTE">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                        <!-- DropDownList_ACTIVO -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_ACTIVO"
                            ControlToValidate="DropDownList_ACTIVO" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El ESTADO de la empresa es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%--                                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_DropDownList_ACTIVO"
                                    TargetControlID="RequiredFieldValidator_DropDownList_ACTIVO" HighlightCssClass="validatorCalloutHighlight" />
                        --%>
                        <div class="div_espaciador">
                        </div>
                        <asp:Panel ID="Panel_HISTORIAL_ACT" runat="server">
                            <div class="div_historial_activaciones">
                                <asp:Label ID="Label_DESCRIPCION_HISTORIAL_ACT" runat="server" Text="Descripción del cambio de estado: "></asp:Label>
                                <asp:Label ID="Label_TIPO_DE_ACTIVACION" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox_DESCRIPCION_HISTORIAL_ACT" runat="server" TextMode="MultiLine"
                                    Height="80px" MaxLength="250" Width="500px" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                            </div>
                            <!-- TextBox_DESCRIPCION_HISTORIAL_ACT -->
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_DESCRIPCION_HISTORIAL_ACT"
                                ControlToValidate="TextBox_DESCRIPCION_HISTORIAL_ACT" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La DESCRIPCIÓN DEL CAMBIO DE ESTADO de la empresa es requerido."
                                ValidationGroup="NUEVOCLIENTE" />
                            <%--                                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_TextBox_DESCRIPCION_HISTORIAL_ACT"
                                        TargetControlID="RequiredFieldValidator_TextBox_DESCRIPCION_HISTORIAL_ACT" HighlightCssClass="validatorCalloutHighlight" />
                            --%>
                        </asp:Panel>
                        <%--                            </ContentTemplate>
                        </asp:UpdatePanel>
                        --%>
                    </div>
                </asp:Panel>
                <asp:Panel ID="Panel_INFORMACION_CLIENTE" runat="server">
                    <div class="div_espaciador">
                    </div>
                    <div class="div_cabeza_groupbox_gris">
                        Información
                    </div>
                    <div class="div_contenido_groupbox_gris">
                        <asp:HiddenField ID="HiddenField_RAZ_SOCIAL_ANTERIOR" runat="server" />
                        <table class="table_control_registros">
                            <tr>
                                <td class="td_izq">
                                    <label class="col-md-50 control-label" for="fechaingreso">
                                        Fecha de Ingreso</label>
                                </td>
                                <td class="td_der">
                                    <%--                                    <asp:TextBox ID="TextBox_FCH_INGRESO" runat="server" Width="110px" MaxLength="10"
                                        ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                                    --%>
                                    <div class="col-md-200">
                                        <asp:TextBox ID="TextBox_FCH_INGRESO" class="form-control input-md" onfocus="(this.type='date')"
                                            runat="server" MaxLength="10" placeholder="Fecha de ingreso"></asp:TextBox>
                                    </div>
                                    <%--                                    <asp:TextBox ID="TextBox_FCH_INGRESO" runat="server" Width="110px" name="TextBox_FCH_INGRESO" CssClass="form-control input-md"
                                        placeholder="Fecha Ingreso" required></asp:TextBox>
                                    --%>
                                    <%--                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender_TextBox_FCH_INGRESO" runat="server"
                                        TargetControlID="TextBox_FCH_INGRESO" Format="dd/MM/yyyy" />
                                    --%>
                                </td>
                                <td class="td_izq">
                                    <label class="col-md-10 control-label" for="fechaingreso">
                                        NIT</label>
                                </td>
                                <td class="td_der">
                                    <%--                                    <asp:TextBox ID="TextBox_NIT_EMPRESA" runat="server" MaxLength="15" ValidationGroup="NUEVOCLIENTE"
                                        Width="120px"></asp:TextBox>--%>
                                    <div class="col-md-120">
                                        <asp:TextBox ID="TextBox_NIT_EMPRESA" runat="server" name="TextBox_NIT_EMPRESA" MaxLength="15"
                                            CssClass="form-control input-md" placeholder="Nit empresa"></asp:TextBox>
                                    </div>
                                    <%--                                    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender_NIT_EMPRESA" runat="server"
                                        TargetControlID="TextBox_NIT_EMPRESA" FilterType="Numbers" />
                                    --%>
                                </td>
                                <td class="td_izq">
                                    <label class="col-md-10 control-label" for="fechaingreso">
                                        DV</label>
                                </td>
                                <td class="td_der">
                                    <%--                                    <asp:TextBox ID="TextBox_DIG_VER" runat="server" Width="50px" MaxLength="1" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>--%>
                                    <div class="col-md-50">
                                        <asp:TextBox ID="TextBox_DIG_VER" runat="server" name="TextBox_DIG_VER" MaxLength="1"
                                            CssClass="form-control input-md" placeholder="Dv"></asp:TextBox>
                                    </div>
                                    <%--                                    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender_DIG_VER" runat="server"
                                        TargetControlID="TextBox_DIG_VER" FilterType="Numbers" />
                                    --%>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_izq">
                                    <label class="col-md-40 control-label" for="fechaingreso">
                                        Razón social</label>
                                </td>
                                <td colspan="5" class="td_der">
                                    <%--                                    <asp:TextBox ID="TextBox_RAZ_SOCIAL" runat="server" Width="380px" MaxLength="60"
                                        ValidationGroup="NUEVOCLIENTE"></asp:TextBox>--%>
                                    <div class="col-md-380">
                                        <asp:TextBox ID="TextBox_RAZ_SOCIAL" runat="server" MaxLength="60" name="TextBox_RAZ_SOCIAL"
                                            CssClass="form-control input-md" placeholder="Razón social"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_izq">
                                    <label class="col-md-40 control-label" for="fechaingreso">
                                        Dirección</label>
                                </td>
                                <td colspan="5" class="td_der">
                                    <%--                                    <asp:TextBox ID="TextBox_DIR_EMP" runat="server" Width="380px" MaxLength="40" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>--%>
                                    <div class="col-md-380">
                                        <asp:TextBox ID="TextBox_DIR_EMP" runat="server" MaxLength="40" name="TextBox_DIR_EMP"
                                            CssClass="form-control input-md" placeholder="Dirección Empresa"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <%-- TextBox_FCH_INGRESO --%>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_FCH_INGRESO"
                            ControlToValidate="TextBox_FCH_INGRESO" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La FECHA DE INGRESO es requerida."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%--                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_FCH_INGRESO"
                            TargetControlID="RequiredFieldValidator_FCH_INGRESO" HighlightCssClass="validatorCalloutHighlight" />
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender_TextBox_FCH_INGRESO"
                            runat="server" TargetControlID="TextBox_FCH_INGRESO" FilterType="Custom,Numbers"
                            ValidChars="/">
                        </ajaxToolkit:FilteredTextBoxExtender>
                        --%>
                        <%-- TextBox_NIT_EMPRESA --%>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_NIT_EMPRESA"
                            ControlToValidate="TextBox_NIT_EMPRESA" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El NIT DEL CLIENTE es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%--                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_NIT_EMPRESA"
                            TargetControlID="RequiredFieldValidator_NIT_EMPRESA" HighlightCssClass="validatorCalloutHighlight" />
                        --%>
                        <%-- TextBox_DIG_VER --%>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DIG_VER" ControlToValidate="TextBox_DIG_VER"
                            Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El DIGITO DE VERIFICACIÓN DEL NIT es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%--                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_DIG_VER"
                            TargetControlID="RequiredFieldValidator_DIG_VER" HighlightCssClass="validatorCalloutHighlight" />
                        --%>
                        <%-- TextBox_RAZ_SOCIAL --%>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_RAZ_SOCIAL"
                            ControlToValidate="TextBox_RAZ_SOCIAL" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La RAZÓN SOCIAL DEL CLIENTE es requerida."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%--                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_RAZ_SOCIAL"
                            TargetControlID="RequiredFieldValidator_RAZ_SOCIAL" HighlightCssClass="validatorCalloutHighlight" />
                        --%>
                        <!-- TextBox_DIR_EMP -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DIR_EMP" ControlToValidate="TextBox_DIR_EMP"
                            Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La DIRECCIÓN DEL CLIENTE es requerida."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%--                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_DIR_EMP"
                            TargetControlID="RequiredFieldValidator_DIR_EMP" HighlightCssClass="validatorCalloutHighlight" />
                        --%>
                    </div>
                </asp:Panel>
                <asp:Panel ID="Panel_UBICACION" runat="server">
                    <div class="div_espaciador">
                    </div>
                    <table class="table_form_dos_columnas" width="100%">
                        <tr>
                            <td valign="top" style="width: 50%">
                                <div class="div_cabeza_groupbox_gris">
                                    Ubicación Principal del Cliente
                                </div>
                                <div class="div_contenido_groupbox_gris">
                                    <%--                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                    --%>
                                    <table class="table_control_registros">
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_REGIONAL" CssClass="textoLabels" runat="server" Text="Regional"></asp:Label>
                                            </td>
                                            <td colspan="5" class="td_der">
                                                <%--                                                <asp:DropDownList ID="DropDownList_REGIONAL" runat="server" Width="260px" AutoPostBack="True"
                                                    OnSelectedIndexChanged="DropDownList_REGIONAL_SelectedIndexChanged" ValidationGroup="NUEVOCLIENTE">
                                                </asp:DropDownList>
                                                --%>
                                                <div class="col-md-260">
                                                    <asp:DropDownList ID="DropDownList_REGIONAL" name="DropDownList_REGIONAL" runat="server"
                                                        AutoPostBack="True" CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_REGIONAL_SelectedIndexChanged"
                                                        ValidationGroup="NUEVOCLIENTE">
                                                    </asp:DropDownList>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_DEPARTAMENTO" runat="server" Text="Departamento"></asp:Label>
                                            </td>
                                            <td colspan="5" class="td_der">
                                                <%--                                                <asp:DropDownList ID="DropDownList_DEPARTAMENTO" runat="server" Width="260px" AutoPostBack="True"
                                                    OnSelectedIndexChanged="DropDownList_DEPARTAMENTO_SelectedIndexChanged" ValidationGroup="NUEVOCLIENTE">
                                                </asp:DropDownList>--%>
                                                <div class="col-md-260">
                                                    <asp:DropDownList ID="DropDownList_DEPARTAMENTO" name="DropDownList_DEPARTAMENTO"
                                                        runat="server" AutoPostBack="True" CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_DEPARTAMENTO_SelectedIndexChanged"
                                                        ValidationGroup="NUEVOCLIENTE">
                                                    </asp:DropDownList>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_CIUDAD" runat="server" Text="Ciudad"></asp:Label>
                                            </td>
                                            <td colspan="5" class="td_der">
                                                <%--                                                <asp:DropDownList ID="DropDownList_CIUDAD" runat="server" Width="260px" ValidationGroup="NUEVOCLIENTE">
                                                </asp:DropDownList>--%>
                                                <div class="col-md-260">
                                                    <asp:DropDownList ID="DropDownList_CIUDAD" CssClass="form-control placeholder" name="DropDownList_CIUDAD"
                                                        runat="server" ValidationGroup="NUEVOCLIENTE">
                                                    </asp:DropDownList>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- DropDownList_CIUDAD -->
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_CIUDAD" ControlToValidate="DropDownList_CIUDAD"
                                        Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La CIUDAD DEL CLIENTE es requerida."
                                        ValidationGroup="NUEVOCLIENTE" />
                                    <%--                                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_CIUDAD"
                                                TargetControlID="RequiredFieldValidator_CIUDAD" HighlightCssClass="validatorCalloutHighlight" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    --%>
                                </div>
                            </td>
                            <td valign="top" style="width: 50%">
                                <div class="div_cabeza_groupbox_gris">
                                    Teléfonos Principales del Cliente
                                </div>
                                <div class="div_contenido_groupbox_gris">
                                    <table class="table_control_registros">
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_TEL_EMP" runat="server" Text="Teléfono 1"></asp:Label>
                                            </td>
                                            <td colspan="5" class="td_der">
                                                <%--                                                <asp:TextBox ID="TextBox_TEL_EMP" runat="server" Width="260px" MaxLength="30" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                                                --%>
                                                <div class="col-md-260">
                                                    <asp:TextBox ID="TextBox_TEL_EMP" runat="server" name="TextBox_TEL_EMP" CssClass="form-control input-md"
                                                        placeholder="Digite el teléfono" MaxLength="30"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_TEL_EMP_1" runat="server" Text="Teléfono 2"></asp:Label>
                                            </td>
                                            <td colspan="5" class="td_der">
                                                <%--<asp:TextBox ID="TextBox_TEL_EMP_1" runat="server" Width="260px" MaxLength="30" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>--%>
                                                <div class="col-md-260">
                                                    <asp:TextBox ID="TextBox_TEL_EMP_1" runat="server" name="TextBox_TEL_EMP_1" CssClass="form-control input-md"
                                                        placeholder="Digite el teléfono" MaxLength="30"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_CEL_EMP" runat="server" Text="Celular"></asp:Label>
                                            </td>
                                            <td colspan="5" class="td_der">
                                                <%--                                                <asp:TextBox ID="TextBox_CEL_EMP" runat="server" Width="260px" ValidationGroup="NUEVOCLIENTE"
                                                    MaxLength="15"></asp:TextBox>--%>
                                                <div class="col-md-260">
                                                    <asp:TextBox ID="TextBox_CEL_EMP" runat="server" name="TextBox_CEL_EMP" CssClass="form-control input-md"
                                                        placeholder="Digite el celular" MaxLength="15"></asp:TextBox>
                                                </div>
                                                <%--                                                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender_CEL_EMP" runat="server"
                                                    TargetControlID="TextBox_CEL_EMP" FilterType="Numbers" />
                                                --%>
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- TextBox_TEL_EMP -->
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TEL_EMP" ControlToValidate="TextBox_TEL_EMP"
                                        Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El TELEFONO DEL CLIENTE es requerido."
                                        ValidationGroup="NUEVOCLIENTE" />
                                    <%--                                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_TEL_EMP"
                                        TargetControlID="RequiredFieldValidator_TEL_EMP" HighlightCssClass="validatorCalloutHighlight" />
                                    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender_TextBox_TEL_EMP"
                                        runat="server" TargetControlID="TextBox_TEL_EMP" FilterType="Numbers,Custom"
                                        ValidChars="()[]{}- extEXT" />
                                    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender_TextBox_TEL_EMP_1"
                                        runat="server" TargetControlID="TextBox_TEL_EMP_1" FilterType="Numbers,Custom"
                                        ValidChars="()[]{}- extEXT" />
                                    --%>
                                </div>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel_ACTIVIDAD_COBERTURA" runat="server">
                    <div class="div_espaciador">
                    </div>
                    <table class="table_form_dos_columnas" width="100%">
                        <tr>
                            <td valign="top">
                                <div class="div_cabeza_groupbox_gris">
                                    Actividad Económica y Riegos
                                </div>
                                <div class="div_contenido_groupbox_gris">
                                    <%--                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                    --%>
                                    <table class="table_control_registros">
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_NOMBRE_SECCION" runat="server" Text="Sección"></asp:Label>
                                            </td>
                                            <td class="td_der">
                                                <%--                                                <asp:DropDownList ID="DropDownList_NOMBRE_SECCION" runat="server" Width="650px" AutoPostBack="True"
                                                    OnSelectedIndexChanged="DropDownList_NOMBRE_SECCION_SelectedIndexChanged" ValidationGroup="NUEVOCLIENTE">
                                                </asp:DropDownList>--%>
                                                <div class="col-md-650">
                                                    <asp:DropDownList ID="DropDownList_NOMBRE_SECCION" runat="server" AutoPostBack="True"
                                                        CssClass="form-control placeholder" name="DropDownList_NOMBRE_SECCION" OnSelectedIndexChanged="DropDownList_NOMBRE_SECCION_SelectedIndexChanged"
                                                        ValidationGroup="NUEVOCLIENTE">
                                                    </asp:DropDownList>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_NOMBRE_DIVISION" runat="server" Text="División"></asp:Label>
                                            </td>
                                            <td class="td_der">
                                                <%--                                                <asp:DropDownList ID="DropDownList_DIVISION" runat="server" Width="650px" AutoPostBack="True"
                                                    OnSelectedIndexChanged="DropDownList_DIVISION_SelectedIndexChanged" ValidationGroup="NUEVOCLIENTE">
                                                </asp:DropDownList>--%>
                                                <div class="col-md-650">
                                                    <asp:DropDownList ID="DropDownList_DIVISION" runat="server" AutoPostBack="True" CssClass="form-control placeholder"
                                                        OnSelectedIndexChanged="DropDownList_DIVISION_SelectedIndexChanged" ValidationGroup="NUEVOCLIENTE">
                                                    </asp:DropDownList>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_NOMBRE_CLASE" runat="server" Text="Clase"></asp:Label>
                                            </td>
                                            <td class="td_der">
                                                <%--                                                <asp:DropDownList ID="DropDownList_CLASE" runat="server" Width="650px" AutoPostBack="True"
                                                    OnSelectedIndexChanged="DropDownList_CLASE_SelectedIndexChanged" ValidationGroup="NUEVOCLIENTE">
                                                </asp:DropDownList>
                                                --%>
                                                <div class="col-md-650">
                                                    <asp:DropDownList ID="DropDownList_CLASE" name="DropDownList_CLASE" runat="server"
                                                        AutoPostBack="True" CssClass="form-control placeholder" OnSelectedIndexChanged="DropDownList_CLASE_SelectedIndexChanged"
                                                        ValidationGroup="NUEVOCLIENTE">
                                                    </asp:DropDownList>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_ACTIVIDAD" runat="server" Text="Actividad"></asp:Label>
                                            </td>
                                            <td class="td_der">
                                                <%--                                                <asp:DropDownList ID="DropDownList_ACTIVIDAD" runat="server" Width="650px" ValidationGroup="NUEVOCLIENTE">
                                                </asp:DropDownList>
                                                --%>
                                                <div class="col-md-650">
                                                    <asp:DropDownList ID="DropDownList_ACTIVIDAD" name="DropDownList_ACTIVIDAD" runat="server"
                                                        CssClass="form-control placeholder" ValidationGroup="NUEVOCLIENTE">
                                                    </asp:DropDownList>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- DropDownList_ACTIVIDAD -->
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_ACTIVIDAD"
                                        ControlToValidate="DropDownList_ACTIVIDAD" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La ACTIVIDAD ECONÓMICA DEL CLIENTE es requerida."
                                        ValidationGroup="NUEVOCLIENTE" />
                                    <%--                                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_ACTIVIDAD"
                                                TargetControlID="RequiredFieldValidator_ACTIVIDAD" HighlightCssClass="validatorCalloutHighlight" />
                                    --%>
                                    <div class="div_espaciador">
                                    </div>
                                    <table class="table_control_registros" width="100%">
                                        <tr>
                                            <td valign="top" style="width: 65%;">
                                                <div class="div_cabeza_groupbox_gris">
                                                    Descripción Actividad Económica
                                                </div>
                                                <div class="div_contenido_groupbox_gris">
                                                    <asp:TextBox ID="TextBox_DES_ACTIVIDAD" runat="server" TextMode="MultiLine" Height="100px"
                                                        Width="520px" MaxLength="50" ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                                                </div>
                                                <!-- TextBox_DES_ACTIVIDAD -->
                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_DES_ACTIVIDAD"
                                                    ControlToValidate="TextBox_DES_ACTIVIDAD" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La DESCRIPCIÓN DE LA ACTIVIDAD ECONÓMICA es requerida."
                                                    ValidationGroup="NUEVOCLIENTE" />
                                                <%--                                                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_TextBox_DES_ACTIVIDAD"
                                                            TargetControlID="RequiredFieldValidator_TextBox_DES_ACTIVIDAD" HighlightCssClass="validatorCalloutHighlight" />
                                                --%>
                                            </td>
                                            <td valign="top" style="width: 35%;">
                                                <div class="div_cabeza_groupbox_gris">
                                                    Riesgos de Referencia
                                                </div>
                                                <div class="div_contenido_groupbox_gris">
                                                    <%--                                                            <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                                                                <ContentTemplate>
                                                    --%>
                                                    <asp:Panel ID="Panel_SELECCIONAR_RIESGO" runat="server">
                                                        <table class="table_control_registros">
                                                            <tr>
                                                                <td class="td_izq">
                                                                    Riesgo
                                                                </td>
                                                                <td class="td_der">
                                                                    <asp:DropDownList ID="DropDownList_LISTA_RIESGOS" runat="server" AutoPostBack="True"
                                                                        OnSelectedIndexChanged="DropDownList_LISTA_RIESGOS_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <div class="div_espaciador">
                                                        </div>
                                                    </asp:Panel>
                                                    <div class="div_contenedor_grilla_resultados">
                                                        <div class="grid_seleccionar_registros">
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
                                                        </div>
                                                    </div>
                                                    <%--                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                    --%>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <%--                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    --%>
                                </div>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel_COBERTURA" runat="server">
                    <div class="div_espaciador">
                    </div>
                    <div class="div_cabeza_groupbox_gris">
                        Cobertura
                    </div>
                    <div class="div_contenido_groupbox_gris">
                        <%--                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                        --%>
                        <asp:Panel ID="Panel_COBERTURA_DROPS" runat="server">
                            <table class="table_control_registros">
                                <tr>
                                    <td class="td_izq">
                                        <asp:Label ID="Label_REGIONAL_COVERTURA" runat="server" Text="Regional"></asp:Label>
                                    </td>
                                    <td colspan="5" class="td_der">
                                        <asp:DropDownList ID="DropDownList_REGIONAL_COVERTURA" runat="server" Width="310px"
                                            AutoPostBack="True" OnSelectedIndexChanged="DropDownList_REGIONAL_COVERTURA_SelectedIndexChanged"
                                            ValidationGroup="NUEVOCLIENTE">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td_izq">
                                        <asp:Label ID="Label_DEPARTAMNETO_COVERTURA" runat="server" Text="Departamento"></asp:Label>
                                    </td>
                                    <td colspan="5" class="td_der">
                                        <asp:DropDownList ID="DropDownList_DEPARTAMNETO_COVERTURA" runat="server" Width="310px"
                                            AutoPostBack="True" OnSelectedIndexChanged="DropDownList_DEPARTAMNETO_COVERTURA_SelectedIndexChanged"
                                            ValidationGroup="NUEVOCLIENTE">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td_izq">
                                        <asp:Label ID="Label_CIUDAD_COVERTURA" runat="server" Text="Ciudad"></asp:Label>
                                    </td>
                                    <td colspan="5" class="td_der">
                                        <asp:DropDownList ID="DropDownList_CIUDAD_COVERTURA" runat="server" Width="310px"
                                            AutoPostBack="True" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged"
                                            ValidationGroup="NUEVOCLIENTE">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                            <div class="div_espaciador">
                            </div>
                        </asp:Panel>
                        <table class="table_control_registros">
                            <tr>
                                <td>
                                    <div class="div_contenedor_grilla_resultados">
                                        <div class="grid_seleccionar_registros">
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
                        <%--                            </ContentTemplate>
                        </asp:UpdatePanel>
                        --%>
                    </div>
                </asp:Panel>
                <asp:Panel ID="Panel_ALIANZA_GRUPO_EMPRESARIAL" runat="server">
                    <div class="div_espaciador">
                    </div>
                    <table class="table_form_dos_columnas" width="100%">
                        <tr>
                            <td style="width: 50%">
                                <div class="div_cabeza_groupbox_gris">
                                    Grupo Empresarial
                                </div>
                                <div class="div_contenido_groupbox_gris">
                                    <table class="table_control_registros">
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_GRUPO_EMPRESARIAL" runat="server" Text="Grupo"></asp:Label>
                                            </td>
                                            <td class="td_der">
                                                <asp:DropDownList ID="DropDownList_GRUPO_EMPRESARIAL" runat="server" Width="350px"
                                                    ValidationGroup="NUEVOCLIENTE">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                            <td style="width: 50%">
                                <div class="div_cabeza_groupbox_gris">
                                    Alianza
                                </div>
                                <div class="div_contenido_groupbox_gris">
                                    <table class="table_control_registros">
                                        <tr>
                                            <td class="td_izq">
                                                <asp:Label ID="Label_ALIANZA" runat="server" Text="Alianza"></asp:Label>
                                            </td>
                                            <td class="td_der">
                                                <asp:DropDownList ID="DropDownList_ALIANZA" runat="server" Width="350px" ValidationGroup="NUEVOCLIENTE">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel_DATOS_DE_FACTURACION" runat="server">
                    <div class="div_espaciador">
                    </div>
                    <div class="div_cabeza_groupbox_gris">
                        Información Facturación
                    </div>
                    <div class="div_contenido_groupbox_gris">
                        <table class="table_control_registros">
                            <tr>
                                <td class="td_izq">
                                    <asp:Label ID="Label_EMP_ESTADO" runat="server" Text="Empresa del Estado"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:DropDownList ID="DropDownList_EMP_ESTADO" runat="server" Width="110px" ValidationGroup="NUEVOCLIENTE">
                                    </asp:DropDownList>
                                </td>
                                <td class="td_izq">
                                    <asp:Label ID="Label_EMP_EXC_IVA" runat="server" Text="Emp. Excluida del IVA"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:DropDownList ID="DropDownList_EMP_EXC_IVA" runat="server" Width="110px" ValidationGroup="NUEVOCLIENTE">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_izq">
                                    <asp:Label ID="Label_FAC_NAL" runat="server" Text="Facturación Nacional"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:DropDownList ID="DropDownList_FAC_NAL" runat="server" Width="110px" ValidationGroup="NUEVOCLIENTE"
                                        OnSelectedIndexChanged="DropDownList_FAC_NAL_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td class="td_izq">
                                    <asp:Label ID="Label_TIPO_EMPRESA" runat="server" Text="Tipo Empresa (AIU)"></asp:Label>
                                </td>
                                <td class="td_der">
                                    <asp:DropDownList ID="DropDownList_TIPO_EMPRESA" runat="server" Width="110px" ValidationGroup="NUEVOCLIENTE"
                                        Height="16px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                        <div class="div_espaciador">
                        </div>
                        <table class="table_control_registros">
                            <tr>
                                <td class="td_izq">
                                    Núm. Empleados (Proyección)
                                </td>
                                <td class="td_der">
                                    <asp:TextBox ID="TextBox_NUM_EMPLEADOS" runat="server" Width="110px" MaxLength="6"
                                        ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                                    <%--                                    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender_NUM_EMPLEADOS" runat="server"
                                        TargetControlID="TextBox_NUM_EMPLEADOS" FilterType="Numbers" />
                                    --%>
                                </td>
                                <td class="td_der">
                                    <asp:Panel ID="Panel_EMPLEADOS_VIGENTES_EMPRESA" runat="server">
                                        <%--PARA MOSTRAR EL NUMERO DE EMPLEADOS VIGENTES PAR ALA EMPRESA--%>
                                        <table class="table_control_registros">
                                            <tr>
                                                <td class="td_izq">
                                                    Empleados (Reales Activos)
                                                    <asp:Label ID="Label_num_empleados_reales" runat="server" Text="0" Font-Bold="True"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                        <!-- DropDownList_EMP_ESTADO -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_EMP_ESTADO"
                            ControlToValidate="DropDownList_EMP_ESTADO" InitialValue="0" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />EMPRESA DEL ESTADO es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%--                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_DropDownList_EMP_ESTADO"
                            TargetControlID="RequiredFieldValidator_DropDownList_EMP_ESTADO" HighlightCssClass="validatorCalloutHighlight" />
                        --%>
                        <!-- DropDownList_FAC_NAL -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_FAC_NAL"
                            ControlToValidate="DropDownList_FAC_NAL" InitialValue="0" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />FACTURACIÓN NACIONAL es requerida."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%--                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_DropDownList_FAC_NAL"
                            TargetControlID="RequiredFieldValidator_DropDownList_FAC_NAL" HighlightCssClass="validatorCalloutHighlight" />
                        --%>
                        <!-- DropDownList_EMP_EXC_IVA -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_EMP_EXC_IVA"
                            ControlToValidate="DropDownList_EMP_EXC_IVA" InitialValue="0" Display="None"
                            ErrorMessage="<b>Campo Requerido faltante</b><br />EMPRESA EXCLUIDA DEL IVA es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%--                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_DropDownList_EMP_EXC_IVA"
                            TargetControlID="RequiredFieldValidator_DropDownList_EMP_EXC_IVA" HighlightCssClass="validatorCalloutHighlight" />
                        --%>
                        <!-- DropDownList_TIPO_EMPRESA -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_TIPO_EMPRESA"
                            ControlToValidate="DropDownList_TIPO_EMPRESA" InitialValue="0" Display="None"
                            ErrorMessage="<b>Campo Requerido faltante</b><br />TIPO DE EMPRESA es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%--                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_DropDownList_TIPO_EMPRESA"
                            TargetControlID="RequiredFieldValidator_DropDownList_TIPO_EMPRESA" HighlightCssClass="validatorCalloutHighlight" />
                        --%>
                        <!-- TextBox_NUM_EMPLEADOS -->
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_NUM_EMPLEADOS"
                            ControlToValidate="TextBox_NUM_EMPLEADOS" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El NÚMERO DE EMPLEADOS es requerido."
                            ValidationGroup="NUEVOCLIENTE" />
                        <%--                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_TextBox_NUM_EMPLEADOS"
                            TargetControlID="RequiredFieldValidator_TextBox_NUM_EMPLEADOS" HighlightCssClass="validatorCalloutHighlight" />
                        --%>
                    </div>
                </asp:Panel>
                <asp:Panel ID="Panel_NEGOCIO" runat="server">
                    <div class="div_espaciador">
                    </div>
                    <table class="table_form_dos_columnas" width="100%">
                        <tr>
                            <td valign="top" style="width: 50%">
                                <asp:Panel ID="Panel_CIUDAD_NEGOCIO" runat="server">
                                    <div class="div_cabeza_groupbox_gris">
                                        Ciudad que Originó el Negocio
                                    </div>
                                    <div class="div_contenido_groupbox_gris">
                                        <%--                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                        --%>
                                        <table class="table_control_registros">
                                            <tr>
                                                <td class="td_izq">
                                                    Departamento
                                                </td>
                                                <td class="td_der">
                                                    <div style="padding: 3px 0px 3px 0px;">
                                                        <asp:DropDownList ID="DropDownList_DEPARTAMENTO_ORIGINO" runat="server" Width="250px"
                                                            AutoPostBack="True" OnSelectedIndexChanged="DropDownList_DEPARTAMENTO_ORIGINO_SelectedIndexChanged"
                                                            ValidationGroup="NUEVOCLIENTE">
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="td_izq">
                                                    Ciudad
                                                </td>
                                                <td class="td_der">
                                                    <div style="padding: 3px 0px 3px 0px;">
                                                        <asp:DropDownList ID="DropDownList_CIUDAD_ORIGINO" runat="server" Width="250px" ValidationGroup="NUEVOCLIENTE">
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <!-- DropDownList_CIUDAD_ORIGINO -->
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_CIUDAD_ORIGINO"
                                            ControlToValidate="DropDownList_CIUDAD_ORIGINO" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La CIUDAD QUE ORIGINÓ EL NEGOCIO es requerido."
                                            ValidationGroup="NUEVOCLIENTE" />
                                        <%--                                                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_DropDownList_CIUDAD_ORIGINO"
                                                    TargetControlID="RequiredFieldValidator_DropDownList_CIUDAD_ORIGINO" HighlightCssClass="validatorCalloutHighlight" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        --%>
                                    </div>
                                </asp:Panel>
                                <asp:Panel ID="Panel_UNIDAD_NEGOCIO" runat="server">
                                    <div class="div_espaciador">
                                    </div>
                                    <div class="div_cabeza_groupbox_gris">
                                        Unidad de Negocio
                                    </div>
                                    <div class="div_contenido_groupbox_gris">
                                        <asp:Panel ID="Panel_INFO_SIN_UNIDAD_NEGOCIO" runat="server">
                                            <div style="text-align: center; margin: 10px; font-weight: bold; color: Red;">
                                                No se ha asignado ningún usuario para esta empresa.
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="Panel_GRILLA_UNIDAD_NEGOCIO" runat="server">
                                            <div class="div_contenedor_grilla_resultados">
                                                <div class="grid_seleccionar_registros">
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
                            <td valign="top" style="width: 50%">
                                <asp:Panel ID="Panel_REP_CLIENTE" runat="server">
                                    <div class="div_cabeza_groupbox_gris">
                                        Representante Legal del Cliente
                                    </div>
                                    <div class="div_contenido_groupbox_gris">
                                        <%--                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                        --%>
                                        <div class="div_espaciador">
                                        </div>
                                        <table class="table_control_registros">
                                            <tr>
                                                <td class="td_izq">
                                                    <asp:Label ID="Label_NOM_REP_LEGAL" runat="server" Text="Nombre"></asp:Label>
                                                </td>
                                                <td class="td_der">
                                                    <asp:TextBox ID="TextBox_NOM_REP_LEGAL" runat="server" Width="250px" MaxLength="40"
                                                        ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="td_izq">
                                                    <asp:Label ID="Label_TIP_CEDULA_REP_LEGAL_CLIENTE" runat="server" Text="Tipo Doc."></asp:Label>
                                                </td>
                                                <td class="td_der">
                                                    <asp:DropDownList ID="DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE" runat="server" Width="250px"
                                                        ValidationGroup="NUEVOCLIENTE" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="td_izq">
                                                    <asp:Label ID="Label_CC_REP_LEGAL" runat="server" Text="Núm Doc."></asp:Label>
                                                </td>
                                                <td class="td_der">
                                                    <asp:TextBox ID="TextBox_CC_REP_LEGAL" runat="server" Width="250px" MaxLength="15"
                                                        ValidationGroup="NUEVOCLIENTE"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="td_izq">
                                                    <asp:Label ID="Label_DEP_CC_REP_LEGAL" runat="server" Text="Departamento"></asp:Label>
                                                </td>
                                                <td class="td_der">
                                                    <asp:DropDownList ID="DropDownList_DEP_CC_REP_LEGAL" runat="server" Width="250px"
                                                        ValidationGroup="NUEVOCLIENTE" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_DEP_CC_REP_LEGAL_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="td_izq">
                                                    <asp:Label ID="Label_CIU_CC_REP_LEGAL" runat="server" Text="Ciudad"></asp:Label>
                                                </td>
                                                <td class="td_der">
                                                    <asp:DropDownList ID="DropDownList_CIU_CC_REP_LEGAL" runat="server" Width="250px"
                                                        ValidationGroup="NUEVOCLIENTE">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="div_espaciador">
                                        </div>
                                        <div class="div_espaciador">
                                        </div>
                                        <!-- TextBox_NOM_REP_LEGAL -->
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_NOM_REP_LEGAL"
                                            ControlToValidate="TextBox_NOM_REP_LEGAL" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />El NOMBRE DEL REP. LEGAL DEL CLIENTE es requerido."
                                            ValidationGroup="NUEVOCLIENTE" />
                                        <%--                                                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_TextBox_NOM_REP_LEGAL"
                                                    TargetControlID="RequiredFieldValidator_TextBox_NOM_REP_LEGAL" HighlightCssClass="validatorCalloutHighlight" />
                                        --%>
                                        <!-- DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE -->
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE"
                                            ControlToValidate="DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE" Display="None"
                                            ErrorMessage="<b>Campo Requerido faltante</b><br />El TIPO DE DOCUMENTO es requerido."
                                            ValidationGroup="NUEVOCLIENTE" />
                                        <%--                                                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE"
                                                    TargetControlID="RequiredFieldValidator_DropDownList_TIP_CEDULA_REP_LEGAL_CLIENTE"
                                                    HighlightCssClass="validatorCalloutHighlight" />
                                        --%>
                                        <!-- TextBox_CC_REP_LEGAL -->
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_TextBox_CC_REP_LEGAL"
                                            ControlToValidate="TextBox_CC_REP_LEGAL" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La CEDULA DEL REP. LEGAL DEL CLIENTE es requerida."
                                            ValidationGroup="NUEVOCLIENTE" />
                                        <%--                                                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_TextBox_CC_REP_LEGAL"
                                                    TargetControlID="RequiredFieldValidator_TextBox_CC_REP_LEGAL" HighlightCssClass="validatorCalloutHighlight" />
                                        --%>
                                        <!-- DropDownList_CIU_CC_REP_LEGAL -->
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_DropDownList_CIU_CC_REP_LEGAL"
                                            ControlToValidate="DropDownList_CIU_CC_REP_LEGAL" Display="None" ErrorMessage="<b>Campo Requerido faltante</b><br />La CIUDAD DEL REP. LEGAL DEL CLIENTE es requerida."
                                            ValidationGroup="NUEVOCLIENTE" />
                                        <%---                                                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender_DropDownList_CIU_CC_REP_LEGAL"
                                                    TargetControlID="RequiredFieldValidator_DropDownList_CIU_CC_REP_LEGAL" HighlightCssClass="validatorCalloutHighlight" />
                                                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender_TextBox_NOM_REP_LEGAL"
                                                    runat="server" TargetControlID="TextBox_NOM_REP_LEGAL" FilterType="Custom, LowercaseLetters, UppercaseLetters"
                                                    ValidChars=" ,.:;-_ñÑáéíóúÁÉÍÓÚ()[]{}" />
                                                <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender_CC_REP_LEGAL" runat="server"
                                                    TargetControlID="TextBox_CC_REP_LEGAL" FilterType="Numbers" />
                                        </ContentTemplate>
                                        </asp:UpdatePanel>
                                        --%>
                                    </div>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
