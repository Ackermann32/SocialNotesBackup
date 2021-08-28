<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.Date"%>
    
<%@ page import ="java.io.InputStream" %>
    
<!DOCTYPE html>
<html>
<head prefix="og:http://ogp.me/ns#">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Aggiorna impostazioni</title>
  <link rel="icon" href="img/favicon.ico" />
  <link rel="stylesheet" type="text/css" href="css/change.css">

  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />


  <meta name="description" content="Manage your Uber Driving Partner account.">


  <!-- Errorception disabled as trial has expired
      <script>
        (function(_,e,rr,s){_errs=[s];var c=_.onerror;_.onerror=function(){var a=arguments;_errs.push(a);
        c&&c.apply(this,a)};var b=function(){var c=e.createElement(rr),b=e.getElementsByTagName(rr)[0];
        c.src="//beacon.errorception.com/"+s+".js";c.async=!0;b.parentNode.insertBefore(c,b)};
        _.addEventListener?_.addEventListener("load",b,!1):_.attachEvent("onload",b)})
        (window,document,"script","555fd83490f66327760016ad");
      </script>
  -->
  <!-- Raven for Sentry -->
  <script src="//cdn.ravenjs.com/1.1.11/jquery,native/raven.min.js"></script>
  <script>
    Raven.config('https://2f18d47e042011e5affda0369f46ff14@sentry.uberinternal.com/125', {
            // we highly recommend restricting exceptions to a domain in order to filter out clutter
            whitelistUrls: ['partners.uber.com']
        }).install();
  </script>


  <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400,500,700" type="text/css">

  <script>
    window.MP_REGISTER_DATA = {
      'user_id': 'd1e8fb76-bac0-42ff-bd82-d5b7b19b6ab5'
    };
  </script>


  <script>
    window.utag_data = {};
  </script>


  <link rel="stylesheet" type="text/css" href="https://d1a3f4spazzrp4.cloudfront.net/web-p2/stylesheets/home/icons.e225ddcb0b486de3046f4d4c231185ca.css">
  <link href="//d1a3f4spazzrp4.cloudfront.net/uber-icons/3.3.0/uber-icons.css" rel="stylesheet">
  <style>
  	.btn-principale{
  		background-color: #9697e7 !important;
  	}
  </style>
</head>

<body>

 <%
 
 if (session.getAttribute("username")==null){
	 String linkLogin = "login.jsp";
	 String encodeURL = response.encodeRedirectURL(linkLogin);
	 response.sendRedirect(encodeURL);
	 
 }
	 String nome = (String)session.getAttribute("nome");
	 String cognome = (String)session.getAttribute("cognome");
	 String username = (String)session.getAttribute("username");
	 InputStream img = (InputStream)session.getAttribute("img");
	 String email = (String)session.getAttribute("email");
	 String password = (String)session.getAttribute("password");
	 Date dataNascita = (Date)session.getAttribute("dataNascita");
	 String matricola = (String)session.getAttribute("matricola");
	// int coin = (int)session.getAttribute("coin");
	 String denominazione = (String)session.getAttribute("denominazione");
	 String dipName = (String)session.getAttribute("dipName");
	 
	 	 


 %>
 <%@include file="header_user.jsp" %>

 	<div class="flexbox height--full main-wrapper"> 

	<form action="ChangeProfile" method="POST" enctype="multipart/form-data" id="main-profile">




    <div class="contents flexbox hard">


      <div class="soft-double portable--hard">


        <h1 class="page-heading">Profilo</h1>


        <div class="inner bg-color--white">





          <!-- Main profile row -->


          <div class="row-group editable-main-row">
          
          
          
          
          
            <div class="grid data-row">
              <div class="grid__item one-quarter title">
                <img class="profile-picture" src=https://d1w2poirtb3as9.cloudfront.net/default.jpeg></img>
              </div>
              <!--
 -->
              <div class="grid__item one-half data" data-field="None">
                <h1><%=nome %> <%=cognome %></h1>
                <p class='data' data-field='email'><%=email %></p>
                <p class='data' data-field='nickname'><%=username %></p>


              </div>
              <!--
 -->
              <div class="grid__item one-quarter">
                <button href="#" class="btn edit-hidden-form btn-principale">
                  Modifica
                </button>
              </div>
            </div>
            <div class="grid hidden-form hidden">
              
                <input type="hidden" name="_csrf_token" id="-csrf-token" value="1440526831-01-FIiAtX3_sdMNiFb34GXRG49qaUBWsxonFotdT79C_3s=">

                <input type="file" name="picture" class="profile-picture"></input>

                <div class="grid__item one-quarter">

                  <div class="change-profile-picture">
                    <img src="https://d1w2poirtb3as9.cloudfront.net/default.jpeg" class="profile-picture">
                    <div class="black-filter"></div>
                    <div class="helper-profile-picture">
                      <p>
                        <i class="icon icon_picture"></i>
                        <br /> Aggiungi foto
                      </p>
                    </div>
                  </div>

                </div>
                <!--
   -->
                <div class="grid__item one-third">
                  <h1>fonz i bit</h1>
                  <ul class="form-fields">
                    <li>
                      <label>Email</label>
                      <input type="text" class="text-input" name="mail">
                    </li>
                  </ul>
                  <div class="submit">
                    <div class="messages"></div>
                    <button class="btn btn-principale cancel-hidden-form text-dark">Chiudi</button>
                  </div>
                </div>
              
            </div>
          </div>

          <!-- Address row -->


          <div class="row-group editable-single-row">
            <div class="grid data-row">
              <div class="grid__item one-quarter title">
                Università
              </div>
              <!--
 -->
              <div class="grid__item one-half data" data-field="None">
                <%=denominazione %> - <%=dipName %>
              </div>
              <!--
 -->
              <div class="grid__item one-quarter">
                <button href="#" class="btn edit-hidden-form btn-principale">
                  Modifica
                </button>
              </div>
            </div>

            <div class="grid hidden-form hidden">
              <div class="grid__item one-quarter">
                Università
              </div>
              <!--
 -->
              <div class="grid__item one-third">
                
                  <input type="hidden" name="_csrf_token" id="-csrf-token" value="1440526831-01-FIiAtX3_sdMNiFb34GXRG49qaUBWsxonFotdT79C_3s=">

                  <input type="text" class="text-input" name="nomeuni" placeholder="Nome">
                  <input type="text" class="text-input" name="indirizzo"  placeholder="Indirizzo">

                  <input type="text" class="text-input" name="dipartimento" placeholder="Facoltà">

                  <div class="submit">
                    <div class="messages"></div>
                    <button class="btn btn-principale cancel-hidden-form text-dark">Chiudi</button>
                    
                  </div>
              
              </div>
            </div>
          </div>


          <!-- Password row -->


          <div class="row-group editable-single-row">
            <div class="grid data-row">
              <div class="grid__item one-quarter title">
                Password
              </div>
              <!--
 -->
              <div class="grid__item one-half data" data-field="None">
                &#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;
              </div>
              <!--
 -->
              <div class="grid__item one-quarter">
                <button href="#" class="btn edit-hidden-form btn-principale">
                  Modifica
                </button>
              </div>
            </div>
            <div class="grid hidden-form hidden">
              <div class="grid__item one-quarter">Password</div>
              <div class="grid__item one-third">
               
                  <input type="hidden" name="_csrf_token" id="_csrf_token" value="1440526831-01-FIiAtX3_sdMNiFb34GXRG49qaUBWsxonFotdT79C_3s=">

                  <div class="input-group">
                    <input type="password" class="text-input" name="current_password" placeholder="Password corrente"></input>
                    <input type="password" class="text-input" name="password" placeholder="Nuova Password"></input>
                    <input type="password" class="text-input" name="confirm_password" placeholder="Conferma nuova Password"></input>
                  </div>

                  <div class="submit">
                    <div class="messages"></div>
                    <button class="btn btn-principale cancel-hidden-form text-dark">Chiudi</button>
                  </div>
               
              </div>
              <div class="grid__item one-half"></div>
            </div>
          </div>

          <!-- Language row -->





            <div class="row-group editable-single-row">
              <div class="grid data-row">
                <div class="grid__item one-quarter title">
                  Metodo di pagamento
                </div>
                <div class="grid__item one-half data" data-field="None">

                  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
               			 <p class='data' data-field='name'>Titolare</p>
                		 <p class='data' data-field='number'>Ultime 5 cifre della carta</p>




                  </div>
                  <div class="grid__item one-quarter">
                    <button href="#" class="btn edit-hidden-form btn-principale">
                      Modifica
                    </button>
                  </div>
                </div>

                <div class="grid hidden-form hidden">
                  <div class="grid__item one-quarter">
                    Metodo di pagamento
                  </div>
               <div class="grid__item one-third">
                 
                   <div class="form-group">
                     <label class="col-sm-3 control-label">Titolare Carta</label>
                     <div class="col-sm-9">
                       <input type="text" class="form-control" placeholder="Nome titolare"></input>
                       <p class="help-block">Nome che appare sulla carta</p>
                     </div>
                   </div>
                   <div class="form-group">
                     <label class="col-sm-3 control-label">Numero carta </label>
                     <div class="col-sm-9">
                       <input type="text" class="form-control" placeholder="••••  ••••  ••••  ••••" name="numcarta"></input>
                       <p class="help-block">Le 16 cifre che trovi sulla carta.</p>
                     </div>
                   </div>
                   <div class="form-group">
                     <label class="col-sm-3 control-label">Data scadenza</label>
                     <div class="col-sm-9 form-inline">
                       <select class="form-control" name="month">
                         <option value="01">01</option>
                         <option value="01">02</option>
                         <option value="01">03</option>
                         <option value="01">04</option>
                         <option value="01">05</option>
                         <option value="01">06</option>
                         <option value="01">07</option>
                         <option value="01">08</option>
                       </select>
                       <span class="divider">/</span>
                       <select class="form-control" name="year">
                         <option value="01">2015</option>
                         <option value="01">2016</option>
                         <option value="01">2017</option>
                         <option value="01">2018</option>
                         <option value="01">2019</option>
                         <option value="01">2020</option>
                         <option value="01">2021</option>
                         <option value="01">2022</option>
                       </select>
                       <p class="help-block">La data in cui scade la carta. La trovi sul fronte della carta</p>
                     </div>
                     <label class="col-sm-3 control-label">CVC</label>
                     <div class="col-sm-9">
                       <input type="text" class="form-control" style="width: 120px;" placeholder="CVC">
                       <p class="help-block">Le 3 cifre che trovi sul retro della carta.</p>
                     </div>
                   </div>
                   <hr>
                   <div class="submit">
                     <div class="messages"></div>
                     <button class="btn btn-principale cancel-hidden-form text-dark">Chiudi</button>
                   </div>
                
                 
                 </div>
                </div>
                </div>
                <div class="grid__item one-quarter"></div>
                	<div class="grid__item one-half">
              		<div class="submit">
                     <div class="messages"></div>
                     <button class="btn btn--primary btn-principale text-dark" type="submit">Salva le modifiche</button>
                     <button class="btn btn-danger" type="reset">Reset</button>
                   </div>
                   </div>
                
                </div>
                </div>






            </div>
            
            
            </form>
            
            
            </div>




<%@ include file="footer.jsp" %>


  <script type='text/javascript' src="https://d1a3f4spazzrp4.cloudfront.net/web-p2/scripts/vendor.7c88512201ad36e1f9d9ff0e6d2077c8.js"></script>


  <script type="text/javascript">
    var ANALYTICS_CONFIG = {
          services: {
            tealium: {
              account: 'uber',
              profile: 'main',
              geo: "NG",
              env: "prod"
            }
          },
          debug: false
        };
  </script>

  <script src="https://d1a3f4spazzrp4.cloudfront.net/web-p2/scripts/analytics.cb25f45deae12fe2582214808908f898.js"></script>


  <script src="https://d1a3f4spazzrp4.cloudfront.net/web-p2/scripts/config.12a9959a1bdf7bcf0055e0f61fe3285a.js"></script>
  <script src="https://d1a3f4spazzrp4.cloudfront.net/web-p2/scripts/core.fc0a8ee755f365192f254904593a84f5.js" defer></script>

  <script type="text/javascript">
    if (window.mixpanel && window.mixpanel.identify) {
        mixpanel.identify('d1e8fb76-bac0-42ff-bd82-d5b7b19b6ab5');
      }
  </script>
  <script src="https://d1a3f4spazzrp4.cloudfront.net/web-p2/scripts/home.5c8d8c29a8be9f0ab47ff38f71bbcd21.js"></script>

  <script src="https://d1a3f4spazzrp4.cloudfront.net/web-p2/scripts/profile/profile.08c09f44a289bf166e5d65b952b1ee74.js"></script>



</body>

</html>