<?php /* Smarty version Smarty-3.1.7, created on 2014-09-09 03:50:22
         compiled from "/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/Vtiger/SideBar.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1768363585540e78fe70f537-49620406%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '47abe119a6f63d149f2830964bbd0baff625a80e' => 
    array (
      0 => '/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/Vtiger/SideBar.tpl',
      1 => 1410234532,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1768363585540e78fe70f537-49620406',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_540e78fe72457',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_540e78fe72457')) {function content_540e78fe72457($_smarty_tpl) {?>
<div class="sideBarContents"><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path('SideBarLinks.tpl',$_smarty_tpl->tpl_vars['MODULE']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<div class="clearfix"></div><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path('SideBarWidgets.tpl',$_smarty_tpl->tpl_vars['MODULE']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</div><?php }} ?>