

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>
    body {
     font-family: Arial, Helvetica, sans-serif;
                }


    * {
        box-sizing: border-box;
    }

    /* Full-width input fields */
    input[type=text],
    input[type=password] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    /* Add a background color when the inputs get focus */
    input[type=text]:focus,
    input[type=password]:focus {
        background-color: #ddd;
        outline: none;
    }

    /* Set a style for all buttons */
    button {
        background-color: #888;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
    }

    button:hover {
        opacity: 1;
    }
                .lname{
                padding-right:50px;
                }
                
                
    /* Extra styles for the cancel button */
    .cancelbtn {
        padding: 14px 20px;
        background-color: #f44336;
    }

    /* Float cancel and signup buttons and add an equal width */
    .cancelbtn,
    .signupbtn {
        float: left;
        width: 50%;
    }

    /* Add padding to container elements */
    .container {
        padding: 16px;
    }

    /* The Modal (background) */
    .modal {
        display: none;
        /* Hidden by default */
        position: fixed;
        /* Stay in place */
        z-index: 1;
        /* Sit on top */
        left: 0;
        top: 0;
        width: 100%;
        /* Full width */
        height: 100%;
        /* Full height */
        overflow: auto;
        /* Enable scroll if needed */
        background-color: #474e5d;
        padding-top: 50px;
    }

    /* Modal Content/Box */
    .modal-content {
        background-color: #fefefe;
        margin: 5% auto 15% auto;
        /* 5% from the top, 15% from the bottom and centered */
        border: 1px solid #888;
        width: 80%;
        /* Could be more or less, depending on screen size */
    }

    /* Style the horizontal ruler */
    hr {
        border: 1px solid #f1f1f1;
        margin-bottom: 25px;
    }

    /* The Close Button (x) */
    .lname {
        padding-right: 50px;
    }

   body{ 
                background="C:\Users\839733\Desktop\project\front.jpg";
                background-repeat:no-repeat;
                background-position:center;
                background-attachment:fixed;
                background-size:400px 400px;
                padding:20px 20px 20px 20px;
                text-align:center;
                
                }

    .close {
        position: absolute;
        right: 35px;
        top: 15px;
        font-size: 40px;
        font-weight: bold;
        color: #f1f1f1;
    }

    .close:hover,
    .close:focus {
        color: #f44336;
        cursor: pointer;
    }

    /* Clear floats */
    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }

    /* Change styles for cancel button and signup button on extra small screens */
    @media screen and (max-width: 300px) {

        .cancelbtn,
        .signupbtn {
            width: 100%;
        }
    }

    #popUpWindow {
        background: black;
    }

    body {
        font-family: Arial;
        color: white;
                                text-align:center;
    }

    .split {
        height: 100%;
        width: 50%;
        position: fixed;
        z-index: 1;
        top: 0;
        overflow-x: hidden;
        padding-top: 20px;
    }

    .left {
        left: 0;
        background-color: #111;

    }

    .right {
        right: 0;
        background-color: aliceblue;
    }

    .centered {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;

    }

    .clr {
        font-family: harlow solid;
        text-align: left;
        font-size: 50px;
        color: black;

    }

    .centered img {
        width: 150px;
        border-radius: 50%;
    }
                
                
</style>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    <title>GetMed</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
   



    <nav class="navbar navbar-expand-lg fixed-top bg-dark">

        <img src="logo2.png" class="rounded float-left" alt="Logo" style="width:5%;height: 5%;">
        <a class="navbar-brand text-light float-left" href="#">
            GetMed</a>

    </nav>

    <br /><br /><br /><br /><br />


                    <h3 class="modal-title">Registration Form</h3>
               
                <!-- body -->
                <div class="form-group" >
                    <f:form  action="/home" role="form" modelAttribute="signup" method="post">
                        <table >
                            <tr class="name">
                                <td>First Name:</td>
                                <td >
                                
                                <f:input class="form-group" path="firstName" type="text"  name="firstName"  />
                                                               
                                                                                                                                <f:errors path="firstName"/>
                                                                                                                                </td>
                                </tr>
                                                                                                                                <tr><td class="lname">Last Name:</td>
                                <td><f:input class="form-group" path="lastName" type="text"  name="lastName" />
                                                                                                                                <f:errors path="lastName"/></td>
                            </tr>

                <tr >

                    <td>Age:</td>
                    <td><f:input path="age" class="form-group" type="number"  name="age" min="0" max="150"/>
                                                                                <f:errors path="age"/></td>
                    </tr>
                                                                <tr >
                                                                                <td>Gender:</td>
                                                                                <td><f:radiobutton path="gender"  name="gender" value="male"/>Male
                                                                                <f:radiobutton path="gender"  name="gender" value="female"/>Female
                                                                                <f:errors path="gender"/></td>
                                                                                </tr>
                
           

            <tr class="con">
                <td>Contact Number:</td>
                <td><f:input path="contact" class="form-group" type="text"  name="contact"  pattern="[6-9]{1}[0-9]{9}" />
                                                                <f:errors path="contact"/></td>
            </tr>

            <tr class="admin">
                <td>Email Id:</td>
                <td><f:input path="emailId" class="form-group" type="text"  name="emailId"  />
                                                                <f:errors path="emailId"/></td>
            </tr>

            <tr class="pass">
                <td>Password:</td>
                <td ><f:input path="password"  class="form-group" type="password" name="password"  />
                                                                <f:errors path="password"/>
                                                                </td>
            </tr>
            </table>

            
                <button type="submit" class="btn btn-outline-secondary btn-lg" >Submit</button>
                <button type="reset" class="btn btn-outline-secondary btn-lg">Reset</button>
            
            </f:form>
                	</div>
       
        <div>
</div>
    
</body>

</html>
