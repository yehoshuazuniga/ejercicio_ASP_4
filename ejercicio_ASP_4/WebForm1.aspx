<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ejercicio_ASP_4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
    .centrar
    {
        position: absolute;
        /*nos posicionamos en el centro del navegador*/
        top:50%;
        left:50%;
        /*determinamos una anchura*/
        width:200px;
        /*indicamos que el margen izquierdo, es la mitad de la anchura*/
        margin-left:-200px;
        /*determinamos una altura*/
        height:200px;
        /*indicamos que el margen superior, es la mitad de la altura*/
        margin-top:-150px;
        border:1px solid #808080;
        padding:5px;
    }
</style>
    <script type="text/javascript">
        function Validarlongitud(fuente, args) {
            args.IsValid = (args.Value.length>=4)
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" class="centrar">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtUsuario"/>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="Requiered1"
                            runat="server"
                            ControlToValidate="txtUsuario"
                            Display="Static"
                            Text="*"
                            ErrorMessage="Usuario requerido"
                            ></asp:RequiredFieldValidator>
                    </td>                    
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Edad" ID="label2" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtEdad"/>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            runat="server"
                            ControlToValidate="txtEdad"
                            Display="Static"
                            Text="*"
                            ErrorMessage="Edad requerido"
                            ></asp:RequiredFieldValidator>
                        <asp:RangeValidator  runat="server"
                            ID="RangeValidator1"
                            Display="Dynamic"
                            ControlToValidate="txtEdad"
                            ErrorMessage="Introduca valores entre 18-50"
                            MaximumValue="50"
                            MinimumValue="18"
                            ></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Password" runat="server" ID="labe3" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtPass"  TextMode="Password" 
                            runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            runat="server"
                            ControlToValidate="txtPass"
                            Display="Static"
                            Text="*"
                            Errormessage="Usuario requerido"
                            />
                        <asp:CustomValidator 
                            ID="cUSTOM1"
                            ControlToValidate="txtPass"
                            ClientValidationFunction="Validarlongitud"
                            Display="Dynamic"
                            ErrorMessage=" Debes introducir al menos 4 caracteres"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Vonfirmar pass" ID="label4" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox runat="server"
                            ID="txtConfirm" TextMode="Password"
                            />
                    </td>
                    <td>  
                        <asp:RequiredFieldValidator ID="Required5"
                            ErrorMessage="Debes repetir password"
                            ControlToValidate="txtConfirm"
                            Text="*"
                            Diplay="Static"
                            runat="server"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="compare5"
                            ControlToValidate="txtConfirm"
                            ControlTocompare="txtPass"
                            Display="Dynamic"
                            ErrorMessage="No coincide"
                            runat="server"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" 
                            runat="server" Text="Enviar" 
                            OnClick="boton1_click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="validation1" 
                            ShowSummary="true"
                            ShowMessageBox="false"
                            HeaderText="Han ocurrido los siguientes errores"
                            DisplayMode="List"
                            runat="server" 
                            />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
