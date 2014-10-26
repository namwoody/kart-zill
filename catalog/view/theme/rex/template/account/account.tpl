<?php echo $header; ?>
<div class="container">
<div class="row">
<div class="breadcrumb1"><!-- start bread crumbs -->
    <i class="fa fa-home fa-2x" style="color:#f0ad4e;"></i>
     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
     <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
     <?php } ?>
   </div><!-- end bread crumbs -->


<!-- start container -->

<div class="col-lg-3">
 <?php echo $column_left; ?>

</div><!-- end col-lg-3 -->








<div class="col-lg-9"><!--start col lg 9 -->
  
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>



<div id="content">
 
 
  <div class="col-lg-4">
  <div class="panel panel-warning">

 <div class="panel-heading"> <?php echo $text_my_account; ?></div>
 <!-- end panel-heading -->

  <div class="panel-body">
    <ul>
      <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
      <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
      <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
    </ul>
  </div><!-- panel body -->
  </div><!-- end panel -->
  </div><!-- end col lg -4 -->

<!-- start col4 -2 -->
  <div class="col-lg-4">
   <div class="panel panel-warning">

 <div class="panel-heading"> <?php echo $text_my_orders; ?></div>
 <!-- end panel-heading -->

  <div class="panel-body">
    <ul>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      
      <?php if ($reward) { ?>
      <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
      <?php } ?>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
      <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
    </ul>

    </div><!-- end panel body -->
  </div><!-- end panel -->
  </div><!-- end col-lg-4 -->

  <div class="col-lg-4">
   <div class="panel panel-warning">

 <div class="panel-heading"> <?php echo $text_my_newsletter; ?></div>
 <!-- end panel-heading -->

  <div class="panel-body">
    <ul>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
    </div><!-- end panel body -->
  </div><!-- end panel -->
</div><!-- end col-lg -4 -->

</div><!--end col -lg -->
 </div><!--end div row -->
  </div><!-- end container -->

  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 