<?php echo $header; ?>



<div class="container">
<div class="row">
<div class="breadcrumb1"><!-- start bread crumbs -->
    <i class="fa fa-home fa-2x" style="color:#f0ad4e;"></i>
     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
     <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
     <?php } ?>
   </div><!-- end bread crumbs -->
<div class="col-lg-3">
<?php echo $column_left; ?></div><!-- end div content -->

<div class="col-lg-9">






<div id="content">
 
   <?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

  <div class="panel panel-warning">
    <div class="panel-heading">
      <span><?php echo $heading_title; ?></span>
      <p><?php echo $text_email; ?></p>
</div><!-- end panel-heading -->

<div class="panel-body">
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    
    <h4><?php echo $text_your_email; ?></h4>
    <div class="content">
      <table class="form">
        <tr>
          <td><?php echo $entry_email; ?></td>
          <td><input type="text" name="email" value="" /></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="btn btn-warning"><?php echo $button_back; ?></a></div>
      <div class="right">
        <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-warning" />
      </div>
    </div>
  </form>

</div><!-- end panel body -->
  </div><!-- end panel -->
  
  

</div><!-- end content col-lg-9 -->
</div><!-- end row -->
  </div><!-- end container -->
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>