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
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rex/stylesheet/stylesheet.css" />

<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="catalog/view/theme/rex/stylesheet/style.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rex/stylesheet/normalize.css" />
<script src="javascript/catalog/bower_components/mixitup/src/jquery.mixitup.js"></script>
<script src="catalog/view/bower_components/superfish/dist/js/superfish.min.js"></script>
<script src="catalog/view/bower_components/superfish/dist/js/hoverintent.js"></script>

<link rel="stylesheet" href="catalog/view/bower_components/superfish/dist/css/superfish.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Latest compiled and minified JS -->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>




<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.mixitup.min.js"></script>


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
</head>
<body>

<div class="navbar navbar-inverse" role="navigation" id="top-bar">
   <div class="container">
      	<div class="row">
      		<div class="col-lg-8">
      			
      			  <div class="links" id="top-links">
 <a href="<?php echo $home; ?>"><?php echo $text_home; ?></a>
 
 <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
 <a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
 <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
      			  </div><!-- link -->
      			
      			
      			
      			
      			



      		</div><!-- end toplink -->
      	  <div class="col-lg-4">
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
		<div class="col-lg-7 col-md-7 col-sm-7">
			
			  <?php if ($logo) { ?>
			<div id="logo">
			<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div><!-- end logo -->
			
			
			<?php } ?>
		</div><!-- col-lg-4 -->
		<div class="col-lg-2 col-md-2 col-sm-2">
			<?php echo $cart ; ?>

		</div>
        <div class="col-lg-3">
        	<div id="notification"></div>
        </div>

	</div><!-- end a row container -->
</div><!-- end a menu container -->
<div  id="menu-bar">
<div class="container">

<div class="row">
	<div class="col-lg-7 text-right">
		
		
		
		<?php if ($categories) { ?>
		<div id="menu">
		<nav>
		  <ul class="sf-menu">
		    <?php foreach ($categories as $category) { ?>
		    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
		      <?php if ($category['children']) { ?>
		      
		        <?php for ($i = 0; $i < count($category['children']);) { ?>
		        <ul>
		          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
		          <?php for (; $i < $j; $i++) { ?>
		          <?php if (isset($category['children'][$i])) { ?>
		          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
		          <?php } ?>
		          <?php } ?>
		        

		        </ul>
		        <?php } ?>
		      
		      <?php } ?>
		    </li>
		    <?php } ?>
		     <li><a href="">About</a></li>
		          <li><a href="">Contact us</a></li>
		  </ul>
		  </nav>
		 
		</div>
		<?php } ?>
	
	</div><!-- col-8 -->

	<div class="col-lg-5 text-right">
	  
		<div id="search">
		<ul>
		    <li class="button-search"><button type="button" class="btn btn-default">
		    <span class="glyphicon glyphicon-search"></span>
		    </button></li>
		    <li>
		      <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" class="search-field" />
              </li>
             
          </ul>

		  </div><!-- end panel -->


	</div>




</div><!-- end a menu row -->
  </div>
 </div><!-- end top-menu -->

<script>
	$(function(){
     $('.sf-menu').superfish();
	});
</script>





