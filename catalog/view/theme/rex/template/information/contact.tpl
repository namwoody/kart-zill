<?php echo $header; ?>
  <div class="container">
      <div class="row">
<div class="breadcrumb1"><!-- start bread crumbs -->
    <i class="fa fa-home fa-2x" style="color:#f0ad4e;"></i>
     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
     <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
     <?php } ?>
   </div><!-- end bread crumbs -->

       <div class="col-lg-12">
              
     <div class="panel panel-warning">
      <div class="panel-heading">
       <b><?php echo $heading_title; ?> </b>   
    
  
      </div><!-- end panel-heading -->
      <div class="panel-body">
    <div class="col-lg-6"><!-- start col --6 -->
        
        <div class="contact-info">
        <?php echo 'OUR USA ADDRESS'; ?>
      
<div class="content">
<div class="left"><b><?php echo $text_address; ?></b><br />
        <?php echo $store; ?><br />
        <?php echo $address; ?><br />
   <br />
      <?php echo 'OUR INDIA ADDRESS'; ?><br />
      <b><?php echo $text_address; ?></b><br />
      10 Gokal Nagar <br />
      Industries Area<br />
      Jalandhar,punjab,144001
</div>
   

      <div class="right">
        <?php if ($telephone) { ?>
        <b><?php echo $text_telephone; ?></b><br />
        <?php echo $telephone; ?><br />
        <br />
        <?php } ?>
        <?php if ($fax) { ?>
        <b><?php echo $text_fax; ?></b><br />
        <?php echo $fax; ?>
        <?php } ?>
   
       

      </div>
    </div>
    </div>



    </div><!-- end first col --> 

<div class="col-lg-6">
    
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
 
  
    <div class="content">
    <b><?php echo $entry_name; ?></b><br />
    <input type="text" name="name" value="<?php echo $name; ?>" />
    <br />
    <?php if ($error_name) { ?>
    <span class="error"><?php echo $error_name; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_email; ?></b><br />
    <input type="text" name="email" value="<?php echo $email; ?>" />
    <br />
    <?php if ($error_email) { ?>
    <span class="error"><?php echo $error_email; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_enquiry; ?></b><br />
    <textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
    <br />
    <?php if ($error_enquiry) { ?>
    <span class="error"><?php echo $error_enquiry; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
    <br />
    <img src="index.php?route=information/contact/captcha" alt="" />
    <?php if ($error_captcha) { ?>
    <span class="error"><?php echo $error_captcha; ?></span>
    <?php } ?>
    </div>
    <div class="buttons">
      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-warning" /></div>
    </div>
  </form>












</div><!-- end col-lg-6 -->












</div><!-- end panel body -->

     </div><!-- panel -->







</div><!-- end col-lg-12 -->
       

    


      </div><!-- end row -->
  </div><!-- end container -->





 
  
  
  <?php echo $content_bottom; ?>
<?php echo $footer; ?>