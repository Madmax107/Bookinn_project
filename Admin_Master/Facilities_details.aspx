﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Facilities_details.aspx.cs" Inherits="BookInn.Admin_Master.Facilities_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Facilities Details</title>

     <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>

    <!-- Main css -->
    <%--<link rel="stylesheet" href="css/style.css">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"/>


    <style>

    /* @extend display-flex; */
    display-flex, .signup-content, .form-row, .form-radio, .select-icon, .select-icon i {
        display: flex;
        display: -webkit-flex;
    }

    /* @extend list-type-ulli; */
    list-type-ulli {
        list-style-type: none;
        margin: 0;
        padding: 0;
    }

    /* Montserrat-300 - latin */
    @font-face {
        font-family: 'Montserrat';
        font-style: normal;
        font-weight: 300;
        src: url("../fonts/montserrat/Montserrat-Light.ttf");
        /* IE9 Compat Modes */
    }

    @font-face {
        font-family: 'Montserrat';
        font-style: normal;
        font-weight: 400;
        src: url("../fonts/montserrat/Montserrat-Regular.ttf");
        /* IE9 Compat Modes */
    }

    @font-face {
        font-family: 'Montserrat';
        font-style: italic;
        font-weight: 400;
        src: url("../fonts/montserrat/Montserrat-Italic.ttf");
        /* IE9 Compat Modes */
    }

    @font-face {
        font-family: 'Montserrat';
        font-style: normal;
        font-weight: 500;
        src: url("../fonts/montserrat/Montserrat-Medium.ttf");
        /* IE9 Compat Modes */
    }

    @font-face {
        font-family: 'Montserrat';
        font-style: normal;
        font-weight: 600;
        src: url("../fonts/montserrat/Montserrat-SemiBold.ttf");
        /* IE9 Compat Modes */
    }

    @font-face {
        font-family: 'Montserrat';
        font-style: normal;
        font-weight: 700;
        src: url("../fonts/montserrat/Montserrat-Bold.ttf");
        /* IE9 Compat Modes */
    }

    @font-face {
        font-family: 'Montserrat';
        font-style: italic;
        font-weight: 700;
        src: url("../fonts/montserrat/Montserrat-BoldItalic.ttf");
        /* IE9 Compat Modes */
    }

    @font-face {
        font-family: 'Montserrat';
        font-style: italic;
        font-weight: 900;
        src: url("../fonts/montserrat/montserrat-v12-latin-900.ttf"), url("../fonts/montserrat/montserrat-v12-latin-900.eot") format("embedded-opentype"), url("../fonts/montserrat/montserrat-v12-latin-900.svg") format("woff2"), url("../fonts/montserrat/montserrat-v12-latin-900.woff") format("woff"), url("../fonts/montserrat/montserrat-v12-latin-900.woff2") format("truetype");
    }
    /* poppins-300 - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: normal;
        font-weight: 300;
        src: url("../fonts/poppins/poppins-v5-latin-300.eot");
        /* IE9 Compat Modes */
        src: local("Poppins Light"), local("Poppins-Light"), url("../fonts/poppins/poppins-v5-latin-300.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-300.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-300.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-300.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-300.svg#Poppins") format("svg");
        /* Legacy iOS */
    }
    /* poppins-300italic - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: italic;
        font-weight: 300;
        src: url("../fonts/poppins/poppins-v5-latin-300italic.eot");
        /* IE9 Compat Modes */
        src: local("Poppins Light Italic"), local("Poppins-LightItalic"), url("../fonts/poppins/poppins-v5-latin-300italic.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-300italic.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-300italic.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-300italic.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-300italic.svg#Poppins") format("svg");
        /* Legacy iOS */
    }
    /* poppins-regular - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: normal;
        font-weight: 400;
        src: url("../fonts/poppins/poppins-v5-latin-regular.eot");
        /* IE9 Compat Modes */
        src: local("Poppins Regular"), local("Poppins-Regular"), url("../fonts/poppins/poppins-v5-latin-regular.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-regular.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-regular.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-regular.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-regular.svg#Poppins") format("svg");
        /* Legacy iOS */
    }
    /* poppins-italic - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: italic;
        font-weight: 400;
        src: url("../fonts/poppins/poppins-v5-latin-italic.eot");
        /* IE9 Compat Modes */
        src: local("Poppins Italic"), local("Poppins-Italic"), url("../fonts/poppins/poppins-v5-latin-italic.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-italic.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-italic.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-italic.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-italic.svg#Poppins") format("svg");
        /* Legacy iOS */
    }
    /* poppins-500 - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: normal;
        font-weight: 500;
        src: url("../fonts/poppins/poppins-v5-latin-500.eot");
        /* IE9 Compat Modes */
        src: local("Poppins Medium"), local("Poppins-Medium"), url("../fonts/poppins/poppins-v5-latin-500.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-500.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-500.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-500.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-500.svg#Poppins") format("svg");
        /* Legacy iOS */
    }
    /* poppins-500italic - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: italic;
        font-weight: 500;
        src: url("../fonts/poppins/poppins-v5-latin-500italic.eot");
        /* IE9 Compat Modes */
        src: local("Poppins Medium Italic"), local("Poppins-MediumItalic"), url("../fonts/poppins/poppins-v5-latin-500italic.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-500italic.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-500italic.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-500italic.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-500italic.svg#Poppins") format("svg");
        /* Legacy iOS */
    }
    /* poppins-600 - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: normal;
        font-weight: 600;
        src: url("../fonts/poppins/poppins-v5-latin-600.eot");
        /* IE9 Compat Modes */
        src: local("Poppins SemiBold"), local("Poppins-SemiBold"), url("../fonts/poppins/poppins-v5-latin-600.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-600.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-600.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-600.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-600.svg#Poppins") format("svg");
        /* Legacy iOS */
    }
    /* poppins-700 - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: normal;
        font-weight: 700;
        src: url("../fonts/poppins/poppins-v5-latin-700.eot");
        /* IE9 Compat Modes */
        src: local("Poppins Bold"), local("Poppins-Bold"), url("../fonts/poppins/poppins-v5-latin-700.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-700.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-700.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-700.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-700.svg#Poppins") format("svg");
        /* Legacy iOS */
    }
    /* poppins-700italic - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: italic;
        font-weight: 700;
        src: url("../fonts/poppins/poppins-v5-latin-700italic.eot");
        /* IE9 Compat Modes */
        src: local("Poppins Bold Italic"), local("Poppins-BoldItalic"), url("../fonts/poppins/poppins-v5-latin-700italic.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-700italic.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-700italic.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-700italic.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-700italic.svg#Poppins") format("svg");
        /* Legacy iOS */
    }
    /* poppins-800 - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: normal;
        font-weight: 800;
        src: url("../fonts/poppins/poppins-v5-latin-800.eot");
        /* IE9 Compat Modes */
        src: local("Poppins ExtraBold"), local("Poppins-ExtraBold"), url("../fonts/poppins/poppins-v5-latin-800.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-800.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-800.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-800.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-800.svg#Poppins") format("svg");
        /* Legacy iOS */
    }
    /* poppins-800italic - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: italic;
        font-weight: 800;
        src: url("../fonts/poppins/poppins-v5-latin-800italic.eot");
        /* IE9 Compat Modes */
        src: local("Poppins ExtraBold Italic"), local("Poppins-ExtraBoldItalic"), url("../fonts/poppins/poppins-v5-latin-800italic.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-800italic.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-800italic.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-800italic.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-800italic.svg#Poppins") format("svg");
        /* Legacy iOS */
    }
    /* poppins-900 - latin */
    @font-face {
        font-family: 'Poppins';
        font-style: normal;
        font-weight: 900;
        src: url("../fonts/poppins/poppins-v5-latin-900.eot");
        /* IE9 Compat Modes */
        src: local("Poppins Black"), local("Poppins-Black"), url("../fonts/poppins/poppins-v5-latin-900.eot?#iefix") format("embedded-opentype"), url("../fonts/poppins/poppins-v5-latin-900.woff2") format("woff2"), url("../fonts/poppins/poppins-v5-latin-900.woff") format("woff"), url("../fonts/poppins/poppins-v5-latin-900.ttf") format("truetype"), url("../fonts/poppins/poppins-v5-latin-900.svg#Poppins") format("svg");
        /* Legacy iOS */
    }

    a:focus, a:active {
        text-decoration: none;
        outline: none;
        transition: all 300ms ease 0s;
        -moz-transition: all 300ms ease 0s;
        -webkit-transition: all 300ms ease 0s;
        -o-transition: all 300ms ease 0s;
        -ms-transition: all 300ms ease 0s;
    }

    input, select, textarea {
        outline: none;
        appearance: unset !important;
        -moz-appearance: unset !important;
        -webkit-appearance: unset !important;
        -o-appearance: unset !important;
        -ms-appearance: unset !important;
    }

        input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
            appearance: none !important;
            -moz-appearance: none !important;
            -webkit-appearance: none !important;
            -o-appearance: none !important;
            -ms-appearance: none !important;
            margin: 0;
        }

        input:focus, select:focus, textarea:focus {
            outline: none;
            box-shadow: none !important;
            -moz-box-shadow: none !important;
            -webkit-box-shadow: none !important;
            -o-box-shadow: none !important;
            -ms-box-shadow: none !important;
        }
 

        input[type=checkbox] {
            appearance: checkbox !important;
            -moz-appearance: checkbox !important;
            -webkit-appearance: checkbox !important;
            -o-appearance: checkbox !important;
            -ms-appearance: checkbox !important;
        }

        input[type=radio] {
            appearance: radio !important;
            -moz-appearance: radio !important;
            -webkit-appearance: radio !important;
            -o-appearance: radio !important;
            -ms-appearance: radio !important;
        }

    img {
        max-width: 100%;
        height: auto;
    }

    figure {
        margin: 0;
    }

    input[type=number] {
        -moz-appearance: textfield !important;
        appearance: none !important;
        -webkit-appearance: none !important;
    }

    input:-webkit-autofill {
        box-shadow: 0 0 0 30px transparent inset;
        -moz-box-shadow: 0 0 0 30px transparent inset;
        -webkit-box-shadow: 0 0 0 30px transparent inset;
        -o-box-shadow: 0 0 0 30px transparent inset;
        -ms-box-shadow: 0 0 0 30px transparent inset;
    }

    h2 {
        line-height: 1.66;
        margin: 0;
        padding: 0;
        font-weight: 700;
        color: #dfa974;
        font-family: "Roboto", sans-serif;
        font-size: 20px;
        text-transform: uppercase;
        margin-bottom: 32px;
    }

    .clear {
        clear: both;
    }

    body {
        font-size: 13px;
        line-height: 1.8;
        color: #222;
        font-weight: 400;
        background: #f8f8f8;
        padding: 90px 0;
    }

    .container {
        width: 1400px;
        position: relative;
        margin: 0 auto;
        background: #fff;
    }

    .signup-img, .signup-form {
        width: 50%;
    }

    .signup-img {
        margin-bottom: -7px;
    }

    .register-form {
        padding: 50px 100px 50px 70px;
    }

    .form-row {
        margin: 0 -15px;
    }

        .form-row .form-group {
            width: 50%;
            padding: 0 15px;
        }

    .form-group {
        margin-bottom: 23px;
        position: relative;
    }

    input, select {
        display: block;
        width: 100%;
        border: 1px solid #ebebeb;
        padding: 11px 20px;
        box-sizing: border-box;
        font-family: "Roboto", sans-serif;
        font-weight: 500;
        font-size: 13px;
    }

        input:focus, select:focus {
            border: 1px solid #E0E0E0;
        }

    label {
        font-size: 14px;
        font-weight: bold;
        font-family: 'Cabin', sans-serif;
        margin-bottom: 2px;
        display: block;
    }

    .form-radio {
        margin-bottom: 18px;
    }

        .form-radio input {
            width: auto;
            display: inline-block;
        }

    .radio-label {
        padding-right: 72px;

    }

    .form-radio-item {
        position: relative;
        margin-right: 45px;
    }

        .form-radio-item label {
            font-weight: 500;
            font-size: 13px;
            padding-left: 25px;
            position: relative;
            z-index: 9;
            display: block;
            cursor: pointer;
        }

    .check {
        display: inline-block;
        position: absolute;
        border: 1px solid #ebebeb;
        border-radius: 50%;
        -moz-border-radius: 50%;
        -webkit-border-radius: 50%;
        -o-border-radius: 50%;
        -ms-border-radius: 50%;
        height: 13px;
        width: 13px;
        top: 4px;
        left: 0px;
        z-index: 5;
        transition: border .25s linear;
        -webkit-transition: border .25s linear;
    }

        .check:before {
            position: absolute;
            display: block;
            content: '';
            width: 9px;
            height: 9px;
            border-radius: 50%;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            -o-border-radius: 50%;
            -ms-border-radius: 50%;
            top: 2px;
            left: 2px;
            margin: auto;
            transition: background 0.25s linear;
            -webkit-transition: background 0.25s linear;
        }

    input[type=radio] {
        position: absolute;
        visibility: hidden;
    }

        input[type=radio]:checked ~ .check {
            border: 1px solid #ff6801;
        }

            input[type=radio]:checked ~ .check::before {
                background: #ff6801;
            }

    .form-select {
        position: relative;
    }

    select {
        appearance: none !important;
        -moz-appearance: none !important;
        -webkit-appearance: none !important;
        -o-appearance: none !important;
        -ms-appearance: none !important;
        position: relative;
        background: 0 0;
        z-index: 10;
        cursor: pointer;
    }

    .select-icon {
        z-index: 0;
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        justify-content: center;
        -moz-justify-content: center;
        -webkit-justify-content: center;
        -o-justify-content: center;
        -ms-justify-content: center;
        align-items: center;
        -moz-align-items: center;
        -webkit-align-items: center;
        -o-align-items: center;
        -ms-align-items: center;
    }

        .select-icon i {
            justify-content: center;
            -moz-justify-content: center;
            -webkit-justify-content: center;
            -o-justify-content: center;
            -ms-justify-content: center;
            align-items: center;
            -moz-align-items: center;
            -webkit-align-items: center;
            -o-align-items: center;
            -ms-align-items: center;
            width: 40px;
            height: 20px;
            font-size: 18px;
            color: #999;
        }

    .form-submit {
        text-align: right;
        padding-top: 27px;
    }

    .submit {
        width: 140px;
        height: 40px;
        display: inline-block;
        font-family: 'Poppins';
        font-weight: 400;
        font-size: 13px;
        padding: 10px;
        border: none;
        cursor: pointer;
    }

    #reset {
        background: #f8f8f8;
        color: #999;
        margin-right: 8px;
        font-family: "Roboto", sans-serif;
        border-radius: 5px
    }

        #reset:hover {
            background: #f9a24d;
            color: #fff;
        }

    #submit {
        background: #f9a24d;
        color: #fff;
        font-family: "Roboto", sans-serif;
        border-radius: 5px
    }

        #submit:hover {
            background-color: #f9a24d;
        }

    @media screen and (max-width: 992px) {
        .container {
            width: calc(100% - 40px);
            max-width: 100%;
        }

        .signup-content {
            flex-direction: column;
            -moz-flex-direction: column;
            -webkit-flex-direction: column;
            -o-flex-direction: column;
            -ms-flex-direction: column;
        }

        .signup-img, .signup-form {
            width: 100%;
        }
    }

    @media screen and (max-width: 768px) {
        .register-form {
            padding: 50px 40px 50px 40px;
        }
    }

    @media screen and (max-width: 575px) {
        .form-row {
            flex-direction: column;
            -moz-flex-direction: column;
            -webkit-flex-direction: column;
            -o-flex-direction: column;
            -ms-flex-direction: column;
            margin: 0px;
        }

            .form-row .form-group {
                width: 100%;
                padding: 0px;
            }

        .radio-label {
            padding-right: 22px;
        }

        .form-radio-item {
            margin-right: 25px;
        }
    }

    @media screen and (max-width: 480px) {
        .form-radio {
            flex-direction: column;
            -moz-flex-direction: column;
            -webkit-flex-direction: column;
            -o-flex-direction: column;
            -ms-flex-direction: column;
        }

        .submit {
            width: 100%;
        }

        #reset {
            margin-right: 0px;
            margin-bottom: 10px;
        }
    }
    span{
        font-family:"Roboto", sans-serif;
        
    }
    /*# sourceMappingURL=style.css.map */

    
    .img2{
        width:30%
    }
    /* .error {
        color: red;
        font-size: 14px;
        margin-top: 5px;
    }*/
    .error {
        color: red;
    }


</style>
</head>
<body>
    <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="../img/room/pexels-fotoaibe-1643383.jpg" alt="image" />
                    <img src="../Img/room/pexels-pixabay-259962.jpg" alt="image" />
                </div>
                <div class="signup-form">
                    <form method="post" id="facilities_details" class="register-form" runat="server">

                        <h2>Hotels Facilities Details</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <asp:Label ID="lblNumberOfFacilities" runat="server" Text="Enter number of facilities: "></asp:Label>
                                <asp:TextBox ID="txtNumberOfFacilities" runat="server"></asp:TextBox>
                                <asp:Button ID="btnAddFacilities" runat="server" Text="Add Facilities" OnClientClick="return AddFacilities();" />

                                <div id="facilitiesPlaceholder"></div>


                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="facilitiesdescription_lb" runat="server" Text="Description"></asp:Label>
                            <asp:TextBox ID="facilitiesdescription_txt" runat="server" TextMode="MultiLine" Columns="50" Rows="4" CssClass="form-control"></asp:TextBox>
                            <span id="facilitiesdescriptionerror" class="error" runat="server"></span>
                        </div>
                        




                        <asp:Button ID="btnSubmitFacilities" runat="server" Text="Submit Facilities" CssClass="submit" OnClick="btnSubmitFacilities_Click" />

                        
                    </form>
                </div>
            </div>
        </div>

    </div>
    <script type="text/javascript">
        function AddFacilities() {
            var numberOfFacilities = document.getElementById('<%= txtNumberOfFacilities.ClientID %>').value;
            var placeholder = document.getElementById('facilitiesPlaceholder');
            placeholder.innerHTML = ''; // Clear existing fields

            for (var i = 0; i < numberOfFacilities; i++) {
                var input = document.createElement('input');
                input.type = 'text';
                input.name = 'facility' + i;
                input.placeholder = 'Enter facility ' + (i + 1);
                placeholder.appendChild(input);
                placeholder.appendChild(document.createElement('br')); // Line break
            }

             return false; // Prevent postback
        }
    </script>

</body>
</html>