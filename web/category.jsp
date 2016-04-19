<%-- 
    Document   : hotels
    Created on : 20-Mar-2016, 10:40:09
    Author     : Ruturaj
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
         <%@include file="header.html" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://fonts.googleapis.com/css?family=Droid+Serif' rel='stylesheet' type='text/css'>
        <title>JSP Page</title>
    </head>
    <body class="custom_image_bg">
    
    
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
                <a href="#contact" onclick = $("#menu-close").click(); >Contact</a>
            </li>
                        <li>
                <a href="#contact" onclick = $("#menu-close").click(); >My Account</a>
            </li>
            <li> 
                 <a href="index.jsp" onclick = $("#menu-close").click(); >Log Out</a> 
            </li>
        </ul>
    </nav>
    
     <section id="services" class="services bg-primary">
         <div class="container">
            <img src= "img/mylogo.png" class="img-responsive" /> 
         </div>
        <nav class="nav-custome">
            <div class="container">
            <div class="navbar-header">
		 <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          <a class="navbar-brand" href="#"></a>
             </div>
        <div id="navbar" class="collapse navbar-collapse">
		
          <ul class="nav navbar-nav">
            <li><a href="#" >Home</a></li>
		<li><a href="#">About</a></li>
		<li><a href="#" class="current">Services</a></li>
		<li><a href="#">Contact</a></li>
		<li><a href="#">Email Us</a></li>
                <li><a href="#">My Account</a></li>
          </ul>
         </div><!--/.nav-collapse -->
         </div>
        </nav>
         </div>
     </section>
    
     
    
     <% 
         
            String hostname = "localhost";
            String port = "3306";
            String dbname = "user_login";
            String username = "root";
            String password = "";
            String val_btn =  request.getParameter("submit");   
            String jdbc = String.format("jdbc:mysql://%s:%s/%s", hostname, port, dbname);
             try {
           
            Connection connection = DriverManager.getConnection(jdbc, username, password);
 
            Statement st = connection.createStatement();

            String id = request.getParameter("id");  

            String sql ="select * from info where catagory = '"+val_btn+"'";
 
            
            PreparedStatement pstmt = connection.prepareStatement(sql);
            
            ResultSet rs = pstmt.executeQuery(sql);
           boolean val = true;
            
            ResultSetMetaData rsm = rs.getMetaData();
           while (rs.next()) {
                     
             if(val==true){
                 
             %>
             
             
     <div class="col-lg-2 custom_content_category"> 
         <h2>Popular Categories</h2>
                <ul class="category">
                    <li><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="Hotels">
                        </form></li>
                    <li><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="Coffee Shops">
                        </form></li>
                    <li><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="Banks">
                        </form></li>
                    <li class="category_btn"><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="Taxi Service">
                        </form></li>
                    <li><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="University">
                        </form></li>
                    <li><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="Hospitals">
                        </form></li>
                    <li><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="Shopping">
                        </form></li>
                    <li><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="Bus Service">
                        </form></li>
                    <li><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="Cinema">
                        </form></li>
                    <li><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="Child Care">
                        </form></li>
                    <li><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="Phone Services">
                        </form></li>
                    <li><form action="category.jsp" >
                        <input type="submit" name="submit" class="btn btn-light" value ="Emergency Services">
                        </form></li>                   
                        
                        
                        
<!--                    <li><a href="#">Coffee Shops</a></li>
                    <li><a href="#">Banks</a></li>
                    <li><a href="#">Taxi Service</a></li>
                    <li><a href="#">University</a></li>
                    <li><a href="#">Hospitals</a></li>
                    <li><a href="#">Shopping</a></li>
                    <li><a href="#">Bus Service</a></li>
                    <li><a href="#">Cinema</a></li>
                    <li><a href="#">Child Care</a></li>
                    <li><a href="#">Phone Services</a></li>
                    <li><a href="#">Emergency Services</a></li>-->
                  </ul>  
              
              </div>    
             
             
            
             <%
                 val = false;
             }   
              %>
    
              
              <div class="container-fluid description ">
              <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/<%= rs.getString("image")%>"/>
                </div>
                
                <div class="col-lg-4 col-md-8 col-sm-4 detail  ">
                    <p><h2><%= rs.getString("biz_name")%><br></h2>
                        <%= rs.getString("address")%><br>
                        <%= rs.getString("first_name")%><br>
                        <%= rs.getString("email")%><br>
                        <%= rs.getString("contact_no")%></p>
                        <form action="index1.jsp" >
                                    <input type="submit" name="submit" class="btn btn-light" value ="Price List">
                            </form>
                </div>
                
 
              </div>
                  <hr class="hrline">

             </div>
              </div> 
              <%
                
                }
                
            }  
             catch(Exception e){
                 out.println(e);
             }
        %>
 
        <footer class="foot">
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
