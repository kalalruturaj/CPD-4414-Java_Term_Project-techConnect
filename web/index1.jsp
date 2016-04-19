<%-- 
    Document   : index1
    Created on : 07-Apr-2016, 01:51:21
    Author     : Ruturaj
--%>

<%@page import="com.demo.Lookup"%>
<%@page import="com.demo.LookupController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Copyright 2016 Len Payne <len.payne@lambtoncollege.ca>.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->
<html>
    <head>
        <title>CPD4414-Midterm-2016W</title>
        <meta charset="UTF-8">
        <%@include file="header.html" %>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="http://code.jquery.com/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
        <link href="bootstrap/css/custom.css" rel="stylesheet" />
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script>
            
            $(document).ready(function () {
                getAll();
            });

            function getAll() {
                $.ajax({
                    url: "lookup",
                    method: "GET",
                    dataType: "json",
                     success: function (data) {
                        var html = '<tr><th>ID</th><th>Rooms</th><th>Description</th><th>Price</th></tr>';
                        for (var i = 0; i < data.length; i++) {
                            html += '<tr><td>' + data[i].id + '</td>';
                            html += '<td>' + data[i].rooms + '</td>';
                            html += '<td>' + data[i].description + '</td>';
                            html += '<td>' + data[i].price + '</td></tr>';
                        }
                        $('#output').html(html);
                    }
                })  
            }
 
        </script>
    </head>
    <body>
     <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">
                <a href="#top"  onclick = $("#menu-close").click(); >EZee2Dial</a>
            </li>
            <li>
                <a href="#top" onclick = $("#menu-close").click(); >Home</a>
            </li>
            <li>
                <a href="#about" onclick = $("#menu-close").click(); >About</a>
            </li>
            <li>
                <a href="#services" onclick = $("#menu-close").click(); >Services</a>
            </li>
            <li>
                <a href="#portfolio" onclick = $("#menu-close").click(); >My Account</a>
            </li>
            <li>
                <a href="#contact" onclick = $("#menu-close").click(); >Contact</a>
            </li>
            <li> 
                 <a href="index.jsp" onclick = $("#menu-close").click(); >Log Out</a> 
            </li>
        </ul>
    </nav>
    <!-- Navigation -->
    
     <section id="services" class="services bg-primary">
         <div class="container">
            <img src= "img/mylogo.png" class="img-responsive" /> 
         </div>
          </section>
        <nav class="nav-custome ">
            <div class="container">
            <div class="navbar-header">
		 <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          <a class="navbar-brand" href="#"></a>
             </div>
        <div id="navbar" class="collapse navbar-collapse nav-tabs">
		
          <ul class="nav navbar-nav ">
            <li ><a  href="#" >Home</a></li>
		<li><a href="#">About</a></li>
		<li><a href="#">Services</a></li>
		<li><a href="#">Contact</a></li>
		<li><a href="#">Email Us</a></li>
                <li><a href="#">My Account</a></li>
          </ul>
         </div><!--/.nav-collapse -->
         </div>
        </nav>
        
    
    
        <div class="container">            
            <table class="table" id="output"></table>
        </div>
    
<!--    footer-->
      <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h4><strong>EZeeDial</strong>
                    </h4>
                    <p>835 Devine Street<br>Sarnia, CA N7T 1P6</p>
                    <ul class="list-unstyled">
                        <li><i class="fa fa-phone fa-fw"></i> (123) 456-7890</li>
                        <li><i class="fa fa-envelope-o fa-fw"></i>  <a href="mailto:name@example.com">ezee2dial@gmail.com</a>
                        </li>
                    </ul>
                    <br>
                    <ul class="list-inline">
                        <li>
                            <a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i></a>
                        </li>
                    </ul>
                    <hr class="small">
                    <p class="text-muted">Copyright &copy; EZee2Dial 2016</p>
                </div>
            </div>
        </div>
    </footer>
 <%@include file="footer.html" %>
    </body>
</html>



 