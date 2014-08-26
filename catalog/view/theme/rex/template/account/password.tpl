<?php echo $header; ?>
<div class="container">
  <div class="row">
     <div class="col-lg-12">
       <h3><?php echo $heading_title; ?></h3>
        <div class="breadcrumb-1">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div><!-- end breadcrumb -->



     <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
         <h2><?php echo $text_password; ?></h2>
         <div class="content">
           <table class="form">
             <tr>
               <td><span class="required">*</span> <?php echo $entry_password; ?></td>
               <td><input type="password" name="password" value="<?php echo $password; ?>" />
                 <?php if ($error_password) { ?>
                 <span class="error"><?php echo $error_password; ?></span>
                 <?php } ?></td>
             </tr>
             <tr>
               <td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
               <td><input type="password" name="confirm" value="<?php echo $confirm; ?>" />
                 <?php if ($error_confirm) { ?>
                 <span class="error"><?php echo $error_confirm; ?></span>
                 <?php } ?></td>
             </tr>
           </table>
         </div>
         <div class="buttons">
           <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
           <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-warning" /></div>
         </div>
       </form>







     </div><!-- col-lg-12 -->








  </div><!-- row  -->




</div><!-- end container -->


 
  
  
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>