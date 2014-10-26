<?php echo $header; ?>
 <div class="container">
   <div class="row">
      <div class="breadcrumb1"><!-- start bread crumbs -->
    <i class="fa fa-home fa-2x" style="color:#f0ad4e;"></i>
     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
     <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
     <?php } ?>
   </div><!-- end bread crumbs -->
     <div class="col-md-12">
      <div id="content"><?php echo $content_top; ?>
 
  <h1><?php echo $heading_title; ?></h1>
  <div class="content"><?php echo $text_error; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="btn btn-warning"><?php echo $button_continue; ?></a></div>
  </div> 
 <?php echo $content_bottom; ?></div>

     </div>
   </div>
 </div><!-- end container -->



 
<?php echo $footer; ?>