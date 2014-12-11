<?php /* Smarty version Smarty-3.1.7, created on 2014-09-09 03:57:47
         compiled from "/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/Vtiger/uitypes/Date.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1684800934540e7abbf3e0c2-72699563%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9f4a500752f5866dc78c792328ad6a07244571c9' => 
    array (
      0 => '/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/Vtiger/uitypes/Date.tpl',
      1 => 1410234532,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1684800934540e7abbf3e0c2-72699563',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'FIELD_MODEL' => 0,
    'USER_MODEL' => 0,
    'MODULE' => 0,
    'FIELD_NAME' => 0,
    'dateFormat' => 0,
    'SPECIAL_VALIDATOR' => 0,
    'FIELD_INFO' => 0,
    'MODE' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_540e7abc04bf6',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_540e7abc04bf6')) {function content_540e7abc04bf6($_smarty_tpl) {?>
<?php $_smarty_tpl->tpl_vars["FIELD_INFO"] = new Smarty_variable(Vtiger_Util_Helper::toSafeHTML(Zend_Json::encode($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getFieldInfo())), null, 0);?><?php $_smarty_tpl->tpl_vars["SPECIAL_VALIDATOR"] = new Smarty_variable($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getValidator(), null, 0);?><?php $_smarty_tpl->tpl_vars["dateFormat"] = new Smarty_variable($_smarty_tpl->tpl_vars['USER_MODEL']->value->get('date_format'), null, 0);?><div class="input-append row-fluid"><div class="span10 row-fluid date"><?php $_smarty_tpl->tpl_vars['FIELD_NAME'] = new Smarty_variable($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('name'), null, 0);?><input id="<?php echo $_smarty_tpl->tpl_vars['MODULE']->value;?>
_editView_fieldName_<?php echo $_smarty_tpl->tpl_vars['FIELD_NAME']->value;?>
" type="text" class="span9 dateField" name="<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getFieldName();?>
" data-date-format="<?php echo $_smarty_tpl->tpl_vars['dateFormat']->value;?>
"type="text" value="<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getEditViewDisplayValue($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('fieldvalue'));?>
" data-validation-engine="validate[<?php if ($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->isMandatory()==true){?> required,<?php }?>funcCall[Vtiger_Base_Validator_Js.invokeValidation]]"   <?php if (!empty($_smarty_tpl->tpl_vars['SPECIAL_VALIDATOR']->value)){?>data-validator='<?php echo Zend_Json::encode($_smarty_tpl->tpl_vars['SPECIAL_VALIDATOR']->value);?>
'<?php }?> data-fieldinfo='<?php echo $_smarty_tpl->tpl_vars['FIELD_INFO']->value;?>
'<?php if ($_smarty_tpl->tpl_vars['MODE']->value=='edit'&&$_smarty_tpl->tpl_vars['FIELD_NAME']->value=='due_date'){?> data-user-changed-time="true" <?php }?> /><span class="add-on"><i class="icon-calendar"></i></span></div></div><?php }} ?>