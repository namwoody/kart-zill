<?php echo $header; ?>
<div class="container">
  <div class="row">

<div class="col-lg-3">  <?php echo $column_left; ?>
</div><!-- col-lg-9  div end -->

<div class="col-lg-9">
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php echo $description; ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
</div><!-- end div col-lg-9 -->
</div><!-- end div row -->
  </div><!-- end div container -->
  <?php echo $content_bottom; ?></div>



<?php echo $footer; ?>