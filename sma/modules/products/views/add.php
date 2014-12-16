<style type="text/css">
.loader { background-color: #CF4342; color: white; top: 30%; left: 50%; margin-left: -50px; position: fixed; padding: 3px; width:100px;	height:100px; background:url('<?php echo $this->config->base_url(); ?>assets/img/wheel.gif') no-repeat center; }
.blackbg { z-index: 5000; background-color: #666; -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)"; filter: alpha(opacity=20); opacity: 0.2; width:100%; height:100%; top:0; left:0; position:absolute;}
</style>
<link href="<?php echo $this->config->base_url(); ?>assets/css/bootstrap-fileupload.css" rel="stylesheet">
<script src="<?php echo $this->config->base_url(); ?>assets/js/validation.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('form').form();
		$('#category').change(function() {
			var v = $(this).val();
			$('#loading').show();
					$.ajax({
					  type: "get",
					  async: false,
					  url: "index.php?module=products&view=getSubCategories",
					  data: { <?php echo $this->security->get_csrf_token_name(); ?>: "<?php echo $this->security->get_csrf_hash() ?>", category_id: v },
					  dataType: "html",
					  success: function(data) {
						if(data != "") {
							$('#subcat_data').empty();
							$('#subcat_data').html(data);
						} else {
							$('#subcat_data').empty();
							var default_data = '<select name="subcategory" class="span4" id="subcategory" data-placeholder="<?php echo $this->lang->line("select_category_to_load"); ?>"></select>';
							$('#subcat_data').html(default_data);
							//bootbox.alert('<?php echo $this->lang->line('no_subcategory'); ?>');
						}
					  },
					  error: function(){
       					bootbox.alert('<?php echo $this->lang->line('ajax_error'); ?>');
						$('#loading').hide();
    				  }
					  
					});
					$("form select").chosen({no_results_text: "No results matched", disable_search_threshold: 5, allow_single_deselect:true });
					$('#loading').hide();
		});
	});

</script>

<?php if($message) { echo "<div class=\"alert alert-error\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>" . $message . "</div>"; } ?>


	<h3 class="title"><?php echo $page_title; ?></h3>
	<p><?php echo $this->lang->line("enter_product_info"); ?></p>
    
	<?php $attrib = array('class' => 'form-horizontal'); echo form_open_multipart("module=products&view=add", $attrib); ?>

<div class="control-group">
  <label class="control-label" for="code"><?php echo $this->lang->line("product_code"); ?></label>
  <div class="controls"> <?php echo form_input($code, (isset($_POST['code']) ? $_POST['code'] : ""), 'class="span4 tip" id="code" title="'.$this->lang->line("pr_code_tip").'" required="required" data-error="'.$this->lang->line("product_code").' '.$this->lang->line("is_required").'"'); ?> </div>
</div>
<div class="control-group">
  <label class="control-label" for="name"><?php echo $this->lang->line("product_name"); ?></label>
  <div class="controls"> <?php echo form_input($name, (isset($_POST['name']) ? $_POST['name'] : ""), 'class="span4 tip" id="name" title="'.$this->lang->line("pr_name_tip").'" required="required" data-error="'.$this->lang->line("product_name").' '.$this->lang->line("is_required").'"');?> </div>
</div>
<div class="control-group">
  <label class="control-label" for="category"><?php echo $this->lang->line("category"); ?></label>
  <div class="controls">  <?php 
	  $cat[''] = "";
	  	foreach($categories as $category) {
    		$cat[$category->id] = $category->name;
		}
		echo form_dropdown('category', $cat, (isset($_POST['category']) ? $_POST['category'] : ""), 'class="tip chzn-select span4" id="category" data-placeholder="'.$this->lang->line("select")." ".$this->lang->line("category").'" title="'.$this->lang->line("pr_category_tip").'" required="required" data-error="'.$this->lang->line("category").' '.$this->lang->line("is_required").'"'); ?> </div>
</div>
<div class="control-group">
  <label class="control-label" for="subcategory"><?php echo $this->lang->line("subcategory"); ?></label>
  <div class="controls" id="subcat_data"> <?php 
	   		$sct[""] = '';
	   		
			echo form_dropdown('subcategory', $sct, '', 'class="span4" id="subcategory"  data-placeholder="'.$this->lang->line("select_category_to_load").'"');  ?> </div>
</div>
<div class="control-group">
  <label class="control-label" for="unit"><?php echo $this->lang->line("product_unit"); ?></label>
  <div class="controls"> <?php echo form_input($unit, (isset($_POST['unit']) ? $_POST['unit'] : ""), 'class="span4 tip" id="unit" title="'.$this->lang->line("pr_unit_tip").'" required="required" data-error="'.$this->lang->line("product_unit").' '.$this->lang->line("is_required").'"'); ?> </div>
</div>
<div class="control-group">
  <label class="control-label" for="size"><?php echo $this->lang->line("size"); ?></label>
  <div class="controls"> <?php echo form_input($size, (isset($_POST['size']) ? $_POST['size'] : ""), 'class="span4 tip" id="size" title="'.$this->lang->line("pr_size_tip").'"'); ?> </div>
</div>

<div class="control-group">
  <label class="control-label" for="cost"><?php echo $this->lang->line("product_cost"); ?></label>
  <div class="controls"> <?php echo form_input($cost, (isset($_POST['cost']) ? $_POST['cost'] : ""), 'class="span4 tip" id="cost" title="'.$this->lang->line("pr_cost_tip").'" required="required" data-error="'.$this->lang->line("product_cost").' '.$this->lang->line("is_required").'"'); ?> </div>
</div>
<div class="control-group">
  <label class="control-label" for="price"><?php echo $this->lang->line("product_price"); ?></label>
  <div class="controls"> <?php echo form_input($price, (isset($_POST['price']) ? $_POST['price'] : ""), 'class="span4 tip" id="price" title="'.$this->lang->line("pr_price_tip").'" required="required" data-error="'.$this->lang->line("product_price").' '.$this->lang->line("is_required").'"'); ?> </div>
</div>
<div class="control-group">
  <label class="control-label" for="alert_quantity"><?php echo $this->lang->line("alert_quantity"); ?></label>
  <div class="controls"> <div class=" span4 input-prepend">
    <span class="add-on" style="padding:1px 5px 7px; "><input type="checkbox" name="track_quantity" id="inlineCheckbox1" value="1" checked="checked"></span>      
    <?php echo form_input('alert_quantity', (isset($_POST['alert_quantity']) ? $_POST['alert_quantity'] : ""), 'class="input-block-level" id="alert_quantity" required="required" data-error="'.$this->lang->line("alert_quantity").' '.$this->lang->line("is_required").'" onClick="this.select();"'); ?>
    </div>
</div>
</div>
<div class="control-group">
  <label class="control-label" id="tax_rate"><?php echo $this->lang->line("product_tax"); ?></label>
  <div class="controls">  <?php 
	  $tr[""] = "";
	   		foreach($tax_rates as $tax){
				$tr[$tax->id] = $tax->name;
			}
		echo form_dropdown('tax_rate', $tr, (isset($_POST['tax_rate']) ? $_POST['tax_rate'] : DEFAULT_TAX), 'id="tax_rate" data-placeholder="'.$this->lang->line("select").' '.$this->lang->line("product_tax").'" required="required" data-error="'.$this->lang->line("product_tax").' '.$this->lang->line("is_required").'"'); ?> </div>
</div>
<div class="control-group">
  <label class="control-label" for="product_image"><?php echo $this->lang->line("product_image"); ?></label>
  <div class="controls">
<!--<div class="fileupload fileupload-new" data-provides="fileupload">
<div class="input-append">
<div class="uneditable-input span3"><i class="icon-file fileupload-exists"></i> <span class="fileupload-preview"></span></div><span class="btn btn-file"><span class="fileupload-new">Select file</span><span class="fileupload-exists">Change</span><input type="file" /></span><a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>
</div>
</div>-->
<div class="fileupload fileupload-new" data-provides="fileupload">
<span class="btn btn-file"><span class="fileupload-new"><?php echo $this->lang->line("select_image"); ?></span><span class="fileupload-exists"><?php echo $this->lang->line("change"); ?></span><input type="file" name="userfile" id="product_image" /></span>
<span class="fileupload-preview"></span>
<a href="#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none">×</a>
</div>
  </div>
</div>
     

<!-- Sales start and end date -->

<div class="control-group">
  <label class="control-label" for="sales_start">
      <?php echo $this->lang->line("sales_start"); ?>
  </label>
  <div class="controls"> 
  <input type = "date" min="2010-01-02" name = "sales_start" id = "sales_start" class = "span4 tip" data-original-title = "When does sales start?">
  </div>
</div> 
<div class="control-group">
  <label class="control-label" for="sales_end">
  <?php echo $this->lang->line("sales_end"); ?></label>
  <div class="controls">
  <input type = "date" min="2010-01-02" name = "sales_end" id = "sales_end" class = "span4 tip" data-original-title = "When does sales end?">
  </div>
</div> 

<!-- Manufacturer and Product Website -->
<div class="control-group">
  <label class="control-label" for="product_manufacturer">
  <?php echo $this->lang->line("product_manufacturer"); ?></label>
  <div class="controls"> 
  <input type = "text" name="product_manufacturer" id="product_manufacturer" class="span4 tip" data-original-title = "Product Maufacturer for Reference">
  </div>
</div> 
<div class="control-group">
  <label class="control-label" for="product_website">
  <?php echo $this->lang->line("product_website"); ?></label>
  <div class="controls"> 
  <input type = "text" name="product_website" id="product_website" class="span4 tip" data-original-title = "Website of Product for Reference">
  </div>
</div> 

<!-- Commission Rate -->
<div class="control-group">
  <label class="control-label" for="product_commission">
  <?php echo $this->lang->line("product_commission"); ?></label>
  <div class="controls"> 
  <input type = "number" step = "any" name="product_commission" id="product_commission" class="span4 tip" data-original-title = "Commission Rate of Product for Reference">
  </div>
</div> 

<!-- <div class="control-group">
  <label class="control-label" for="cf6"><?php echo $this->lang->line("pcf6"); ?></label>
  <div class="controls"> <?php echo form_input('cf6', '', 'class="span4" id="cf6"');?>
  </div>
</div>  -->

<div class="control-group">
<label class="control-label" for="note"><?php echo $this->lang->line("product_details_for_invoice"); ?></label>
  <div class="controls">
  <?php echo form_textarea('note', (isset($_POST['note']) ? $_POST['note'] : ''), 'class="input-block-level" id="note" style="margin-top: 10px; height: 100px;"');?> 
 </div>
</div>
        
<div class="control-group">
  <div class="controls"> <?php echo form_submit('submit', $this->lang->line("add_product"), 'class="btn btn-primary"');?> </div>
</div>
<?php echo form_close();?> 
<div id="loading" style="display: none;">
<div class="blackbg"></div><div class="loader"></div>
</div>