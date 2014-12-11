<?php /* Smarty version Smarty-3.1.7, created on 2014-09-09 03:58:35
         compiled from "/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/Settings/Webforms/FieldsEditView.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1555723762540e7aeb2f6385-51584766%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '725ddc8d2274e3e8ae889f39197101088de18862' => 
    array (
      0 => '/home/cloudcom/public_html/application/client/CRM/includes/runtime/../../layouts/vlayout/modules/Settings/Webforms/FieldsEditView.tpl',
      1 => 1410234532,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1555723762540e7aeb2f6385-51584766',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODE' => 0,
    'SOURCE_MODULE' => 0,
    'MODULE' => 0,
    'ALL_FIELD_MODELS_LIST' => 0,
    'BLOCK_FIELDS' => 0,
    'FIELD_MODEL' => 0,
    'FIELD_INFO' => 0,
    'SELECTED_FIELD_MODELS_LIST' => 0,
    'FIELD_NAME' => 0,
    'SELECETED_FIELD_MODEL' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_540e7aeb41187',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_540e7aeb41187')) {function content_540e7aeb41187($_smarty_tpl) {?>
<input type="hidden" name="selectedFieldsData" val=""/><input type="hidden" name="mode" value="<?php echo $_smarty_tpl->tpl_vars['MODE']->value;?>
"/><input type="hidden" name="targetModule" value="<?php echo $_smarty_tpl->tpl_vars['SOURCE_MODULE']->value;?>
"/><table class="table table-bordered" width="100%" name="targetModuleFields"><tr class="blockHeader" colspan=8><th class="blockHeader" colspan="4"><?php echo vtranslate($_smarty_tpl->tpl_vars['SOURCE_MODULE']->value,$_smarty_tpl->tpl_vars['SOURCE_MODULE']->value);?>
 <?php echo vtranslate('LBL_FIELD_INFORMATION',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</th></tr><tr><td colspan="4"><span class="row-fluid"><span class="span1"><span class="pull-right pushDown"><b><?php echo vtranslate('LBL_ADD_FIELDS',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</b></span></span><span class="span11"><select id="fieldsList" multiple="multiple" data-placeholder="<?php echo vtranslate('LBL_SELECT_FIELDS_OF_TARGET_MODULE',$_smarty_tpl->tpl_vars['MODULE']->value);?>
" class="row-fluid select2" style="width:100%"><?php  $_smarty_tpl->tpl_vars['BLOCK_FIELDS'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['BLOCK_FIELDS']->_loop = false;
 $_smarty_tpl->tpl_vars['BLOCK_LABEL'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['ALL_FIELD_MODELS_LIST']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['BLOCK_FIELDS']->key => $_smarty_tpl->tpl_vars['BLOCK_FIELDS']->value){
$_smarty_tpl->tpl_vars['BLOCK_FIELDS']->_loop = true;
 $_smarty_tpl->tpl_vars['BLOCK_LABEL']->value = $_smarty_tpl->tpl_vars['BLOCK_FIELDS']->key;
?><?php  $_smarty_tpl->tpl_vars['FIELD_MODEL'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['FIELD_MODEL']->_loop = false;
 $_smarty_tpl->tpl_vars['FIELD_NAME'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['BLOCK_FIELDS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['FIELD_MODEL']->key => $_smarty_tpl->tpl_vars['FIELD_MODEL']->value){
$_smarty_tpl->tpl_vars['FIELD_MODEL']->_loop = true;
 $_smarty_tpl->tpl_vars['FIELD_NAME']->value = $_smarty_tpl->tpl_vars['FIELD_MODEL']->key;
?><?php $_smarty_tpl->tpl_vars["FIELD_INFO"] = new Smarty_variable(Zend_Json::encode($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getFieldInfo()), null, 0);?><option value="<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('name');?>
" data-field-info='<?php echo $_smarty_tpl->tpl_vars['FIELD_INFO']->value;?>
' data-mandatory="<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->isMandatory(true)==1 ? "true" : "false";?>
"<?php if ((array_key_exists($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('name'),$_smarty_tpl->tpl_vars['SELECTED_FIELD_MODELS_LIST']->value))||($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->isMandatory(true))){?>selected<?php }?>><?php echo vtranslate($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('label'),$_smarty_tpl->tpl_vars['SOURCE_MODULE']->value);?>
<?php if ($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->isMandatory(true)){?><span class="redColor">*</span><?php }?></option><?php } ?><?php } ?></select></span></span></td></tr><tr name="fieldHeaders"><td class="textAlignCenter"><b><?php echo vtranslate('LBL_MANDATORY',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</b></td><td><b><?php echo vtranslate('LBL_FIELD_NAME',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</b></td><td class="textAlignCenter"><b><?php echo vtranslate('LBL_OVERRIDE_VALUE',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</b></td><td><b><?php echo vtranslate('LBL_WEBFORM_REFERENCE_FIELD',$_smarty_tpl->tpl_vars['MODULE']->value);?>
</b></td></tr><?php  $_smarty_tpl->tpl_vars['BLOCK_FIELDS'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['BLOCK_FIELDS']->_loop = false;
 $_smarty_tpl->tpl_vars['BLOCK_LABEL'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['ALL_FIELD_MODELS_LIST']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['BLOCK_FIELDS']->key => $_smarty_tpl->tpl_vars['BLOCK_FIELDS']->value){
$_smarty_tpl->tpl_vars['BLOCK_FIELDS']->_loop = true;
 $_smarty_tpl->tpl_vars['BLOCK_LABEL']->value = $_smarty_tpl->tpl_vars['BLOCK_FIELDS']->key;
?><?php  $_smarty_tpl->tpl_vars['FIELD_MODEL'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['FIELD_MODEL']->_loop = false;
 $_smarty_tpl->tpl_vars['FIELD_NAME'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['BLOCK_FIELDS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['FIELD_MODEL']->key => $_smarty_tpl->tpl_vars['FIELD_MODEL']->value){
$_smarty_tpl->tpl_vars['FIELD_MODEL']->_loop = true;
 $_smarty_tpl->tpl_vars['FIELD_NAME']->value = $_smarty_tpl->tpl_vars['FIELD_MODEL']->key;
?><?php if ($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->isMandatory(true)||array_key_exists($_smarty_tpl->tpl_vars['FIELD_NAME']->value,$_smarty_tpl->tpl_vars['SELECTED_FIELD_MODELS_LIST']->value)){?><?php if (array_key_exists($_smarty_tpl->tpl_vars['FIELD_NAME']->value,$_smarty_tpl->tpl_vars['SELECTED_FIELD_MODELS_LIST']->value)){?><?php $_smarty_tpl->tpl_vars['SELECETED_FIELD_MODEL'] = new Smarty_variable($_smarty_tpl->tpl_vars['SELECTED_FIELD_MODELS_LIST']->value[$_smarty_tpl->tpl_vars['FIELD_NAME']->value], null, 0);?><?php $_smarty_tpl->tpl_vars['FIELD_MODEL'] = new Smarty_variable($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->set('fieldvalue',$_smarty_tpl->tpl_vars['SELECETED_FIELD_MODEL']->value->get('fieldvalue')), null, 0);?><?php }?><tr data-name="<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getFieldName();?>
" data-mandatory-field=<?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->isMandatory(true)==1 ? "true" : "false";?>
><td class="textAlignCenter"><input type="hidden" value="0" name='selectedFieldsData[<?php echo $_smarty_tpl->tpl_vars['FIELD_NAME']->value;?>
][required]'/><input type="checkbox" <?php if (($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->isMandatory(true)==1)||($_smarty_tpl->tpl_vars['SELECETED_FIELD_MODEL']->value->get('required')==1)){?>checked="checked"<?php }?><?php if ($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->isMandatory(true)==1){?> readonly="true"<?php }?>name='selectedFieldsData[<?php echo $_smarty_tpl->tpl_vars['FIELD_NAME']->value;?>
][required]' class="markRequired" value="1" /></td><td class="fieldLabel"><?php echo vtranslate($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('label'),$_smarty_tpl->tpl_vars['SOURCE_MODULE']->value);?>
<?php if ($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->isMandatory(true)){?><span class="redColor">*</span><?php }?></td><td class="fieldValue textAlignCenter"><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->getUITypeModel()->getTemplateName(),$_smarty_tpl->tpl_vars['SOURCE_MODULE']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('BLOCK_FIELDS'=>$_smarty_tpl->tpl_vars['BLOCK_FIELDS']->value), 0);?>
</td><td><?php if (Settings_Webforms_Record_Model::isCustomField($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('name'))){?><?php echo vtranslate('LBL_LABEL',$_smarty_tpl->tpl_vars['MODULE']->value);?>
 : <?php echo vtranslate($_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('label'),$_smarty_tpl->tpl_vars['SOURCE_MODULE']->value);?>
<?php }else{ ?><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['FIELD_MODEL']->value->get('name');?>
<?php $_tmp1=ob_get_clean();?><?php echo vtranslate($_tmp1,$_smarty_tpl->tpl_vars['SOURCE_MODULE']->value);?>
<?php }?><?php if (!$_smarty_tpl->tpl_vars['FIELD_MODEL']->value->isMandatory(true)){?><div class="pull-right actions"><span class="actionImages cursorPointer"><a class="removeTargetModuleField"><i class="icon-remove-sign"></i></a></span></div><?php }?></td></tr><?php }?><?php } ?><?php } ?></tbody></table><?php }} ?>