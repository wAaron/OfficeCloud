<?php /* Smarty version Smarty-3.1.7, created on 2014-09-09 03:56:05
         compiled from "/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/MailManager/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1449940088540e7a55202ed4-98999874%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '211ebc620fb44b2281d937f4ddc823b8c83fafb4' => 
    array (
      0 => '/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/MailManager/index.tpl',
      1 => 1410234532,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1449940088540e7a55202ed4-98999874',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE' => 0,
    'ERROR' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_540e7a5522114',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_540e7a5522114')) {function content_540e7a5522114($_smarty_tpl) {?>
<div class="span2 row-fluid">
	<div id="_quicklinks_mainuidiv_" class="quickWidgetContainer accordion">
		<?php echo $_smarty_tpl->getSubTemplate ("modules/MailManager/MainuiQuickLinks.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

	
		<div id='_folderprogress_' style='float: right; display: none; position: absolute;left: 30px; font-weight: bold;'>
			<span><?php echo vtranslate('JSLBL_LOADING_FOLDERS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</span><img src="<?php echo vimage_path('vtbusy.gif');?>
" border='0' align='absmiddle'>
		</div>
		<div id="_mainfolderdiv_" class="quickWidgetContainer accordion"></div>
	</div>
</div>

<div class="contentsDiv span10 marginLeftZero">
	<div id='_progress_' style='float: right; display: none; position: absolute; right: 35px; font-weight: bold;'>
		<span id='_progressmsg_'>...</span><img src="<?php echo vimage_path('vtbusy.gif');?>
" border='0' align='absmiddle'></div>

	<span id="_messagediv_"><?php if ($_smarty_tpl->tpl_vars['ERROR']->value){?><p><?php echo $_smarty_tpl->tpl_vars['ERROR']->value;?>
</p><?php }?></span><br>
	<div id="_contentdiv_"></div>
	<div id="_contentdiv2_"></div>
	<div id="_settingsdiv_"></div>
	<div id="_relationpopupdiv_" style="display:none;position:absolute;width:800px;z-index:80000;"></div>
	<div id="_replydiv_" style="display:none;"></div>
	<div id="replycontentdiv" style="display:none;"></div>

</div>
<div id = '__vtiger__'></div>

<script type='text/javascript'>
	
	jQuery(function(){MailManager.mainui()});
	
</script>
<input type="hidden" name="module" value="MailManager"><?php }} ?>