

<div id="footer">
<div class="container">

  <div class="row"><!-- start row -->


  <?php if ($informations) { ?>
  <div class="col-lg-3 col-md-3 col-sm-6">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div><!-- end col -lg -4 -->
  <?php } ?>
  <div class="col-lg-3 col-md-3 col-sm-6">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div><!-- end col -->
 
  <div class="col-lg-3 col-md-3 col-sm-6">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div><!-- end col-->

  <div class="col-lg-3 col-md-3 col-sm-6">
    <h3>Newsletter</h3>
  
    
  </div><!-- end col-->

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->


</div><!-- end row -->
</div><!-- end container -->
</div><!-- end footer -->
<div class="container">
<div class="row">
<div id="powered"><?php echo $powered; ?></div>
</div><!-- end footer row -->
</div><!-- end footer-bottom container -->






<script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=1"></' + 'script>')</script>




</body></html>