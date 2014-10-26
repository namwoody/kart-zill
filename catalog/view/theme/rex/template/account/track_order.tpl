<?php echo $header; ?>
   <div class="container">
   	<div class="row">
<div class="breadcrumb1"><!-- start bread crumbs -->
    <i class="fa fa-home fa-2x" style="color:#f0ad4e;"></i>
     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
     <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
     <?php } ?>
   </div><!-- end bread crumbs -->



   	<div class="col-md-3 col-sm-3 col-xs-5">
   		<?php echo $column_left; ?>
   	</div>
   		<div class="col-md-9 col-sm-9 col-xs-7">
   			
        <div class="panel panel-warning">
        	<div class="panel-heading">
        		<h1 class="panel-title"><?php echo $heading_title; ?></h1>
        	</div>

        	<div class="panel-body">
        		
     	<div class="span<?php $span = trim($column_left) ? 9 : 12; $span = trim($column_right) ? $span - 3 : $span; echo $span; ?>">
		
		
		

		<?php if (isset($error_warning)) { ?>
		<div class="alert alert-danger"><?php echo $error_warning; ?></div>
		<?php } ?>

		<form class="form-horizontal" action="<?php echo $this->url->link('account/track_order', '', 'SSL'); ?>" method="post">
			<!--<input type="hidden" name="route" value="account/track_order" />-->
			<div class="control-group <?php echo (isset($error["email"]))?'error':""; ?>">
				<label class="control-label" for="inputEmail"><?php echo $entry_email; ?></label>
				<div class="controls">
					<input type="text" id="inputEmail" name="email" placeholder="<?php echo $entry_email; ?>" value="<?php echo htmlentities($email, ENT_QUOTES, "UTF-8"); ?>">
					<?php if (isset($error["email"])) { ?>
					<span class="help-block error"><?php echo $error["email"]; ?></span>
					<?php } ?>
				</div>
			</div>
			<div class="control-group <?php echo (isset($error["order_id"]))?'error':""; ?>">
				<label class="control-label" for="inputOrderId"><?php echo $entry_order_id; ?></label>
				<div class="controls">
					<input type="text" id="inputOrderId" name="order_id" placeholder="<?php echo $entry_order_id; ?>" value="<?php echo htmlentities($order_id, ENT_QUOTES, "UTF-8"); ?>">
					<?php if (isset($error["order_id"])) { ?>
					<span class="help-block error"><?php echo $error["order_id"]; ?></span>
					<?php } ?>
				</div>
			</div>
			<br />
			<div class="control-group">
				<div class="controls">
					<button type="submit" class="btn btn-warning"><?php echo $btn_track_order; ?></button>
				</div>
			</div>
		</form>

        	</div><!-- end panel body -->
        </div>


		
   
	</div>



   		</div><!-- end col-md-9 -->
   	</div>
   </div>


	

	

<?php echo $footer; ?>
