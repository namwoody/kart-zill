<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />

<meta name="viewport" content="width=device-width,initial-scale=1">
<title><?php echo $title; ?></title>

<base href="<?php echo $base; ?>" />

<?php if ($description) { ?>

<meta name="description" content="<?php echo $description; ?>" />

<?php } ?>

<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<!--- first default ---script files -->




<script src="bower_components/geocomplete/jquery.geocomplete.min.js"></script>


<!-- end default -- script -->


<link rel="stylesheet" type="text/css" href="catalog/view/theme/rex/stylesheet/stylesheet.css" />


<link rel="stylesheet" type="text/css" href="catalog/view/theme/rex/stylesheet/categories.css" />
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="catalog/view/theme/rex/stylesheet/style.css" />



<script src="catalog/view/bower_components/superfish/dist/js/superfish.min.js"></script>

<script src="catalog/view/bower_components/superfish/dist/js/hoverintent.js"></script>

<link rel="stylesheet" href="catalog/view/bower_components/superfish/dist/css/superfish.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Latest compiled and minified JS -->
<script src="http://code.jquery.com/jquery.js"></script>

<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>


<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>

<!--<link rel="stylesheet" href="catalog/view/theme/rex/stylesheet/dropdown.css">
-->
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />

<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>



<!-- jqzoom -->
<script type="text/javascript" src="catalog/view/theme/rex/js/jqzoom/jquery.jqzoom-core.js"></script>

<link rel="stylesheet" href="catalog/view/theme/rex/stylesheet/jqzoom/jquery.jqzoom.css">


<script type="text/javascript">

$(document).ready(function() {
	$('.jqzoom').jqzoom({
            zoomType: 'standard',
            lens:true,
            preloadImages: false,
            alwaysOn:false
        });
	
});


</script>


<!-- end jqzoom -->
</head>





<body>

<div class="navbar navbar-inverse" role="navigation" id="top-bar">
   <div class="container">
      	<div class="row">
      		<div class=" col-lg-6 col-md-5 col-sm-8">
      			
      			  <div class="links" id="top-links">

 
 <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
 <a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
 <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
      			  
      			  <a href="<?php echo $this->url->link('account/track_order'); ?>">
  Order Track
</a>

 <?php echo $currency; ?>








      			  </div><!-- link -->
      			
      			
      			



      		</div><!-- end toplink -->
      		<div class="col-lg-2 col-md-2 col-sm-2">
      			 
      			</div><!-- end col-lg-2 -->
      	  <div class="col-lg-4 col-md-4 col-sm-4">
      	  	 <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>	

      	  </div><!-- end col-4 -->


      	</div>

      </div>   





</div> <!-- top-bar -->



<div class="container">
	<div id="header" class="row">
		<div class="col-lg-2 col-md-5 col-sm-4">
			
			  <?php if ($logo) { ?>
			<div id="logo">
			<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>"

			width="178px" height="55px" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div><!-- end logo -->
			
			
			<?php } ?>
		</div><!-- col-lg-4 -->

       <div class="col-lg-10 col-md-6 col-sm-6"> 
     	<div id="search">
		<ul>
		       

		    <li>
		      <input type="text" name="search" 
		      placeholder="Search by typing the product..." value="<?php echo $search; ?>" id="search-field" />
              </li>
              <li class="button-search"><button type="button" class="btn btn-warning">
		    <span class="glyphicon glyphicon-search"></span>
		    </button></li>

           
             
          </ul>

		  </div><!-- end panel -->
   </div>
  



		
        

       

	</div><!-- end a row container -->
</div><!-- end a menu container -->




<div class="container">

<div class="row">

	<div class="col-lg-3 text-left" style="width:200px;">
   <div  id="sidenav" >
   	 <div class="sidenav_h">
            <a href="#">Shop All Categories</a>
        </div>
        <?php if ($categories) { ?>

       <div class="sidebar_menu clearfix">
       <?php foreach ($categories as  $category) { ?>
       	<div class="litem mt5"><!-- start litem mt5 -->
    <span class="ico1">
    <a href="<?php echo $category['href']; ?>">
    <?php echo $category['name']; ?>
     </a>
    <em class="dow_ico"></em></span><!-- this is categories -->


       	</div><!-- end litem mt5 -->
      <?php } ?>

     <?php } ?>




       </div><!--end sidebar_menu -->
  

     </div><!-- end sidenav -->

		

</div><!-- end col-lg -3 -->



<!-- start col-md-9 -->

<div class="col-md-9" style="margin-left:10px">
<div class="row">
	<div class="col-md-12">

	  <div id="top_nav">
        <div id="tab_nav">
        <ul class="tab_nav_ul">
        	<li class="split_line"></li>
             <li><a href="/">Home</a></li>
             <li class="split_line"></li>
             <li><a href="/">New Products</a></li>
             <li class="split_line"></li>
             <li><a href="/">Special</a></li>
             <li class="split_line"></li>
             <li><a href="/">Featured Products</a></li>
             <li class="split_line"></li>

             <li><a href="<?php echo $account; ?>"> <i class="fa fa-user" id="fa-user"></i><?php echo $text_account; ?></a></li>
             <li class="split_line"></li>
             <li><a href="/">View Cart</a></li>

        </ul>	 




        </div><!-- end tab_nav -->       	
 

 

	  </div><!-- end top_nav -->
    


	</div><!-- another menu -->
</div>	
</div>










