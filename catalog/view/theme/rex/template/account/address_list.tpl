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
      <?php echo $column_left; ?>
    </div><!-- end col-lg-3 -->
   
  <div class="col-lg-9">
    <?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
  <div class="content">
 
  


  <div class="panel panel-warning">
     <div class="panel-heading"><h2><?php echo $text_address_book; ?></h2></div>
  <div class="panel-body">
    
 <?php foreach ($addresses as $result) { ?>
  <div class="content">
    <table style="width: 100%;">
      <tr>
        <td><?php echo $result['address']; ?></td>
        <td style="text-align: right;" class="address-text"><a href="<?php echo $result['update']; ?>" class="btn btn-warning"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="btn btn-warning"><?php echo $button_delete; ?></a></td>
      </tr>
    </table>
  </div>
  <?php } ?>
  <div class="buttons">
    <div class="left"><a href="<?php echo $back; ?>" class="btn btn-warning"><?php echo $button_back; ?></a></div>
    <div class="right"><a href="<?php echo $insert; ?>" class="btn btn-warning"><?php echo $button_new_address; ?></a></div>
  </div>


  </div><!-- end panel body -->


  </div><!-- end panel -->



 

</div><!-- end content -->



  </div><!-- col-lg-9 -->




  </div><!-- end row -->
</div><!-- end container -->














 
  <?php echo $content_bottom; ?>
<?php echo $footer; ?>