<?php echo $header; ?>

<div class="container">
<div class="row">
<!-- start container -->

<div class="col-lg-3">
  <?php echo $column_left; ?>

</div><!-- end col-lg-3 -->





<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>


<div class="col-lg-9"><!-- start content -->
<h3><?php echo $heading_title; ?></h3>

  <div class="breadcrumb-1">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>



<div class="row"><!-- start row -->

<!-- start col -->
<div class="col-lg-6">
  
<div class="panel panel-warning">

  
    
      <div class="panel-heading"><?php echo $text_new_customer; ?></div>
      <div class="panel-body">
        <p><b><?php echo $text_register; ?></b></p>
        <p ><?php echo $text_register_account; ?></p>
       <button type="button" class="btn btn-warning"> <a href="<?php echo $register; ?>">
       <?php echo $button_continue; ?></a>   </button> 
         </div><!-- end panel body -->   


    </div><!-- end panel -->




</div><!-- col -6 -->

<div class="col-lg-6">
  
<div class="panel panel-warning">
      <div class="panel-heading"><?php echo $text_returning_customer; ?></div>
    <div class="panel-body">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
         
          <p><?php echo $text_i_am_returning_customer; ?></p>
          <b><?php echo $entry_email; ?></b><br />
          <input type="text" name="email" value="<?php echo $email; ?>" />
          <br />
          <br />
          <b><?php echo $entry_password; ?></b><br />
          <input type="password" name="password" value="<?php echo $password; ?>" />
          <br />
          <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
          <br />
          <input type="submit" value="<?php echo $button_login; ?>" class="button" />
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        
      </form>
    </div><!-- panel-body -->
  </div><!-- end panel-warning -->


















</div><!-- end col-lg-6 -->
  
  


    
  

  </div><!-- end row -->
 
 <?php echo $content_bottom; ?></div>
</div><!-- end content -->
</div><!-- end row -->
  </div><!-- end container -->
 
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>