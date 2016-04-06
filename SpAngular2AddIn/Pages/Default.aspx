﻿<%-- Las 4 líneas siguientes son directivas ASP.NET necesarias cuando se usan componentes de SharePoint. --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- El marcado y el script del elemento Content siguiente se pondrá en el <head> de la página. --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink Name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Agregue sus estilos CSS al siguiente archivo -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/0.6.0/pure-min.css" />

    <!-- IE required polyfills, in this exact order -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/es6-shim/0.35.0/es6-shim.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/systemjs/0.19.20/system-polyfills.js"></script>
    <script type="text/javascript" src="https://npmcdn.com/angular2@2.0.0-beta.9/es6/dev/src/testing/shims_for_IE.js"></script>

    <script type="text/javascript" src="https://code.angularjs.org/2.0.0-beta.9/angular2-polyfills.js"></script>
    <script type="text/javascript" src="https://code.angularjs.org/tools/system.js"></script>
    <script type="text/javascript" src="https://npmcdn.com/typescript@1.8.9/lib/typescript.js"></script>
    <script type="text/javascript" src="https://code.angularjs.org/2.0.0-beta.9/Rx.js"></script>
    <script type="text/javascript" src="https://code.angularjs.org/2.0.0-beta.9/angular2.dev.js"></script>

    <!-- Router library -->
    <script type="text/javascript" src="https://code.angularjs.org/2.0.0-beta.9/router.dev.js"></script>
    <!-- Http library -->
    <script type="text/javascript" src="https://code.angularjs.org/2.0.0-beta.9/http.dev.js"></script>
    <!-- Config and global vars JS file -->
    <script type="text/javascript" src="../Scripts/angular2/app.config.js"></script>

    <script type="text/javascript">

        System.config({
            transpiler: 'typescript',
            typescriptOptions: {
                emitDecoratorMetadata: true
            },
            map: {
                app: BASE_URL + 'app'
            },
            packages: {
                app: {
                    main: 'main',
                    defaultExtension: 'ts'
                }
            }
        });

        ExecuteOrDelayUntilScriptLoaded(function () {
            System.import('app').catch(console.error.bind(console));
        }, "sp.js");

    </script>

</asp:Content>

<%-- El marcado del elemento Content siguiente se pondrá en el elemento TitleArea de la página. --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Page Title
</asp:Content>

<%-- El marcado y el script del elemento Content siguiente se pondrá en el <body> de la página. --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <app-main></app-main>

</asp:Content>
