<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="Lab2.WebForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource2" DataTextField="navn" DataValueField="navn">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Oppslag] WHERE ([Kategori] = @Kategori)" 
        DeleteCommand="DELETE FROM [Oppslag] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Oppslag] ([Tittel], [Ingress], [Oppslagtekst], [Bruker], [Kategori], [Dato], [Treff]) VALUES (@Tittel, @Ingress, @Oppslagtekst, @Bruker, @Kategori, @Dato, @Treff)" 
        UpdateCommand="UPDATE [Oppslag] SET [Tittel] = @Tittel, [Ingress] = @Ingress, [Oppslagtekst] = @Oppslagtekst, [Bruker] = @Bruker, [Kategori] = @Kategori, [Dato] = @Dato, [Treff] = @Treff WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Tittel" Type="String" />
            <asp:Parameter Name="Ingress" Type="String" />
            <asp:Parameter Name="Oppslagtekst" Type="String" />
            <asp:Parameter Name="Bruker" Type="String" />
            <asp:Parameter Name="Kategori" Type="String" />
            <asp:Parameter Name="Dato" Type="DateTime" />
            <asp:Parameter Name="Treff" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Kategori" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Tittel" Type="String" />
            <asp:Parameter Name="Ingress" Type="String" />
            <asp:Parameter Name="Oppslagtekst" Type="String" />
            <asp:Parameter Name="Bruker" Type="String" />
            <asp:Parameter Name="Kategori" Type="String" />
            <asp:Parameter Name="Dato" Type="DateTime" />
            <asp:Parameter Name="Treff" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" 
        DataKeyNames="Id" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="507px" 
        AllowSorting="True" AutoGenerateColumns="False">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Tittel" HeaderText="Tittel" 
                SortExpression="Tittel" />
            <asp:BoundField DataField="Ingress" HeaderText="Ingress" 
                SortExpression="Ingress" />
            <asp:BoundField DataField="Oppslagtekst" HeaderText="Oppslagtekst" 
                SortExpression="Oppslagtekst" />
            <asp:BoundField DataField="Bruker" HeaderText="Bruker" 
                SortExpression="Bruker" />
            <asp:BoundField DataField="Dato" HeaderText="Dato" SortExpression="Dato" />
            <asp:BoundField DataField="Treff" HeaderText="Treff" SortExpression="Treff" />
            <asp:BoundField DataField="Kategori" HeaderText="Kategori" 
                SortExpression="Kategori" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Kategori]"></asp:SqlDataSource>
    <p>
        Ny post</p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Tittel" HeaderText="Tittel" 
                SortExpression="Tittel" />
            <asp:BoundField DataField="Ingress" HeaderText="Ingress" 
                SortExpression="Ingress" />
            <asp:BoundField DataField="Oppslagtekst" HeaderText="Oppslagtekst" 
                SortExpression="Oppslagtekst" />
            <asp:BoundField DataField="Bruker" HeaderText="Bruker" 
                SortExpression="Bruker" />
            <asp:BoundField DataField="Kategori" HeaderText="Kategori" 
                SortExpression="Kategori" />
            <asp:BoundField DataField="Dato" HeaderText="Dato" SortExpression="Dato" />
            <asp:BoundField DataField="Treff" HeaderText="Treff" SortExpression="Treff" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    </form>
    </body>
</html>
