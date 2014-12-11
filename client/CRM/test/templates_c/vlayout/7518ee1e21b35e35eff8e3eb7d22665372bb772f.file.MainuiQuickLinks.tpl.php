<?php /* Smarty version Smarty-3.1.7, created on 2014-09-09 03:56:05
         compiled from "/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/MailManager/MainuiQuickLinks.tpl" */ ?>
<?php /*%%SmartyHeaderCode:789927428540e7a55226ed9-54595108%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7518ee1e21b35e35eff8e3eb7d22665372bb772f' => 
    array (
      0 => '/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/MailManager/MainuiQuickLinks.tpl',
      1 => 1410234532,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '789927428540e7a55226ed9-54595108',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MAILBOX' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_540e7a5524406',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_540e7a5524406')) {function content_540e7a5524406($_smarty_tpl) {?>

<div class="quickWidget">
	<div class="accordion-heading accordion-toggle quickWidgetHeader">
		<h5 class="title widgetTextOverflowEllipsis"><?php echo vtranslate('LBL_Mailbox','MailManager');?>
</h5>
		<div class="clearfix"></div>
	</div>
	<?php if ($_smarty_tpl->tpl_vars['MAILBOX']->value&&$_smarty_tpl->tpl_vars['MAILBOX']->value->exists()){?>
		<div class="widgetContainer accordion-body collapse in">
			<input type=hidden name="mm_selected_folder" id="mm_selected_folder">
			<input type="hidden" name="_folder" id="mailbox_folder">
			<div>
				<div class="row-fluid">
					<div class="span10">
						<ul class="nav nav-list">
							<li>
								<a href="javascript:void(0);" onclick="MailManager.mail_compose();"><?php echo vtranslate('LBL_Compose','MailManager');?>
</a>
							</li>
							<li>
								<a href='#Reload' id="_mailfolder_mm_reload" onclick="MailManager.reload_now();"><?php echo vtranslate('LBL_Refresh','MailManager');?>
</a>
							</li>
							<li>
								<a href='#Settings' id="_mailfolder_mm_settings" onclick="MailManager.open_settings();"><?php echo vtranslate('JSLBL_Settings','MailManager');?>
</a>
							</li>
							<li>
								<a href="#Drafts" id="_mailfolder_mm_drafts" onclick="MailManager.folder_drafts(0);"><?php echo vtranslate('LBL_Drafts','MailManager');?>
</a>
							</li>
						</ul>
					</div>				
				</div>
			</div>
		</div>
	<?php }?>
</div>
<?php }} ?>