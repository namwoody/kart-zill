<?php echo $header; ?>
<div class="container">
<div class="row">





<div id="content" class="col-lg-12">
<div class="panel panel-warning">

  <div class="panel-heading">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
 
  <div class="panel-body">
   <h3><?php echo $heading_title; ?></h3>
  <?php echo $text_message; ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="btn btn-warning"><?php echo $button_continue; ?></a></div>
     

  </div>
  </div><!-- end panel-body -->
  <?php echo $content_bottom; ?>

</div><!-- end panel warning -->

  </div>


</div><!-- end row -->
  </div><!-- end container -->
<?php echo $footer; ?>