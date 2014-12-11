<?php /* Smarty version Smarty-3.1.7, created on 2014-09-09 03:55:51
         compiled from "/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/Calendar/CalendarView.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1768640381540e7a47128546-66127928%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '674b8a9eb1866f44da08a2dcd2f15dcba25cd16f' => 
    array (
      0 => '/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/Calendar/CalendarView.tpl',
      1 => 1410234532,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1768640381540e7a47128546-66127928',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'CURRENT_USER' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_540e7a4714464',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_540e7a4714464')) {function content_540e7a4714464($_smarty_tpl) {?>
<input type="hidden" id="currentView" value="<?php echo $_REQUEST['view'];?>
" /><input type="hidden" id="activity_view" value="<?php echo $_smarty_tpl->tpl_vars['CURRENT_USER']->value->get('activity_view');?>
" /><input type="hidden" id="time_format" value="<?php echo $_smarty_tpl->tpl_vars['CURRENT_USER']->value->get('hour_format');?>
" /><input type="hidden" id="start_hour" value="<?php echo $_smarty_tpl->tpl_vars['CURRENT_USER']->value->get('start_hour');?>
" /><div class="container-fluid"><div class="row-fluid"><div class="span12"><p><!-- Divider --></p><div id="calendarview"></div></div></div></div><?php }} ?>