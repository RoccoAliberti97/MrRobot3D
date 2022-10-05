<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mr. Robot 3D</title>

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
    <link href="css/cyrillic.css" rel="stylesheet" type="text/css">    
    <link href="css/latin.css" rel="stylesheet" type="text/css">  
    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">  
  
  
  </head>
<body> 

<%@ include file="../fragments/navbar.jsp"  %>

  <!-- start slider section -->
  <section id="sliderSection">            
    <div class="mainslider_area">
      <!-- Start super slider -->
      <div id="slides">
        <ul class="slides-container">
          <!-- Start single slider-->
          <li>
            <img src="img/slider/1.jpg" alt="img">
            <div class="slider_caption">
              <h2><span>Welcome To</span> Mr. Robot 3D</h2>
              <p>Mr. Robot 3D e' il nuovo e-commerce dedicato al mondo della Digital Fabrication. Troverete i migliori marchi mondiali di Stampanti 3D, Scanner 3D, Filamenti per la Stampa e tutte le novita' di settore. Inoltre, grazie alla rete nazionale dello Store Mr. Robot 3D, la qualita' del servizio di vendita online si arricchisce del valore offerto dal personale Mr. Robot 3D posizionato sull'intero territorio nazionale.</p>
              <a class="slider_btn" href="<%=request.getContextPath()%>/page.jsp">Read More</a>
            </div>
          </li> 
          <!-- Start single slider-->           
          <li>
            <img src="img/slider/3.jpg" alt="img">
             <div class="slider_caption">
              <h2>Beautiful <span>Clear and Flexible</span></h2>
              <p>Mr. Robot 3D dispone di una grande varieta' di stampanti e strumentazioni per la lavorazione di materiale in PLA e PLC dunque dispone di un' assistenza online 24h/24 attiva in chat con un operatore e tramite e-mail di assistenza tecnica per eventuali problemi dal cliente.</p>
              <a class="slider_btn" href="<%=request.getContextPath()%>/page.jsp">Read More</a>
            </div>
            </li>
          <!-- Start single slider-->
          <li>
            <img src="img/slider/2.jpg" alt="img">
             <div class="slider_caption">
              <h2><span>Beausiness</span> & Corporate</h2>
              <p>Mr. Robot 3D dispone di una grande varieta' di stampanti e strumentazioni per la lavorazione di materiale in PLA e PLC dunque dispone di un' assistenza online 24h/24 attiva in chat con un operatore e tramite e-mail di assistenza tecnica per eventuali problemi dal cliente.</p>
              <a class="slider_btn" href="<%=request.getContextPath()%>/page.jsp">Read More</a>
            </div>
           </li>
        </ul>
        <nav class="slides-navigation">
          <a href="#" class="next"></a>
          <a href="#" class="prev"></a>
        </nav>
      </div>
    </div>   
  </section>
  <!-- End slider section -->

  <!-- Start Service area -->
  <section id="service">
    <div class="container">
      <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="service_area">
          <div class="service_title">
            <hr>
            <h2>Mr. Robot 3D</h2>
         <p>Tra i brand piu' importanti a livello internazionale. </p>
          </div>
          <ul class="service_nav wow flipInX">
            <li>
              <a class="service_icon" href="<%=request.getContextPath()%>/blog-archive.jsp"><i class="fa fa-users"></i></a>
              <h2>Svariati progetti realizzati in collaborazione con enti internazionali</h2>
              <p>Nasce un parco tecnologico di stampa 3D con al centro la BigDelta di Mr.Robot3D alta 12 metri. Succede ad Amsterdam (Paesi Bassi) grazie alla collaborazione tra l'azienda salernitana e l'azienda di Information Technologies di Amsterdam e il rettorato estero, che ha messo a disposizione un'area verde del paese.</p>
              <a class="read_more" href="<%=request.getContextPath()%>/blog-archive.jsp">read more<i class="fa fa-long-arrow-right"></i></a>
            </li>
           <li>
              <a class="service_icon" href="<%=request.getContextPath()%>/carrello.jsp"><i class="fa fa-gears"></i></a>
              <h2>Qualita' ed efficienza</h2>
              <p>Le stampanti della nostra produzione sono per i professionisti che cercano una stampante 3D con una qualita' costruttiva eccezionale in grado di produrre componenti di alta qualita', in modo affidabile ed efficiente. Si tratta di macchine desktop estremamente avanzate con una varieta' di applicazioni. Le nostre stampanti sono adatte per designer professionisti nonche' piccole e grandi imprese.</p>
              <a class="read_more" href="<%=request.getContextPath()%>/carrello.jsp">read more<i class="fa fa-long-arrow-right"></i></a>
            </li>
            <li>
              <a class="service_icon" href="<%=request.getContextPath()%>/contact.jsp"><i class="fa fa-support"></i></a>
              <h2>Assistenza e supporto</h2>
              <p>Mr. Robot 3D dispone di una grande varieta' di stampanti e strumentazioni per la lavorazione di materiale in PLA e PLC dunque dispone di un' assistenza online 24h/24  tramite e-mail di assistenza tecnica per eventuali problemi riscontrati dal cliente.</p>
              <a class="read_more" href="<%=request.getContextPath()%>/contact.jsp">read more<i class="fa fa-long-arrow-right"></i></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <!-- End Service area -->

  <!-- start How it works area -->
  <section id="howWorks">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
          <div class="howworks_area">
            <div class="client_title">
              <hr>
              <h2>Come <span>Lavoriamo</span></h2>
            </div>
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="howworks_slider wow fadeInLeftBig">
                  <div class="slider_area">
                      <!-- Set up your HTML -->
                    <div class="slick_slider">
                      <div class="single_iteam">
                        <a> <img src="images/BetaClass.jpg" alt="img"></a>                          
                      </div>
                      <div class="single_iteam">
                        <a> <img src="images/DeltaTurbo.jpg" alt="img"></a>                          
                      </div>
                      <div class="single_iteam">
                        <a> <img src="images/DeltaIndustrial.jpg" alt="img"></a>                          
                      </div>
                      <div class="single_iteam">
                        <a> <img src="images/DeltaXXL12m.jpg" alt="img"></a>                          
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="howworks_featured wow fadeInRightBig">
                <!-- single featured -->
                  <div class="media">
                    <a class="media-left media-middle" href="<%=request.getContextPath()%>/carrello.jsp">
                      <i class="fa fa-laptop"></i>
                    </a>
                    <div class="media-body">
                      <h4 class="media-heading">Acquisti Online</h4>
                      <p>Mr.Robot3D e' il primo sito e-commerce in Italia in cui puoi ordinare la tua stampante direttamente dal tuo pc!</p>
                    </div>
                  </div>
                  <!-- End single featured -->

                  <!-- single featured -->
                  <div class="media">
                    <a class="media-left media-middle" href="#">
                      <i class="fa fa-legal"></i>
                    </a>
                    <div class="media-body">
                      <h4 class="media-heading">Consegna a domicilio</h4>
                      <p>Inserisci i tuoi dati di fatturazione per ricevere la tua stampante direttamente nella tua abitazione!</p>
                    </div>
                  </div>
                  <!-- End single featured -->

                  <!-- single featured -->
                  <div class="media">
                    <a class="media-left media-middle" href="#">
                      <i class="fa fa-line-chart"></i>
                    </a>
                    <div class="media-body">
                      <h4 class="media-heading">Assistenza e Supporto</h4>
                      <p>Il nostro staff altamente competente sara' in grado di assisterti in ogni momento.</p>
                    </div>
                  </div>
                  <!-- End single featured -->
                  <a class="featured_btn" href="#">Scopri i prodotti!</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End How it works area -->

  <!-- start Our Team area -->
  <section id="ourTeam">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
          <div class="team_area wow fadeInLeftBig">
            <div class="team_title">
              <hr>
              <h2>Incontra <span>il nostro Staff</span></h2>
              <p>Il nostro personale altamente qualificato dispone di una grande varieta' di professionisti appassionati del settore in grado di aiutarti in qualsiasi momento e assisterti dall'acquisto alla manutenzione dei nostri prodotti.</p>
            </div>
            <div class="team">
              <ul class="team_nav">
              <li>
              </li>
                <li>
                  <div class="team_img">
                    <img src="img/tony.png" alt="team-img">
                  </div>
                  <div class="team_content">
                    <h4 class="team_name">Antonio De Luca</h4>
                    <p>Founder & CEO</p>
                  </div>
                  <div class="team_social">
                    <a href="https://www.facebook.com/AntonioDeLuca21"><span class="fa fa-facebook"></span></a>
                    <a href="https://twitter.com/"><span class="fa fa-twitter"></span></a>
                    <a href="https://www.linkedin.com/in/antonio-de-luca-2b6207159/"><span class="fa fa-instagram"></span></a>
                    <a href="https://www.google.com/intl/it/gmail/about/#"><span class="fa fa-google-plus"></span></a>
                  </div>
                </li>
                <li>
                  <div class="team_img">
                    <img src="img/rocco.png" alt="team-img">
                  </div>
                  <div class="team_content">
                    <h4 class="team_name">Rocco Aliberti</h4>
                    <p>Founder & CEO</p>
                  </div>
                  <div class="team_social">
                    <a href="https://www.facebook.com"><span class="fa fa-facebook"></span></a>
                    <a href="https://twitter.com"><span class="fa fa-twitter"></span></a>
                    <a href="https://www.linkedin.com"><span class="fa fa-instagram"></span></a>
                    <a href="https://www.google.com/intl/it/gmail/about/#"><span class="fa fa-google-plus"></span></a>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End Our Team area -->

  <!-- start special quote -->
  <section id="specialQuote">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 wow bounceInLeft">
          <p>Le tue idee e i tuoi progetti diventano finalmente realta' con le nostre stampanti ad alta definizione!</p>
        </div>
      </div>
    </div>
  </section>
  <!-- End special quote -->

  <!-- start featured blog area -->
  <section id="featuredBlog">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
          <div class="featuredBlog_area">
            <div class="team_title">
              <hr>
              <h2>News <span>Dal Nostro Blog</span></h2>
              <p>Le nostre ultime manifestazioni alla tua portata! Scopri i nostri progetti e lavori svolti in collaborazione con enti internazionali specializzati nel settore.</p>
              </div>
            <!-- start featured blog -->
            <div class="featured_blog">
              <div class="row">
                <!-- start single featured blog -->
                <div class="col-lg-4 col-md-4 col-sm-4">
                  <div class="single_featured_blog">                      
                    <img alt="img" src="images/arti.jpg">
                    <h2>One Hand for Syria: arti protesici stampati in 3d per l'Universita' di Damasco. </h2>
                    <div class="post_commentbox">
                      <a href="#"><i class="fa fa-tags"></i>Technology</a>
                      <a href="#"><i class="fa fa-comments"></i>Medicin</a>
                      <a href="#"><i class="fa fa-comments"></i>Comments</a>      
                    </div>
                    <p>Progettare, produrre e distribuire arti o parti di essi ai mutilati di guerra.</p>
                    <a href="<%=request.getContextPath()%>/blog-archive.jsp" class="read_more">read more<i class="fa fa-long-arrow-right"></i></a>
                  </div>
                </div>
                <!-- start single featured blog -->
                <div class="col-lg-4 col-md-4 col-sm-4">
                  <div class="single_featured_blog">                      
                    <img alt="img" src="images/manichini.jpg">
                    <h2>Manichini stampati in 3D all'evento mondiale di moda a Milano.</h2>
                    <div class="post_commentbox">
                      <a href="#"><i class="fa fa-tags"></i>Technology</a>
                      <a href="#"><i class="fa fa-comments"></i>Style</a>  
                      <a href="#"><i class="fa fa-comments"></i>Comments</a>    
                    </div>
                    <p>La prima serie di manichini stampati in 3D con la Delta WASP 3MT Industrial utilizzando una tecnologia che ha permesso di stampare i manichini velocemente</p>
                   <a href="<%=request.getContextPath()%>/blog-archive.jsp" class="read_more">read more<i class="fa fa-long-arrow-right"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End featured blog area -->

  <!-- start clients brand area -->
  <section id="clients_brand">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
          <div class="clients_brand_area wow flipInX">
            <div class="client_title">
              <hr>
              <h2><span>Our</span> Partners</h2>
            </div>              
            <div class="clients_brand">
              <!-- Start clients brand slider -->
             <ul class="clb_nav wow flipInX">
               <li><img src="img/envato-studio.png" alt="brand-img"></li>
               <li><img src="img/codecanyon.png" alt="brand-img"></li>
               <li><img src="img/audiojungle.png" alt="brand-img"></li>
               <li><img src="img/themeforest.png" alt="brand-img"></li>
               <li><img src="img/envato-studio.png" alt="brand-img"></li>
               <li><img src="img/codecanyon.png" alt="brand-img"></li>
               <li><img src="img/audiojungle.png" alt="brand-img"></li>
               <li><img src="img/themeforest.png" alt="brand-img"></li>
             </ul>
             <!-- End clients brand slider -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End clients brand area -->  

<%@ include file="../fragments/footer.jsp" %> 
  
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