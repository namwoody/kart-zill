
				
<?php if (count($currencies) > 1) { ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		<div id="currency" style="left:415px;"><span style="margin-bottom:5px;"><?php echo $text_currency; ?>: </span>
			<select style="margin-top:7px;" id="currencies" name="currencies" onChange="$('input[name=\'currency_code\']').attr('value', $('#currencies option:selected').val()
).submit(); $(this).parent().parent().submit();">
			<?php foreach ($currencies as $currency) { ?>
            	<?php if ($currency['code'] == $currency_code) { ?>
                    	<option class="option" selected value="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></option>
            	<?php }else{  ?>
                    	<option class="option" value="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></option>
				<?php } ?>
            <?php } ?>
            </select>
            <input type="hidden" name="currency_code" value="" />
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
		</div>
	</form>
<?php } ?>
				
			



















