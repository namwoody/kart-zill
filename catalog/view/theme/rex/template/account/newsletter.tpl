<?php echo $header; ?>

<div class="container">
  <div class="row">
  <div class="breadcrumb1"><!-- start bread crumbs -->
    <i class="fa fa-home fa-2x" style="color:#f0ad4e;"></i>
     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
     <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
     <?php } ?>
   </div><!-- end bread crumbs -->
    <div class="col-md-3">
      <?php echo $column_left; ?>

    </div><!-- end col-md-3 -->
   <div class="col-md-9">
     
<div id="content">
   <div class="panel panel-warning">
     <div class="panel-heading">
       <?php echo $heading_title; ?>
     </div>
<div class="panel-body">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="content">

      <table class="form">
        <tr>
          <td><?php echo $entry_newsletter; ?></td>
          <td><?php if ($newsletter) { ?>
            <input type="radio" name="newsletter" value="1" checked="checked" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" />
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="newsletter" value="1" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" checked="checked" />
            <?php echo $text_no; ?>
            <?php } ?></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="btn btn-warning"><?php echo $button_back; ?></a></div>
      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-warning" /></div>
    </div>
  </form>
</div><!-- panel body -->
   </div><!-- end panel-warning -->
  

  </div>
   </div><!-- end col-md-9 -->


  </div><!-- end row -->
</div>


<?php echo $footer; ?>