<%-- 
    Document   : index
    Created on : 19-Mar-2016, 10:12:20
    Author     : Ruturaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>

<!DOCTYPE html>
<html lang="en">


 
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
                <a href="#portfolio" onclick = $("#menu-close").click(); >Email Us</a>
            </li>
            <li>
                <a href="#contact" onclick = $("#menu-close").click(); >Contact</a>
            </li>
            <li>
                <a href="#contact" onclick = $("#menu-close").click(); >Log Out</a>
            </li>
        </ul>
    </nav>

    <!-- Header -->
    <header id="top" class="header">
        <div class="text-vertical-center">
            <h1>EZee2Dial</h1>
          
            <br><form method="post" action="Login.jsp">
               <input type = 'submit' name = "signin" value="Sign In" class="btn btn-dark btn-lg"/>
                <input type = 'submit' name = "signup" value="Sign Up" class="btn  btn-dark btn-lg"/></form>
    </header>

    <!-- About -->
    <section id="about" class="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Search Your Destination Here...</h2>
                    <p class="lead">Explore the wonderful features of <a target="_blank" href="http://join.deathtothestockphoto.com/">www.EZee2Dial.com</a>.</p>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
    <!-- Services -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h2>Discover Your Need!</h2>
                    <hr class="large">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-h-square fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Hotels</strong>
                                </h4>
                              
                                <a href="hotels.jsp" class="btn btn-light">Explore More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-coffee fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Coffee Shops</strong>
                                </h4>
                                
                                <a href="#" class="btn btn-light">Explore More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-money fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Banks</strong>
                                </h4>
                              
                                <a href="#" class="btn btn-light">Explore More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-taxi fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Taxi Service</strong>
                                </h4>
                                
                                <a href="#" class="btn btn-light">Explore More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-university fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>University</strong>
                                </h4>
                                
                                <a href="#" class="btn btn-light">Explore More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-plus fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Hospitals</strong>
                                </h4>
                                
                                <a href="#" class="btn btn-light">Explore More</a>
                            </div>
                        </div><div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-shopping-cart fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Shopping</strong>
                                </h4>
                                
                                <a href="#" class="btn btn-light">Explore More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-bus fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Bus Service</strong>
                                </h4>
                                
                                <a href="#" class="btn btn-light">Explore More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-film fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Cinema</strong>
                                </h4>
                                
                                <a href="#" class="btn btn-light">Explore More</a>
                            </div>
                        </div>
                        
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-child fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Child Care</strong>
                                </h4>
                                
                                <a href="#" class="btn btn-light">Explore More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-mobile fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Phone Services</strong>
                                </h4>
                              
                                <a href="#" class="btn btn-light">Explore More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-exclamation-triangle fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Emergency Services</strong>
                                </h4>
                               
                                <a href="#" class="btn btn-light">Explore More</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Callout -->
    <aside class="callout">
        <div class="text-vertical-center">
            <h1>Refine Your Search</h1>
        </div>
    </aside>



    <!-- Call to Action -->
    <aside class="call-to-action bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>Discover Your Destination...</h3>
                    <a href="#" class="btn btn-lg btn-light">Click Here!</a>
                    <a href="#" class="btn btn-lg btn-dark">Look Up!</a>
                </div>
            </div>
        </div>
    </aside>

    <!-- Map -->
    <section id="contact" class="map">
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23354.391470277475!2d-82.3406557256635!3d42.97197620977829!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0x8f33c2e6a2ccfad1!2sLambton+College!5e0!3m2!1sen!2sca!4v1458483380047" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
        <br />
        <small>
            <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
        </small>
        </iframe>
    </section>

    <!-- Footer -->
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
