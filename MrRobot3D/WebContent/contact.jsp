<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Contact Us</title>

       <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- for fontawesome icon css file -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- superslides css -->
    <link rel="stylesheet" href="css/superslides.css">
    <!-- for content animate css file -->
    <link rel="stylesheet" href="css/animate.css">    
    <!-- slick slider css file -->
    <link href="css/slick.css" rel="stylesheet">        
    <!-- website theme color file -->   
     <link id="switcher" href="css/themes/cyan-theme.css" rel="stylesheet">    
    <!-- main site css file -->    
    <link href="css/style.css" rel="stylesheet" type="text/css">    
    <!-- google fonts  -->  
    <link href='css/cyrillic.css' rel="stylesheet" type="text/css">    
    <link href="css/latin.css" rel="stylesheet" type="text/css">  
    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">  
  
  
  </head>
<body>

<%@ include file="../fragments/navbar.jsp"  %>

  <!-- start Contact section -->
  <section id="contact">
    <div class="row">
      <div class="col-lg-12 col-md-12">
        <div class="contact_map">
          <!-- Start Google map -->
          <div id="map_canvas"></div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
         <div class="contact_area">
           <div class="client_title">
              <hr>
              <h2>Hai problemi? <span>Contattaci!</span></h2>
            </div>
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="contact_left wow fadeInLeft">
                  <form class="submitphoto_form">
                    <input type="text" class="form-control wpcf7-text" placeholder="Il tuo nome">
                    <input type="mail" class="form-control wpcf7-email" placeholder="Indirizzo email">          
                    <input type="text" class="form-control wpcf7-text" placeholder="Oggetto">
                    <textarea class="form-control wpcf7-textarea" cols="30" rows="10" placeholder="Vorrei chiedervi..."></textarea>
                    <input type="submit" value="Submit" class="wpcf7-submit photo-submit">                     
                  </form>
                </div>                  
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="contact_right wow fadeInRight">
                  <img src="img/phone_icon.png" alt="img">
                  <p>Contattaci! Vogliamo sapere cosa hai da dire. Siamo aperti al feedback e qualsiasi domanda tu possa avere ti saremo d'aiuto.</p>
                  <address>
                    <p><a href=""> Support@Project3D.it</a></p>
                    <p>Italia   +39 123 4567</p>
                    <p>USA   +1 415 425 4149</p>
                  </address>
                </div>
              </div>
            </div>              
         </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End Contact section -->
      
<%@ include file="../fragments/footer.jsp"%>

  
 
  
  <!-- jQuery Library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

  <!-- For content animatin  -->
  <script src="js/wow.min.js"></script>
  <!-- bootstrap js file -->
  <script src="js/bootstrap.min.js"></script> 

  <!-- superslides slider -->
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.animate-enhanced.min.js"></script>
  <script src="js/jquery.superslides.min.js" type="text/javascript" charset="utf-8"></script>
  <!-- slick slider js file -->
  <script src="js/slick.min.js"></script>
  <!-- Google map -->
  <script src="https://maps.googleapis.com/maps/api/js"></script>
  <script src="js/jquery.ui.map.js"></script>


  <!-- custom js file include -->
  <script src="js/custom.js"></script>   
      
  </body>
</html>