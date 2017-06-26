<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="AtividadeValidacao.Formulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title>Cadastro</title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <h2>Cadastro</h2>
            <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
            <br />
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" ErrorMessage="* Campo obrigatório!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Nome inválido! Deve conter apenas letras." ControlToValidate="txtNome" ForeColor="Red" ValidationExpression="[a-zA-Z\.\'\-_\s]{1,40}"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Idade:"></asp:Label>
            <asp:TextBox ID="txtIdade" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Campo obrigatório!" ControlToValidate="txtIdade" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Idade inválida!" ControlToValidate="txtIdade" ForeColor="Red" ValidationExpression="^(\d?[1-9]|[1-9]0)$"></asp:RegularExpressionValidator>
            <br />
            
            <asp:Label ID="Label2" runat="server" Text="CPF:"></asp:Label>
            <br />
            <asp:TextBox ID="txtCpf" runat="server" OnTextChanged="txtCpf_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCpf" ErrorMessage="* Campo obrigatório!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCpf" ErrorMessage="CPF inválido!" ForeColor="Red" ValidationExpression="^\d{3}\.\d{3}\.\d{3}-\d{2}$"></asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="Label7" runat="server" Text="Telefone"></asp:Label>
            <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Campo obrigatório!" ControlToValidate="txtTel" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Telefone inválido!" ControlToValidate="txtTel" ForeColor="Red" ValidationExpression="(^|\()?\s*(\d{2})\s*(\s|\))*(9?\d{4})(\s|-)?(\d{4})($|\n)"></asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Campo obrigatório!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email inválido!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="Label4" runat="server" Text="Curso:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem> Administração de Empresas </asp:ListItem>
                <asp:ListItem> Agronomia </asp:ListItem>
                <asp:ListItem>Biomedicina </asp:ListItem>
                <asp:ListItem> Ciências Biológicas </asp:ListItem>
                <asp:ListItem> Ciências Contábeis </asp:ListItem>
                <asp:ListItem>Comunicação Social </asp:ListItem>
                <asp:ListItem>Direito </asp:ListItem>
                <asp:ListItem>Educação Física </asp:ListItem>
                <asp:ListItem> Enfermagem </asp:ListItem>
                <asp:ListItem> Engenharia Ambiental </asp:ListItem>
                <asp:ListItem> Engenharia Civil </asp:ListItem>
                <asp:ListItem> Engenharia de Produção </asp:ListItem>
                <asp:ListItem> Estética e Cosmética </asp:ListItem>
                <asp:ListItem> Gestão Comercial </asp:ListItem>
                <asp:ListItem> História </asp:ListItem>
                <asp:ListItem> Jornalismo </asp:ListItem>
                <asp:ListItem> Letras </asp:ListItem>
                <asp:ListItem> Matemática </asp:ListItem>
                <asp:ListItem> Moda e Design </asp:ListItem>
                <asp:ListItem> Nutrição </asp:ListItem>
                <asp:ListItem> Pedagogia </asp:ListItem>
                <asp:ListItem> Serviço Social </asp:ListItem>
                <asp:ListItem> Sistemas de Informação</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Selecione um curso." ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Período:"></asp:Label>

            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Matutino</asp:ListItem>
                <asp:ListItem>Noturno</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Selecione um período." ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Login:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Senha:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="174px"></asp:TextBox>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Confirma Senha:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="*Senhas diferentes" ForeColor="Red"></asp:CompareValidator>
            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
            <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
