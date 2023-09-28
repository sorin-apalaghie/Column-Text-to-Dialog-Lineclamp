prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>64866388679498753012
,p_default_application_id=>88499
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SCOLERUZ'
);
end;
/
 
prompt APPLICATION 88499 - Employees
--
-- Application Export:
--   Application:     88499
--   Name:            Employees
--   Date and Time:   15:06 Wednesday September 27, 2023
--   Exported By:     SCOLERUZ@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 71241676637179899787
--   Manifest End
--   Version:         23.1.3
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/com_metrodigital_large_text_col_dialog
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(71241676637179899787)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'COM.METRODIGITAL.LARGE_TEXT_DIALOG'
,p_display_name=>'Column Text to Dialog & Lineclamp'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_javascript_file_urls=>'#PLUGIN_FILES#showTextPopUp#MIN#.js'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display:none;padding:20px;" class="" id="0">#LARGE_TEXT_COLUMN#</div>',
'<span onclick="showTextPopUp(this,''#TEXT_DIALOG_TITLE#'',500);" ',
'      style="cursor:pointer" ',
'      class="fa #ICON# {if NUMBER_OF_ROWS_TO_DISPLAY%assigned/}u-pullRight{endif/}" ',
'      title="Show Full Text"></span> ',
'{if NUMBER_OF_ROWS_TO_DISPLAY%assigned/}<p class="u-lineclamp-#NUMBER_OF_ROWS_TO_DISPLAY#">#LARGE_TEXT_COLUMN#</p>{endif/}',
''))
,p_default_escape_mode=>'RAW'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>'<ul>#APEX$ROWS#</ul>'
,p_report_row_template=>'<li #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>5
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(71241676917720899799)
,p_plugin_id=>wwv_flow_imp.id(71241676637179899787)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>50
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(71241677378308899800)
,p_plugin_id=>wwv_flow_imp.id(71241676637179899787)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'LARGE_TEXT_COLUMN'
,p_prompt=>'Large Text Column'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2:CLOB'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(71241677722497899800)
,p_plugin_id=>wwv_flow_imp.id(71241676637179899787)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'TEXT_DIALOG_TITLE'
,p_prompt=>'Text Dialog Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(71246263419160969553)
,p_plugin_id=>wwv_flow_imp.id(71241676637179899787)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'NUMBER_OF_ROWS_TO_DISPLAY'
,p_prompt=>'Number Of Text Rows To Display'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'No Text Rows displayed'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(71246287598008970695)
,p_plugin_attribute_id=>wwv_flow_imp.id(71246263419160969553)
,p_display_sequence=>10
,p_display_value=>'1 row'
,p_return_value=>'1'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(71246291489733971254)
,p_plugin_attribute_id=>wwv_flow_imp.id(71246263419160969553)
,p_display_sequence=>20
,p_display_value=>'2 rows'
,p_return_value=>'2'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(71246320602136972034)
,p_plugin_attribute_id=>wwv_flow_imp.id(71246263419160969553)
,p_display_sequence=>30
,p_display_value=>'3 rows'
,p_return_value=>'3'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(71246066978085730401)
,p_plugin_attribute_id=>wwv_flow_imp.id(71246263419160969553)
,p_display_sequence=>40
,p_display_value=>'4 rows'
,p_return_value=>'4'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(71247028446805974284)
,p_plugin_attribute_id=>wwv_flow_imp.id(71246263419160969553)
,p_display_sequence=>50
,p_display_value=>'5 rows'
,p_return_value=>'5'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E2073686F7754657874506F70557028692C742C61297B6C657420643D242869292E7072657628292E617474722822696422292C6C3D242869292E6174747228226469616C6F672D696422293B6966282230223D3D3D647C7C303D3D6C';
wwv_flow_imp.g_varchar2_table(2) := '2E6C656E677468297B6C6574206C3D4D6174682E666C6F6F72283165362A4D6174682E72616E646F6D28292B31293B242869292E7072657628292E6174747228226964222C226469616C6F675F646573635F222B6C292C242869292E6174747228226469';
wwv_flow_imp.g_varchar2_table(3) := '616C6F672D6964222C226469616C6F675F646573635F222B6C292C643D226469616C6F675F646573635F222B6C2C24282223222B64292E6373732822646973706C6179222C2273746174696322292C24282223222B64292E6469616C6F67287B69643A64';
wwv_flow_imp.g_varchar2_table(4) := '2C7469746C653A742C726573697A61626C653A21302C77696474683A612C6D6F64616C3A21307D297D656C73657B76617220653D242869292E6174747228226469616C6F672D696422293B24282223222B65292E6373732822646973706C6179222C2273';
wwv_flow_imp.g_varchar2_table(5) := '746174696322292C24282223222B65292E6469616C6F67287B69643A652C7469746C653A742C726573697A61626C653A21302C77696474683A612C6D6F64616C3A21307D297D7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(71242021585292916964)
,p_plugin_id=>wwv_flow_imp.id(71241676637179899787)
,p_file_name=>'showTextPopUp.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E2073686F7754657874506F70557028652C6469616C6F675469746C652C6469616C6F67576964746829207B0D0A202020206C65742078203D20242865292E7072657628292E617474722827696427293B0D0A202020206C6574207A20';
wwv_flow_imp.g_varchar2_table(2) := '3D20242865292E6174747228276469616C6F672D696427293B0D0A202020206966202878203D3D3D20273027207C7C7A2E6C656E677468203D3D203029207B0D0A20202020202020206C65742079203D204D6174682E666C6F6F7228284D6174682E7261';
wwv_flow_imp.g_varchar2_table(3) := '6E646F6D2829202A203130303030303029202B2031293B0D0A2020202020202020242865292E7072657628292E6174747228276964272C276469616C6F675F646573635F27202B2079293B0D0A2020202020202020242865292E6174747228276469616C';
wwv_flow_imp.g_varchar2_table(4) := '6F672D6964272C276469616C6F675F646573635F27202B2079293B0D0A202020202020202078203D20276469616C6F675F646573635F27202B20793B0D0A20202020202020202428272327202B2078292E6373732827646973706C6179272C2773746174';
wwv_flow_imp.g_varchar2_table(5) := '696327293B200D0A20202020202020202428272327202B2078292E6469616C6F67287B69643A2078202C7469746C653A206469616C6F675469746C652C20726573697A61626C653A20747275652C77696474683A206469616C6F675769647468202C6D6F';
wwv_flow_imp.g_varchar2_table(6) := '64616C3A747275657D29200D0A202020207D20656C7365207B0D0A20202020202020207661722077203D20242865292E6174747228276469616C6F672D696427293B0D0A20202020202020202428272327202B2077292E6373732827646973706C617927';
wwv_flow_imp.g_varchar2_table(7) := '2C2773746174696327293B200D0A20202020202020202428272327202B2077292E6469616C6F67287B69643A2077202C7469746C653A206469616C6F675469746C652C20726573697A61626C653A20747275652C77696474683A206469616C6F67576964';
wwv_flow_imp.g_varchar2_table(8) := '7468202C6D6F64616C3A747275657D29200D0A202020207D0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(71242332182480672833)
,p_plugin_id=>wwv_flow_imp.id(71241676637179899787)
,p_file_name=>'showTextPopUp.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
