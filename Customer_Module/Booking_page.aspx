﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking_page.aspx.cs" Inherits="BookInn.Customer_Module.Booking_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking Page</title>

         <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>

    <!-- Include Flatpickr CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css" />

    <!-- Include Flatpickr JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
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
    .facilities-grid input[type="checkbox"] {
        width: 20px; /* Adjust as needed */
        margin-right: 5px; /* Add spacing between checkbox and label */
    }
    .facilities-grid label {
        display: block;
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
                    <form  class="register-form" runat="server">

                        <h2>Booking Form</h2>
                        <div class="form-row">
                           
                            <div class="form-group">
                                <asp:Label ID="lb_guestname" runat="server" Text="Guest Full Name"></asp:Label>
                                <asp:TextBox ID="guestname_txt" CssClass="form-control" placeholder="full name*" runat="server"></asp:TextBox>
                                <span id="guestname_error" class="error" runat="server"></span>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <asp:Label ID="lb_guestemail" runat="server" Text="Email"></asp:Label>
                                <asp:TextBox runat="server" ID="guestemail_txt" placeholder="email*" CssClass="form-control"></asp:TextBox>
                                <span id="guestemail_error" class="error" runat="server"></span>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lb_contact" runat="server" Text="Contact Number"></asp:Label>
                                <asp:TextBox runat="server" ID="guestcontact_txt" TextMode="Number" placeholder="phone no*" CssClass="form-control"></asp:TextBox>
                                <span id="guestcontact_error" class="error" runat="server"></span>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <asp:Label ID="lb_location" runat="server" Text="Location"></asp:Label>
                                <asp:TextBox ID="guestlocation_txt" runat="server" placeholder="location*" CssClass="form-control"></asp:TextBox>
                                <span id="guestlocation_error" class="error" runat="server"></span>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lb_gender" runat="server">Gender</asp:Label>
                                <asp:DropDownList ID="guestgender" runat="server" CssClass="form-control">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="Male">Male</asp:ListItem>
                                    <asp:ListItem Value="Female">Female</asp:ListItem>
                                </asp:DropDownList>
                                <span id="gender_error" class="error" runat="server"></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <asp:Label ID="lb_checkin" runat="server" Text="Check-In Date"></asp:Label>
                                <asp:TextBox ID="checkinDateTextBox" CssClass="form-control date-input" runat="server"></asp:TextBox>
                                <span id="checkin_error" class="error" runat="server"></span>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lb_checkout" runat="server" Text="Check-Out Date"></asp:Label>
                                <asp:TextBox ID="checkoutDateTextBox" CssClass="form-control date-input" runat="server"></asp:TextBox>
                                <span id="checkout_error" class="error" runat="server"></span>
                            </div>
                        </div>
                        <div class="form-row">

                            <div class="form-group">
                                <asp:Label ID="lb_adults" runat="server">Adults</asp:Label>
                                <asp:DropDownList ID="adults_dropdown" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="1 Adult">1 Adult</asp:ListItem>
                                    <asp:ListItem Value="2 Adults">2 Adults</asp:ListItem>
                                    <asp:ListItem Value="3 Adults">3 Adults</asp:ListItem>
                                    <asp:ListItem Value="4 Adults">4 Adults</asp:ListItem>
                                    <asp:ListItem Value="5 Adults">5 Adults</asp:ListItem>
                                    <asp:ListItem Value="6 Adults">6 Adults</asp:ListItem>
                                    <asp:ListItem Value="7 Adults">7 Adults</asp:ListItem>
                                    <asp:ListItem Value="8 Adults">8 Adults</asp:ListItem>
                                    <asp:ListItem Value="9 Adults">9 Adults</asp:ListItem>
                                    <asp:ListItem Value="10 Adults">10 Adults</asp:ListItem>
                                </asp:DropDownList>
                                <span id="adults_error" class="error" runat="server"></span>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lb_childers" runat="server">Childers</asp:Label>
                                <asp:DropDownList ID="childers_dropdown" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="0"></asp:ListItem>
                                    <asp:ListItem Value="1 Children">1 Children</asp:ListItem>
                                    <asp:ListItem Value="2 Childrens">2 Childrens</asp:ListItem>
                                    <asp:ListItem Value="3 Childrens">3 Childrens</asp:ListItem>
                                    <asp:ListItem Value="4 Childrens">4 Childrens</asp:ListItem>
                                    <asp:ListItem Value="5 Childrens">5 Childrens</asp:ListItem>
                                    <asp:ListItem Value="6 Childrens">6 Childrens</asp:ListItem>
                                    <asp:ListItem Value="7 Childrens">7 Childrens</asp:ListItem>
                                    <asp:ListItem Value="8 Childrens">8 Childrens</asp:ListItem>
                                    <asp:ListItem Value="9 Childrens">9 Childrens</asp:ListItem>
                                    <asp:ListItem Value="10 Childrens">10 Childrens</asp:ListItem>
                                    
                                </asp:DropDownList>
                                <span id="children_error" class="error" runat="server"></span>
                            </div>

                        </div>
                        <div class="form-group">
                            <asp:Label ID="lb_rooms" runat="server">Rooms</asp:Label>
                            <asp:DropDownList ID="Rooms_dropdown" runat="server" CssClass="form-control">
                                <asp:ListItem Value="1">1 Rooms</asp:ListItem>
                                <asp:ListItem Value="2">2 Rooms</asp:ListItem>
                                <asp:ListItem Value="3">3 Rooms</asp:ListItem>
                                <asp:ListItem Value="4">4 Rooms</asp:ListItem>
                                <asp:ListItem Value="5">5 Rooms</asp:ListItem>
                                <asp:ListItem Value="6">6 Rooms</asp:ListItem>
                                <asp:ListItem Value="7">7 Rooms</asp:ListItem>
                                <asp:ListItem Value="8">8 Rooms</asp:ListItem>
                                <asp:ListItem Value="9">9 Rooms</asp:ListItem>
                                <asp:ListItem Value="10">10 Rooms</asp:ListItem>
                            </asp:DropDownList>
                            <span id="room_error" runat="server" class="error"></span>
                        </div>


                        <div class="form-submit">
                          
                            <asp:Button ID="submit" runat="server" Text="Submit Form" CssClass="submit" OnClientClick="return validateForm()" OnClick="submit_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Initialize Flatpickr for "Check In" input field
            flatpickr("#checkinDateTextBox", {
                defaultDate: "today", // Set default date to today
                minDate: "today", // Minimum date allowed is today
                dateFormat: "m-d-Y", // Date format
                onChange: function (selectedDates) {
                    // When a date is selected for "Check In", set minimum date for "Check Out"
                    if (selectedDates.length > 0) {
                        flatpickr("#checkoutDateTextBox", {
                            defaultDate: selectedDates[0],
                            minDate: selectedDates[0], // Minimum date allowed is the selected "Check In" date
                            dateFormat: "m-d-Y" // Date format
                        });
                    }
                }
            });

            // Initialize Flatpickr for "Check Out" input field
            flatpickr("#checkoutDateTextBox", {
                defaultDate: "today", // Set default date to today
                minDate: "today", // Minimum date allowed is today
                dateFormat: "m-d-Y", // Date format
            });
        });
        function validateForm() {
            var guestname = document.getElementById("guestname_txt").value;
            var guestemail = document.getElementById("guestemail_txt").value;
            var guestcontact = document.getElementById("guestcontact_txt").value;
            var guestlocation = document.getElementById("guestlocation_txt").value;
            var regexEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            var regexContact = /^\d{10}$/; // Assuming 10 digit phone number
            var regexName = /^[a-zA-Z\s]*$/; // Only alphabets and spaces for name
            var regexLocation = /^[a-zA-Z\s]*$/; // Only alphabets and spaces for location

            var isValid = true;

            if (!regexName.test(guestname)) {
                document.getElementById("guestname_error").innerHTML = "enter a valid name";
                isValid = false;
            } else {
                document.getElementById("guestname_error").innerHTML = "";
            }

            if (!regexEmail.test(guestemail)) {
                document.getElementById("guestemail_error").innerHTML = "enter a valid email address";
                isValid = false;
            } else {
                document.getElementById("guestemail_error").innerHTML = "";
            }

            if (!regexContact.test(guestcontact)) {
                document.getElementById("guestcontact_error").innerHTML = "enter a valid 10-digit phone number";
                isValid = false;
            } else {
                document.getElementById("guestcontact_error").innerHTML = "";
            }

            if (!regexLocation.test(guestlocation)) {
                document.getElementById("guestlocation_error").innerHTML = "enter a valid location";
                isValid = false;
            } else {
                document.getElementById("guestlocation_error").innerHTML = "";
            }

            return isValid; // Return true if all fields pass validation, false otherwise
        }
    </script>
</body>
</html>