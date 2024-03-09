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
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>65411277845811510340
,p_default_application_id=>223133
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DZZUN'
);
end;
/
 
prompt APPLICATION 223133 - DN_APLIKACIJA
--
-- Application Export:
--   Application:     223133
--   Name:            DN_APLIKACIJA
--   Date and Time:   21:39 Saturday March 9, 2024
--   Exported By:     DARJANUS789@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      7
--       Items:                   16
--       Validations:              7
--       Processes:                8
--       Regions:                 10
--       Buttons:                 11
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              5
--       Security:
--         Authentication:         2
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                10
--           Region:              21
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              12
--         LOVs:                   4
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         23.2.4
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_DZZUN')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'DN_APLIKACIJA')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DN_APLIKACIJA')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'ED709036E7DB31E27B5521C50110FDA47A54BCFCC5CFEE34D7863BFB9BD9D653'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_date_time_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(26028994405813673330)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Aplikacija 1'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'DN_APLIKACIJA'
,p_last_updated_by=>'DARJANUS789@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240309201222'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>16
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(223133)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(26028257307288664382)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(26028821243168664462)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(26028941335417664539)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(26028820848243664462)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/remote_servers/apex_oracle_com_pls_apex
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(26031330885330198386)
,p_name=>'apex-oracle-com-pls-apex'
,p_static_id=>'apex_oracle_com_pls_apex'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('apex_oracle_com_pls_apex'),'https://apex.oracle.com/pls/apex/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('apex_oracle_com_pls_apex'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('apex_oracle_com_pls_apex'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('apex_oracle_com_pls_apex'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('apex_oracle_com_pls_apex'),'')
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/data_profiles/emp_example
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(26031331072087198387)
,p_name=>'emp_example'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26031331205475198389)
,p_data_profile_id=>wwv_flow_imp.id(26031331072087198387)
,p_name=>'JOB'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'job'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26031331509051198390)
,p_data_profile_id=>wwv_flow_imp.id(26031331072087198387)
,p_name=>'MGR'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'mgr'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26031331803398198390)
,p_data_profile_id=>wwv_flow_imp.id(26031331072087198387)
,p_name=>'SAL'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'sal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26031332113589198390)
,p_data_profile_id=>wwv_flow_imp.id(26031331072087198387)
,p_name=>'COMM'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'comm'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26031332481256198390)
,p_data_profile_id=>wwv_flow_imp.id(26031331072087198387)
,p_name=>'EMPNO'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'empno'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26031332719273198390)
,p_data_profile_id=>wwv_flow_imp.id(26031331072087198387)
,p_name=>'ENAME'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ename'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26031333095866198390)
,p_data_profile_id=>wwv_flow_imp.id(26031331072087198387)
,p_name=>'DEPTNO'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'deptno'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(26031333328581198391)
,p_data_profile_id=>wwv_flow_imp.id(26031331072087198387)
,p_name=>'HIREDATE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'hiredate'
);
end;
/
prompt --application/shared_components/data_profiles/oseba_crud
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(28051130855448641176)
,p_name=>'oseba_crud'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(28051131060848641179)
,p_data_profile_id=>wwv_flow_imp.id(28051130855448641176)
,p_name=>'EMAIL'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'email'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(28051131332028641180)
,p_data_profile_id=>wwv_flow_imp.id(28051130855448641176)
,p_name=>'NAZIV'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'naziv'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(28051131612197641180)
,p_data_profile_id=>wwv_flow_imp.id(28051130855448641176)
,p_name=>'PLACA'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'placa'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(28051131974120641180)
,p_data_profile_id=>wwv_flow_imp.id(28051130855448641176)
,p_name=>'TELEFON'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'telefon'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(28051132237248641180)
,p_data_profile_id=>wwv_flow_imp.id(28051130855448641176)
,p_name=>'OSEBA_ID'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'oseba_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(28051132579377641180)
,p_data_profile_id=>wwv_flow_imp.id(28051130855448641176)
,p_name=>'PROJEKT_ID'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'projekt_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(28051132813207641180)
,p_data_profile_id=>wwv_flow_imp.id(28051130855448641176)
,p_name=>'IME_PRIIMEK'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ime_priimek'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(28051133135221641181)
,p_data_profile_id=>wwv_flow_imp.id(28051130855448641176)
,p_name=>'LOKACIJA_ID'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'lokacija_id'
);
end;
/
prompt --application/shared_components/data_profiles/testna_tabela_pogled
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(28854649403527962746)
,p_name=>'testna_tabela_pogled'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(28854649605494962749)
,p_data_profile_id=>wwv_flow_imp.id(28854649403527962746)
,p_name=>'TEST_ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'test_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(28854649968488962749)
,p_data_profile_id=>wwv_flow_imp.id(28854649403527962746)
,p_name=>'TESTNI_NIZ'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'testni_niz'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(28854650276587962749)
,p_data_profile_id=>wwv_flow_imp.id(28854649403527962746)
,p_name=>'TESTNI_DATUM'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'testni_datum'
);
end;
/
prompt --application/shared_components/data_profiles/nizi_rest
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(60331638581902184752)
,p_name=>'nizi_rest'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(60331638718617184753)
,p_data_profile_id=>wwv_flow_imp.id(60331638581902184752)
,p_name=>'NIZ1'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'niz1'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(60331639021589184753)
,p_data_profile_id=>wwv_flow_imp.id(60331638581902184752)
,p_name=>'NIZ2'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'niz2'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(60331639310480184754)
,p_data_profile_id=>wwv_flow_imp.id(60331638581902184752)
,p_name=>'TN_ID'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'tn_id'
);
end;
/
prompt --application/shared_components/data_profiles/rest_enabled_tabela_nizov
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(60860746326803116405)
,p_name=>'rest_enabled_tabela_nizov'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(60860746597408116406)
,p_data_profile_id=>wwv_flow_imp.id(60860746326803116405)
,p_name=>'TN_ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'tn_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(60860746846634116406)
,p_data_profile_id=>wwv_flow_imp.id(60860746326803116405)
,p_name=>'NIZ1'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'niz1'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(60860747195150116406)
,p_data_profile_id=>wwv_flow_imp.id(60860746326803116405)
,p_name=>'NIZ2'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'niz2'
);
end;
/
prompt --application/shared_components/data_profiles/rest_enable_testna_tabela
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(60863572087915170735)
,p_name=>'rest_enable_testna_tabela'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(60863572277026170735)
,p_data_profile_id=>wwv_flow_imp.id(60863572087915170735)
,p_name=>'TEST_ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'test_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(60863572554471170735)
,p_data_profile_id=>wwv_flow_imp.id(60863572087915170735)
,p_name=>'TESTNI_NIZ'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'testni_niz'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(60863572888432170735)
,p_data_profile_id=>wwv_flow_imp.id(60863572087915170735)
,p_name=>'TESTNI_DATUM'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_has_time_zone=>true
,p_selector=>'testni_datum'
);
end;
/
prompt --application/shared_components/data_profiles/re_projekt
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(61762135349723234499)
,p_name=>'RE_projekt'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(61762135586746234500)
,p_data_profile_id=>wwv_flow_imp.id(61762135349723234499)
,p_name=>'PROJEKT_ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'projekt_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(61762135881436234500)
,p_data_profile_id=>wwv_flow_imp.id(61762135349723234499)
,p_name=>'NASLOV'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'naslov'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(61762136109201234500)
,p_data_profile_id=>wwv_flow_imp.id(61762135349723234499)
,p_name=>'ZACETEK'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_has_time_zone=>true
,p_selector=>'zacetek'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(61762136442446234501)
,p_data_profile_id=>wwv_flow_imp.id(61762135349723234499)
,p_name=>'KONEC'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_has_time_zone=>true
,p_selector=>'konec'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(61762136738456234501)
,p_data_profile_id=>wwv_flow_imp.id(61762135349723234499)
,p_name=>'STANJE_ID'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'stanje_id'
);
end;
/
prompt --application/shared_components/data_profiles/re_oseba
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(63366365224517496302)
,p_name=>'RE_oseba'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63366365479543496304)
,p_data_profile_id=>wwv_flow_imp.id(63366365224517496302)
,p_name=>'OSEBA_ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'oseba_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63366365756716496305)
,p_data_profile_id=>wwv_flow_imp.id(63366365224517496302)
,p_name=>'IME_PRIIMEK'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ime_priimek'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63366366078972496305)
,p_data_profile_id=>wwv_flow_imp.id(63366365224517496302)
,p_name=>'EMAIL'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'email'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63366366370499496305)
,p_data_profile_id=>wwv_flow_imp.id(63366365224517496302)
,p_name=>'NAZIV'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'naziv'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63366366687655496306)
,p_data_profile_id=>wwv_flow_imp.id(63366365224517496302)
,p_name=>'PLACA'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'placa'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63366366941670496306)
,p_data_profile_id=>wwv_flow_imp.id(63366365224517496302)
,p_name=>'TELEFON'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'telefon'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63366367290470496306)
,p_data_profile_id=>wwv_flow_imp.id(63366365224517496302)
,p_name=>'LOKACIJA_ID'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'lokacija_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63366367503901496306)
,p_data_profile_id=>wwv_flow_imp.id(63366365224517496302)
,p_name=>'PROJEKT_ID'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'projekt_id'
);
end;
/
prompt --application/shared_components/data_profiles/re_lokacija
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(63715498685520322083)
,p_name=>'RE_lokacija'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63715498894377322083)
,p_data_profile_id=>wwv_flow_imp.id(63715498685520322083)
,p_name=>'LOKACIJA_ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'lokacija_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63715499193812322083)
,p_data_profile_id=>wwv_flow_imp.id(63715498685520322083)
,p_name=>'FIRMA'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'firma'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63715499475526322083)
,p_data_profile_id=>wwv_flow_imp.id(63715498685520322083)
,p_name=>'L_NASLOV'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'l_naslov'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63715499777226322083)
,p_data_profile_id=>wwv_flow_imp.id(63715498685520322083)
,p_name=>'POSTA'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'posta'
);
end;
/
prompt --application/shared_components/data_profiles/oseba_vpogled
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(63717638635107593371)
,p_name=>'oseba_vpogled'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63717638838638593371)
,p_data_profile_id=>wwv_flow_imp.id(63717638635107593371)
,p_name=>'EMAIL'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'email'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63717639134172593371)
,p_data_profile_id=>wwv_flow_imp.id(63717638635107593371)
,p_name=>'NAZIV'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'naziv'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63717639426078593372)
,p_data_profile_id=>wwv_flow_imp.id(63717638635107593371)
,p_name=>'PLACA'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'placa'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63717639761054593372)
,p_data_profile_id=>wwv_flow_imp.id(63717638635107593371)
,p_name=>'NASLOV'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'naslov'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63717640098057593372)
,p_data_profile_id=>wwv_flow_imp.id(63717638635107593371)
,p_name=>'TELEFON'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'telefon'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63717640334196593372)
,p_data_profile_id=>wwv_flow_imp.id(63717638635107593371)
,p_name=>'L_NASLOV'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'l_naslov'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63717640603222593372)
,p_data_profile_id=>wwv_flow_imp.id(63717638635107593371)
,p_name=>'OSEBA_ID'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'oseba_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63717640967492593372)
,p_data_profile_id=>wwv_flow_imp.id(63717638635107593371)
,p_name=>'IME_PRIIMEK'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ime_priimek'
);
end;
/
prompt --application/shared_components/data_profiles/re_stanje
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(64292629239937124328)
,p_name=>'RE_stanje'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64292629434452124329)
,p_data_profile_id=>wwv_flow_imp.id(64292629239937124328)
,p_name=>'STANJE_ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'stanje_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64292629748489124329)
,p_data_profile_id=>wwv_flow_imp.id(64292629239937124328)
,p_name=>'STANJE_NAZIV'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'stanje_naziv'
);
end;
/
prompt --application/shared_components/data_profiles/projekt_all
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(66225892895108853253)
,p_name=>'projekt_all'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(66225893072365853254)
,p_data_profile_id=>wwv_flow_imp.id(66225892895108853253)
,p_name=>'KONEC'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'konec'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(66225893396381853255)
,p_data_profile_id=>wwv_flow_imp.id(66225892895108853253)
,p_name=>'NASLOV'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'naslov'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(66225893674900853255)
,p_data_profile_id=>wwv_flow_imp.id(66225892895108853253)
,p_name=>'ZACETEK'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'zacetek'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(66225893997145853255)
,p_data_profile_id=>wwv_flow_imp.id(66225892895108853253)
,p_name=>'PROJEKT_ID'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'projekt_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(66225894289932853255)
,p_data_profile_id=>wwv_flow_imp.id(66225892895108853253)
,p_name=>'STANJE_NAZIV'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'stanje_naziv'
);
end;
/
prompt --application/shared_components/web_sources/emp_example
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(26031333615965198392)
,p_name=>'emp_example'
,p_static_id=>'emp_example'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(26031331072087198387)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'/dz_notr/hr/empinfo/'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(26031333867089198392)
,p_web_src_module_id=>wwv_flow_imp.id(26031333615965198392)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(26037328502942334906)
,p_web_src_module_id=>wwv_flow_imp.id(26031333615965198392)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
);
end;
/
prompt --application/shared_components/web_sources/oseba_crud
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(28051133457135641183)
,p_name=>'oseba_crud'
,p_static_id=>'oseba_crud'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(28051130855448641176)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'dz_notr/OIP/oseba/'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(28051133617792641185)
,p_web_src_module_id=>wwv_flow_imp.id(28051133457135641183)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':id'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(28051134097596641186)
,p_web_src_module_id=>wwv_flow_imp.id(28051133457135641183)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(28070148614257960599)
,p_web_src_module_id=>wwv_flow_imp.id(28051133457135641183)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':id'
,p_force_error_for_http_404=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(28071417657607472333)
,p_web_src_module_id=>wwv_flow_imp.id(28051133457135641183)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':id'
,p_force_error_for_http_404=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(28073349790170517030)
,p_web_src_module_id=>wwv_flow_imp.id(28051133457135641183)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
);
end;
/
prompt --application/shared_components/web_sources/testna_tabela_pogled
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(28854650567166962751)
,p_name=>'testna_tabela_pogled'
,p_static_id=>'testna_tabela_pogled'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(28854649403527962746)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'dz_notr/dz/testna_tabela_data/'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(28854650795523962753)
,p_web_src_module_id=>wwv_flow_imp.id(28854650567166962751)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/nizi_rest
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(60331639693380184754)
,p_name=>'nizi_rest'
,p_static_id=>'nizi_rest'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(60331638581902184752)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'dz_notr/nizi/vsi_nizi/'
,p_attribute_01=>'N'
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60331639868117184754)
,p_web_src_module_id=>wwv_flow_imp.id(60331639693380184754)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60331640223796184755)
,p_web_src_module_id=>wwv_flow_imp.id(60331639693380184754)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60355623951133383834)
,p_web_src_module_id=>wwv_flow_imp.id(60331639693380184754)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':tn_id'
,p_force_error_for_http_404=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60370191638211734145)
,p_web_src_module_id=>wwv_flow_imp.id(60331639693380184754)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':id'
,p_force_error_for_http_404=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60836768215204722058)
,p_web_src_module_id=>wwv_flow_imp.id(60331639693380184754)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':id'
,p_force_error_for_http_404=>false
);
end;
/
prompt --application/shared_components/web_sources/rest_enabled_tabela_nizov
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(60860747416950116406)
,p_name=>'rest_enabled_tabela_nizov'
,p_static_id=>'rest_enabled_tabela_nizov'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(60860746326803116405)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'dz_notr/tabela_nizov/'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60860747758743116407)
,p_web_src_module_id=>wwv_flow_imp.id(60860747416950116406)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60860748106445116407)
,p_web_src_module_id=>wwv_flow_imp.id(60860747416950116406)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60860748582389116407)
,p_web_src_module_id=>wwv_flow_imp.id(60860747416950116406)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':tn_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60860748991369116407)
,p_web_src_module_id=>wwv_flow_imp.id(60860747416950116406)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':tn_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60860749374971116407)
,p_web_src_module_id=>wwv_flow_imp.id(60860747416950116406)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':tn_id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/rest_enable_testna_tabela
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(60863573159607170735)
,p_name=>'rest_enable_testna_tabela'
,p_static_id=>'rest_enable_testna_tabela'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(60863572087915170735)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'dz_notr/testna_tabela/'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60863573300239170736)
,p_web_src_module_id=>wwv_flow_imp.id(60863573159607170735)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60863573723141170736)
,p_web_src_module_id=>wwv_flow_imp.id(60863573159607170735)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60863574192249170736)
,p_web_src_module_id=>wwv_flow_imp.id(60863573159607170735)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':test_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60863574573691170736)
,p_web_src_module_id=>wwv_flow_imp.id(60863573159607170735)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':test_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(60863574956646170737)
,p_web_src_module_id=>wwv_flow_imp.id(60863573159607170735)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':test_id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/re_projekt
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(61762137136845234501)
,p_name=>'RE_projekt'
,p_static_id=>'re_projekt'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(61762135349723234499)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'dz_notr/projekt/'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(61762137327827234501)
,p_web_src_module_id=>wwv_flow_imp.id(61762137136845234501)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(61762137741251234502)
,p_web_src_module_id=>wwv_flow_imp.id(61762137136845234501)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(61762138154224234502)
,p_web_src_module_id=>wwv_flow_imp.id(61762137136845234501)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':projekt_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(61762138589119234502)
,p_web_src_module_id=>wwv_flow_imp.id(61762137136845234501)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':projekt_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(61762138955564234503)
,p_web_src_module_id=>wwv_flow_imp.id(61762137136845234501)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':projekt_id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/re_oseba
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(63366367909439496308)
,p_name=>'RE_oseba'
,p_static_id=>'re_oseba'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(63366365224517496302)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'dz_notr/oseba/'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(63366368180746496310)
,p_web_src_module_id=>wwv_flow_imp.id(63366367909439496308)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(63366368523357496312)
,p_web_src_module_id=>wwv_flow_imp.id(63366367909439496308)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(63366368957806496312)
,p_web_src_module_id=>wwv_flow_imp.id(63366367909439496308)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':oseba_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(63366369376291496313)
,p_web_src_module_id=>wwv_flow_imp.id(63366367909439496308)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':oseba_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(63366369778484496313)
,p_web_src_module_id=>wwv_flow_imp.id(63366367909439496308)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':oseba_id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/re_lokacija
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(63715500099540322084)
,p_name=>'RE_lokacija'
,p_static_id=>'re_lokacija'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(63715498685520322083)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'dz_notr/lokacija/'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(63715500260418322084)
,p_web_src_module_id=>wwv_flow_imp.id(63715500099540322084)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(63715500645083322084)
,p_web_src_module_id=>wwv_flow_imp.id(63715500099540322084)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(63715501058662322085)
,p_web_src_module_id=>wwv_flow_imp.id(63715500099540322084)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':lokacija_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(63715501430842322085)
,p_web_src_module_id=>wwv_flow_imp.id(63715500099540322084)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':lokacija_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(63715501872810322085)
,p_web_src_module_id=>wwv_flow_imp.id(63715500099540322084)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':lokacija_id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/oseba_vpogled
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(63717641333197593372)
,p_name=>'oseba_vpogled'
,p_static_id=>'oseba_vpogled'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(63717638635107593371)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'dz_notr/OIP/oseba_vpogled'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(63717641649954593373)
,p_web_src_module_id=>wwv_flow_imp.id(63717641333197593372)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/re_stanje
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(64292630087206124329)
,p_name=>'RE_stanje'
,p_static_id=>'re_stanje'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(64292629239937124328)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'dz_notr/stanje/'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64292630296518124329)
,p_web_src_module_id=>wwv_flow_imp.id(64292630087206124329)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64292630634424124330)
,p_web_src_module_id=>wwv_flow_imp.id(64292630087206124329)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64292631074446124330)
,p_web_src_module_id=>wwv_flow_imp.id(64292630087206124329)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>':stanje_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64292631441058124330)
,p_web_src_module_id=>wwv_flow_imp.id(64292630087206124329)
,p_operation=>'GET'
,p_database_operation=>'FETCH_SINGLE_ROW'
,p_url_pattern=>':stanje_id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64292631880982124330)
,p_web_src_module_id=>wwv_flow_imp.id(64292630087206124329)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>':stanje_id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/projekt_all
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(66225894520122853255)
,p_name=>'projekt_all'
,p_static_id=>'projekt_all'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(66225892895108853253)
,p_remote_server_id=>wwv_flow_imp.id(26031330885330198386)
,p_url_path_prefix=>'dz_notr/OIP/projekt/'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(66225894763716853256)
,p_web_src_module_id=>wwv_flow_imp.id(66225894520122853255)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(66225895162048853256)
,p_web_src_module_id=>wwv_flow_imp.id(66225894520122853255)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26028257307288664382)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26028952014424664570)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Domov'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(75411530272886017489)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Osebe'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64289083147849081152)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Projekti'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26028941335417664539)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26028953531308664573)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26028954013914664573)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(26028953531308664573)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26028954492135664574)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(26028953531308664573)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000067C494441545847C5577948D45D143DCFF67DB5BDC8C498565B29A21289364B02D3B2DD16C18A169421CB36B46DB27D532AC512';
wwv_flow_imp.g_varchar2_table(2) := '32520954B205C3203252335B308DF6244A0B8A285AEC7D9CDBF7FB7D333A33F647F13D10E4376F39EFDE73CF3D4F69AD35FEC7A108A0A8A848C7C4C4A8A64D9B62EBD6AD183A74E86F413A7FFE3C121313F1F2E54BB46AD50A03060CC0B871E3E0EFEF8F';
wwv_flow_imp.g_varchar2_table(3) := 'DEBD7B9B7B7CFEFC19376EDCC0B56BD770E7CE1D3C7EFC18AD5BB7C69429532000264F9E8CBCBC3C28A5E0E5E5856DDBB661D6AC596070F8CDD5888D8D95B9DFBF7F9779CD9A351320DC7CF1E2C558BB762D4A4B4BB5CD6653050505F8FAF52B08E6DBB7';
wwv_flow_imp.g_varchar2_table(4) := '6FF0F0F040BF7EFD7E01983163062E5CB8801F3F7EC85943860CC18E1D3B3075EA54B791D8B0610376EEDCE9744EFBF6ED515E5E8EE8E868242525399DD3B367CF5F004A4A4A307BF66C3C7AF4C89C386CD830AC5FBF1EC1C1C12E41C4C4C4085057E3CD';
wwv_flow_imp.g_varchar2_table(5) := '9B37983B77AE44D7D9609A04007F3C77EE9CDC8639320643B477EF5E9791A80FC0DBB76FB170E1425CBC78B17E009C919B9B8B8D1B37E2F6EDDBE602128B441B3B766C9D4DFE28008370191919D8BC7933CACACACC03BDBDBD9192925207C41F05607F3D';
wwv_flow_imp.g_varchar2_table(6) := '46C26AB5E2C18307E6674F4F4F5D5050A008C6187F0D000FB87EFD3AC2C2C2A4668D3169D22461748F1E3DE4D35F056080080A0AD2555555A61858AD566DB55A95A7A7E7DF0740108CC08A152B70F9F26533126969693A34345491B0DBB76F775986F555';
wwv_flow_imp.g_varchar2_table(7) := '41F7EEDDFF2B43778AF3EAD52B1C3A7448C7C7C74B24860F1F8E3367CEE0D2A54B7AF5EAD5FCE4542E0960D1A245525DCE869F9FDFEF01E0626E969797A7F7ECD9A31A346880A3478FC262B1E0EEDDBBF8F4E99348F1FBF7EF71EFDE3D9C387102555555';
wwv_flow_imp.g_varchar2_table(8) := '78FDFA35E6CD9B87AB57AF22303010D3A74F17FE3469D244E69B4AE8EEF6F6BF51F32954946C8A54DBB66D1D96F2FBBB77EFA47A0E1F3EAC939393556464A4EED5AB1723A1BA74E982E6CD9B3BAC3195D0F85A5F03B25FED6E2E234190252525DACBCB4B';
wwv_flow_imp.g_varchar2_table(9) := '75ECD8D1E93DEB00E0ACE7CF9FA3A8A8081F3E7C90AE2549560ADDBA759376CBB6FDA7865300ACF5C8C8487CFCF8D1E11CFA0412AA73E7CE6ECF67EB652ABE7CF922F3D819070D1A844E9D3AD55927006A87322D2D8DAC07C966EF0758FB274F9E940D6B';
wwv_flow_imp.g_varchar2_table(10) := 'A78C7BD0989496968A8A56545448F46A6A6AD0A143072C59B204F3E7CF479F3E7DD0B2654B73BD1901B64E3297446BD7AE9DFCD9BB35FEFFF3E74F701E8D058D47D7AE5DD1A2450B99C79CC7C6C6EACCCC4C4580AC71329E696419BF78F10224615C5C9C';
wwv_flow_imp.g_varchar2_table(11) := '0E0B0B530D1B36FC955AA31DFBFBFBEBFCFC7CD7F6A756F01A376E8CE3C78F4B9D171616EAE5CB97EBE2E2620FDEF6ECD9B3DACFCF4FCA9551E0E114ADD4D454908CD1D1D13A2A2A4ACE3201AC59B346A7A4A4A8DA797791EC1A8BC5E2B16FDF3E45D774';
wwv_flow_imp.g_varchar2_table(12) := 'ECD831AC5CB91283070F46565696AEACAC54FBF7EFC7D3A74FC19B2E58B040D3E2A5A6A6AAA8A828F18EB76EDD92927420E1AA55AB909C9C2CBECDDD2017388FC24221A273BA79F3A6981756C9881123449C983272883CE005E9BAB8EED4A9538A568D9E';
wwv_flow_imp.g_varchar2_table(13) := 'D20100EDD5810307840BEE86AFAFAFA8DDC89123919E9E2E04EBDFBF3FB2B3B311101080E2E2E23ACBA97A745CACA08913274A5510BC030086D266B349CEE8E5689B972E5D2A169BA5C9CE585D5D2D61DFBD7B37060E1C2846850E9837CFC9C9419B366D';
wwv_flow_imp.g_varchar2_table(14) := '9C62271F76EDDA85091326807E9304668A1C00D0176ED9B2050F1F3E94F701FD000FA1A23167B4ECCF9E3D43787838E88809CC00307EFC783627B1E6CE46A3468D101F1F0F3620EA09AB8C5AE100804D63DDBA75A2829B366D92288C1A350A3E3E3EF28D';
wwv_flow_imp.g_varchar2_table(15) := '6EE8C993277238BB20C3496162BB66399E3E7D5A3C0281FC5BC234BCC276F282396753E3C5F878E1790E00EEDFBF0F12313F3F5FCAC600D0B76F5F01401161D8187E4681CD88B21D1717476261E6CC99A29E0445F6878787EBECEC6C45CD6044991E82E7';
wwv_flow_imp.g_varchar2_table(16) := '2508961DD20100D12D5BB64CC8E40E00094855337A0253471ED8574F4444844E484850070F1EA428696F6F6FC5145065A74D9BA67372721C75C0C8DB9C397328246E01D03907050599325D595909D63D496CE87F595999B6582C8A9E806E8A40F8001A3D';
wwv_flow_imp.g_varchar2_table(17) := '7A34A3C1E7A07300CC6742428200A09920079882C2C2423305CC1D73683F28B9369B4D6ECDB71FF971E5CA158A10D89C98923163C63005E6E10E4A686C46A13872E4883C4E434242C07723739F9595251B18124C50B50705875C610AE9AAABABAB653E59';
wwv_flow_imp.g_varchar2_table(18) := '4FD16205D83732AEFF07B347CB6ECDBD3E870000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26028942507933664554)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE900001D8249444154785EED9D099857D3FFC7CF9941215BB264F9891659429B364B8512533496C2430915DA9452596AA2646B4596682A';
wwv_flow_imp.g_varchar2_table(2) := '6D4A8B6429D21012EA21A5944A2844C21069BEF7FFBC8EB9FD6F5F775FBEF39DBEF7F33CF38CCC5DCEF99CF7FD9CCF7EA48829E640000EC800F7C6B7C61C103180621004E2400CA040EC8B6F8E011463201007620005625F7C730CA01803813810032810';
wwv_flow_imp.g_varchar2_table(3) := 'FBE29B6300C51808C481184081D817DF1C0328C640200EC4000AC4BEF8E618403106027120065020F6C537A71D80344D3B5C08C10F54410851DEB04CFC3B53E82721C4B6E2C9F2DFD0CF52CA9FD38901250E204DD32A0921DA09211A17FFA4137FD2712C';
wwv_flow_imp.g_varchar2_table(4) := '1B85108B8410FC2E9052F2DF25462502204DD3000BA0695F6233DF7B5E0C90A03C29657EAAA7955200699A36A01834489DB4A73FFFFC53AC5FBF5E689A26A4FC2FABF8FF65CB961555AA5431FD7BAA27B87DFBF68DEBD7AFCFAF5DBB765EAADE9D120035';
wwv_flow_imp.g_varchar2_table(5) := '6DDA74409D3A7506DE72CB2D8AD9E94C8022914888F7DF7F5F2C59B244CC9B37CF72B85C57BE7C7971F9E5972B2071EF21871C22CE3FFF7C71E08107A6649A1F7CF081F8E69B6FD4BB56AD5A255E79E51571D041076D4C2412F9EFBCF34EE4408A1C40D9';
wwv_flow_imp.g_varchar2_table(6) := 'D9D96FA3DBECBBEFBE22272747B46AD54A3469D2441C7BECB169F1D526AF32A0F8ECB3CFC41D77DC21962E5D2AFEFAEB2F5B2064656589FDF7DF7FF75C0E3EF86071D34D3789D34E3B4DD4A85183C554730D8B366CD820BEFFFE7BB17AF56A05F43163C6';
wwv_flow_imp.g_varchar2_table(7) := '8875EBD6A9C7EFDCB9538DD7202D072612894841142580D8A6C6E98A3193D2453E92E8AEBBEE12C71C734CDA81884578F6D967C5BDF7DE2B7EF9E517DFEB7ED8618789BA75EBAA399E7BEEB9A27EFDFA4AFAEEB7DF7E9E9FB96BD72EF1F3CF3F8B891327';
wwv_flow_imp.g_varchar2_table(8) := '2AC9088890368CD505A123352956BA5D5CEEED92A80084928CE431A572E5CA891B6FBC510C1830401C7EB86EB17B1B785457FFF6DB6FE2A1871E1223478E147FFCF14728AFE1E341FA366AD44874EAD4491C70C00102896CA657E92FE46303383FFCF083';
wwv_flow_imp.g_varchar2_table(9) := '58B4689178FBEDB7C5D4A953057A990F024448A2D095EC280084E4D9E03449C43E201A3162846266BA100BD6AB572F3169D2A4D087C49CD9DE1A366C285AB66C29F890AC68EBD6ADDA1B6FBC21A64D9B263FF9E413B56D01AA001489248A02404AE77133';
wwv_flow_imp.g_varchar2_table(10) := '5180D3B46953F1FAEBAFBBB93C25D76CDDBA550188ED220A620BAB5AB5AAB8FFFEFB955432FB7800CA030F3CA03E2EB6D180C0314E03109D18E6BC4205100A735151912BF0E893808137DC708378ECB1C7940553D2143580F4F9D5AC595381840F080B4E';
wwv_flow_imp.g_varchar2_table(11) := '2794E0871F7E580C193244FCFDF7DF51B0836DECC6B01E1C1A8030D50B0A0A06161515791E1B5F25BA013A1166B19D6EE0F9E11E6F4815801856F5EAD535A44CF3E6CDD53A2069D6AC5923DAB66DAB2CC110254F3217005028FA506800EAD3A7CF8651A3';
wwv_flow_imp.g_varchar2_table(12) := '4655E2ABF1337140D4B97367F55562FA9614A51240471C7184183D7AB468D3A68D9A2E1FDFCB2FBFACFEFDCF3FFF44C982D0B6B25000A4695AFB75EBD68DEBD7AF9F98316386EF89032298F7E8A38F0A985B1292A8A4013467CE1C71F5D5572B30454965';
wwv_flow_imp.g_varchar2_table(13) := 'CB96BDF1AFBFFE0A2C85C2021056572514CF8E1D3B3A3ADFEC1853A64C19819FA86FDFBE25E227CA140095295366E3DF7FFF1D58A10E0C20A44FB1C3507CFBEDB74A011C376E9C282C2CF4FD01A14C77E8D041DC79E79DA262C58A299544190420D1BA75';
wwv_flow_imp.g_varchar2_table(14) := 'EB2653A74E0D14CD0F0340BBCD76749FCD9B372B47DCD8B163C58E1D3B7C83E8D0430F55A29CED2C953A51260128373777D1942953F052FBA63000B487770B106DDBB64DDC77DF7D2A241044194427C2C41F366C58CA40946100DA3865CA9440DB582000';
wwv_flow_imp.g_varchar2_table(15) := '19B7AF6408031CBCAD0B172E0C04A2ECEC6C0522CC5D029551538601484C9E3CB94990A4B4C800A42FF4CD37DFACBCBA2E037FA6F84012A19C0F1D3A34F234890C04D04029A5EF887D5000116DB7CD2AFCF5D75F5564FBE9A79F0E0422E248575D7595D2';
wwv_flow_imp.g_varchar2_table(16) := 'ADA28C9D6520801649297DEB414101A4CC77A76D85548441830689A79E7A2A1088C8BDB9FEFAEBC5E38F3FAE2451147EA20C04D04629A56F3D2828805C858751AC31EB6FBFFD76F1E28B2F068AF1ECB3CF3E0A440F3EF8A038F2C823430751060288EFBF';
wwv_flow_imp.g_varchar2_table(17) := '82DF6A0FDF00D234AD9A10628D93F431FEFDC71F7F5451687422B636BF441A047E229C8D471F7D74A820CA50009D2CA5FCD2CF7A0401504321C47B5E5EAAFB8988BCE36CDCBE7DBB97DBF7B8163F51FBF6ED45EFDEBD95C73A2C8A01E48D932905104303';
wwv_flow_imp.g_varchar2_table(18) := '445BB66C11797979223F3F3F904E441AC475D75DA71C976165366628801A4929DFF7069D7FAF4E39807410A113F5ECD95349A2208143626764F9E1B80C43278A01E40D46410094238498EBED757B5EFDFBEFBF8BEEDDBBABF4D1207E222C327422F4ABA0';
wwv_flow_imp.g_varchar2_table(19) := '4969190AA09652CA57FCAC651000ED0EA2FA79B17E0F49EC77DF7DB778EEB9E702C5CE7036E2B4C4C40F62DEC700F2B69A250E20864BF5C36DB7DD265E78E10555EBE4977030366EDCB8E88D37DEC8F60BA20C05D08D7ECBA2D302400086D81979406C67';
wwv_flow_imp.g_varchar2_table(20) := '94B3F8A5FDF6DB2FD1B367CFC4C08103F7413FF24A3180BC712C6D00C4B051ACBB75EB26A64F9F1E289FE8ECB3CF56159B24AE7B954431804A318030F1713652913061C204DF7E22B6B24B2EB944E95675EAD4F104A21840A51840BA894F111D998DC4CE';
wwv_flow_imp.g_varchar2_table(21) := '9C6AD3ADA60B886AD7AEAD82AFD4A9BBA518406E3915DC0F148A1566365CDDD9886F07C53A487D544E4ECEAEE1C3876755AE5C39CBCD761603682F00903E05A2F88068FCF8F1BEEAD4014CD9B2658B7AF5EA257BF4E891E5C65B1D03682F021053A1567D';
wwv_flow_imp.g_varchar2_table(22) := 'F0E0C1BEF38900D149279DA4BA8190D9E86499C500DACB00C47686B3B17FFFFEBE73ACC923AA57AF9EA0E68A7A333B8A01B49701489F0E406ADEBC7951414181DCB9736796B769FE7B355D31E6CE9DABCAA7AD28069037CEA6951FC869E880A87FFFFEBB';
wwv_flow_imp.g_varchar2_table(23) := '162E5CB8CFF2E5CB3D27EB938C76EDB5D78AE79F7F5E90AC6F4631809C5661CFBF972A0031742CB2952B57AA14D9575F7DD533888E3FFE78D53CAA75EBD631807273A9CA800FA53F94E105F748A28F3FFE5879AD6984A9B7CF73F30CAEAD5EBDBAD2A7E8';
wwv_flow_imp.g_varchar2_table(24) := '18964CB10472C3C5FFBFA6D44920A34E449FC0BE7DFB16BDF5D65B381CB3BD7405A16C7AE0C081FF29138A01942100D2A7B976ED5A0D3FD1D4A95325CD27DD46F32B56ACA84D9E3C59D200D3A80F91668BC5F7CC33CF044A7473B30C66ED5D52D59D8332';
wwv_flow_imp.g_varchar2_table(25) := '29B23991C419B7851917472FA59E3973A6CA6EA46FB25B6ADEBCB96A5C497EB54E24B61142413A05E9D2EA660C2509208A1188375E74D145990D207DA150AEF117D1F49BFECE6E5242B0CA68CC7DE18517EE9642DC376FDEBC04151F9B376FCEE2995151';
wwv_flow_imp.g_varchar2_table(26) := '490008472AB9E4E87F48EE0A15D4F93599A544DB2D288D1D68124E5B5CDACD38E945679C7186723056AAF46F7D24D793A33D67CE9CC4BA75EBB2E854EF946ECB3D5F7FFDB5407F82DC6EA361000827291F021285563876C43CE8577DCA29A7A886EF58A4';
wwv_flow_imp.g_varchar2_table(27) := 'DC1F0328896B7AAB38D239BEF8E20B5BA6B668D14245ECAD4A830024C96E7640E46FB4E4A51D2FD995749DE53E16CCEE3EBF0042672385972202B6209A9AA3CBE16DB7032F7C211E686CEA59CC9C580299A1E4BDF7DE13B367CF26CB51DBB2658BA9C539';
wwv_flow_imp.g_varchar2_table(28) := '65CA1471D96597A9E30AC2201A81D318FCABAFBEA2C7B3600C56E40740DC73CD35D788D34F3F5D9C70C209EA5C0EA7F89E8B79C500B2621212E1A38F3E529D3D30F78DBAD1F0E1C3C5ADB7DE1AC602FCE7F5482D0E41A1068E1637A3468D123FFDA49F1B';
wwv_flow_imp.g_varchar2_table(29) := 'F7EFE55E00C45603D049B663ABA23A97FFE726452506900B0ED85D82E8A684E8C30F3F147DFAF451879F1099C71B1DC2D7EB38BAE2E313B479F3E6C94D9B36EDB6EE9C008454E4E7CC33CF549E7712E3D8AE22A05802B9612A40422AA03FB010616D5B6E';
wwv_flow_imp.g_varchar2_table(30) := 'DE8D4E84924D1F685C042B56AC50EE83279E7842B5F2838A9577F56F804DE936A9B978CEFFF7BFFF45D9D62606909B454C876BD8DAE6CF9FAFD1FB71FDFAF512307166880E20FC591D3A74D0727272247D95AA55ABA6ACAC88290650C40C0EF5F13B76EC';
wwv_flow_imp.g_varchar2_table(31) := 'D0D6AC59A32D58B0208BEDA959B366EAF95850F8B066CE9C59D4BE7DFB6C244FB1991DEAFB4D1E1603286A0EA7F2F956476C4638861840113237131E1D0328135639C239C6008A90B999F0E8BD0740417A0525AF74888EB6BD1D44A51F40DF7DF79D3A4C';
wwv_flow_imp.g_varchar2_table(32) := '76E3C68D2A6D35A8F581C7991A795CFE56F9CF7B3B2A3CCCAFF40368F4E8D1DA534F3D25396B83C50FEAA2479251DA4C3F46AFF5F11E18BFB75C5ABA01F4F9E79FAB9814475ABB4D8570B3724831BA74D0022F9642B61C2BBD00C2E741AD16471950851A';
wwv_flow_imp.g_varchar2_table(33) := '36919A4AFBBB7402101F094D23EC92DE003FA196148DBB740368FEFCF90A40041AC3A67400103A1D691E44E3010F71313221D7AF5F6F395D6275575C71854AFAE29C79A2EFFC268E1701957E00D19D8C4067D8C4191D25B585011CE6F4E9A79FAA4374DF';
wwv_flow_imp.g_varchar2_table(34) := '7DF75DD50712E9B36EDD3ADB265A00A54A952A2AE84BB25B8D1A35944140D258987DB18BF95DBA01F4E69B6FAA1E89614A2094703202A93A20AA9DA2AD60774C8B77236568654C2A096002384E29B6661F1063273ACF4FAD5AB554CB1B245288E785945E';
wwv_flow_imp.g_varchar2_table(35) := '00C130D24EC90C44B487450088E314E8DC7ACE39E704760BB81D176E0852354871A5843AC8A98D56EF440251A24DDA07522984B494D20D20B78B93EED791CADABF7F7F6DD9B2653248532CB7F324310EEB15E91D30D12C06905BA64771DD0F3FFCA0019E';
wwv_flow_imp.g_varchar2_table(36) := 'C183074BA44F2A09C59A73D44877BDF4D24B55D2990F1F5A0CA0542E9AF15D141FF6EEDD5B7BEDB5D7240D42DDD4A3853D567424EABBE8E68634F2910E929E00A26D2F1E61FC3B4EB5556133D5EDF36036CA297A8517BF8B7E061A070293B0EFA619288A';
wwv_flow_imp.g_varchar2_table(37) := '2FD985BC8B2D8E2248CE3E33DE4BFE349623551D8477F81B3F6E0E2FA6EF1149F7EDDAB5332BDDB163497A01085FC7962D5BB4E1C3876BBFFDF65B1659766E18E076D1C3BE0E6B06459BADA04183068E8FE7A3D8B46993F6C8238F70809EA497A31D716C';
wwv_flow_imp.g_varchar2_table(38) := 'F989279EA8DC09D464618AE328A4BAA2B83274F7ED3C1BE0E037D241B478F1625573B676ED5A473E52EA433B3F4A7F8C25DB0E934A2F00F1C58C1D3B5623DF77C78E1D1266A433B198E8128D1B375647479D7AEAA996C345F2FCF1C71FDA983163124386';
wwv_flow_imp.g_varchar2_table(39) := '0CC9DABE7DBB6587137D6BA178B153A74EAAAA8277015837C47688E4669B5CBD7AB500B0F89468836C45E83F381F870C19A2B569D346BACCA74E2F00D1E162C0800181CF4875C3E4B0AE81F1301BAB860654568484A08103FAC63BEFBC63DBC1834EF900';
wwv_flow_imp.g_varchar2_table(40) := 'A77EFDFADA19679C217D28B77B4826DC12B806181F65DB5604481B346850346BD6AC6CA79E90C5CF481F00F185929681FF85FAF4D2465DBB7655458056C4C7012838FBD566013512E2B1CAD07392892D1E20DA99FA585378A39341872A3063C60C8DCEB5';
wwv_flow_imp.g_varchar2_table(41) := '5F7EF9A5B4520DB8FFA1871ED2BA75EB265D3851D30740308BFA270AF8F0989684551204B43D7AF41054AC5A1171BB5EBD7A093208CC88C53AEBACB3123CE7AAABAECA328200E050294BB933CD18D069CCB20FF808A903037CF87A908CC9F9510505056A';
wwv_flow_imp.g_varchar2_table(42) := '4B633C56209252260A0A0AB2E8C4E1905F955E00C2FB3A6CD8B0C4E0C183B3FCBAEF8380C0EFBD28D09C3746B8C08CD03D38797AD6AC599621894A952A696C31CD9A3593C62606481C7A3B62B1516A8D5E83E7DD2AB471F0C107AB3C262459972E5D5447';
wwv_flow_imp.g_varchar2_table(43) := '8D645AB870610265F9C71F7F34ED5A8BF4CACDCD557D80D0F16C28BD00A41F55D0BD7BF7A26DDBB665F3B58499AAEA172056F771CA21B5596C4D175C7081ADF4E18445145A333AEEB8E3D46261D1B185E8C4B68744A6550CB5F25EE26148345AD05064D8';
wwv_flow_imp.g_varchar2_table(44) := 'B265CB3D8A0C913C9C298224B23A059B0E1EEC044D9A34B12B504C2F00E98C435C039C975E7A2971D75D77693FFDF493A73E866103C5EC79871E7AE8D6A14387CAB66DDB1E56AE5CB96C337D41F7F9D074EAC9279F341D16D1725247E8BF632402A92C32';
wwv_flow_imp.g_varchar2_table(45) := 'E7DCFBFD889024071D7490D6AA55ABA291234766952F5F7EB7C4418FA2511400C391994C6C5D6DDBB655897548350B4A4F00E983C58CC7A447B4A79B43313737B768F4E8D138F7CC1B47174F821AF67EFDFAA9C8BA19B148E84E347A82001D96125613E0';
wwv_flow_imp.g_varchar2_table(46) := '092336969D9D5D949393F3CF840913CA1AC1B06CD932D5540BDDCA0CA4F410222B01BDCAC2124C6F00216AE92E81A80D8391614A26F4999C9C1CDBFA73B620CC763CC4661F40D5AA55052064A17465153D907360915A48E2B0E8A8A38ED2EEBDF75E4983';
wwv_flow_imp.g_varchar2_table(47) := '4CDD51A84B213ACF9A011C535EF7501BB756C398D21B404C10BF105F68BA492012BB2A57AE6CBBBE0448E9494D4258F2170E60688EC016A12F0ED2872E1CB832EC1A4CF9011512A46EDDBACAC776D65967ED9628586378BACDFC43DC43B7B67BEEB9C7AA';
wwv_flow_imp.g_varchar2_table(48) := '9D4D7A0308A633612661A5ECF9616618F7604A93F967470008E5D9CC71C896855E84C9AD6F0F482C3E16246E145628E10FDE49CAAB2EF14897E5D8732B1F569B366DB08CADB219D31B402C0E7D03D9A7AD2C9830C0E0E7194E00C24FC3910A482092C592';
wwv_flow_imp.g_varchar2_table(49) := '2D28CC6BFE6E6CD249EC0FE963E52BF233CEE47B686D87F24CEC4B278E2DA080C04C4D38F9E493958B828EB42694FE00A2BD1C5F31BE90742162524817029D5684F4CCCFCF173806C92E3012128785C42BAD870C3018509A592C24519484F24CB84427F2';
wwv_flow_imp.g_varchar2_table(50) := 'AF7117D0FB3A99001A528B8655A51240E43DB3086E008429CDE2F25B4F42B75B08C438116FAE271DC2ADF77BE2C489CAC4B50B3802207C3B803F5941C5CB8CDE0158F4AD846B7AF7EE2D7876D4416492D800B04EF00A3D87ADCA0C405892249D954A002D';
wwv_flow_imp.g_varchar2_table(51) := '58B0400188F32D9CC0802F05AB06DFCAC89123137979795A6161A1A999CDC2D1A4092596DF28B438ECACCC6DE3BB71709E77DE79B6E3710210D524004827743C12E9C9F18E221FDA385824277A190E4C086B0F7F90592886F6BE54E9D21BD2C4942F912D';
wwv_flow_imp.g_varchar2_table(52) := '2C470831D7AD88260D013D8209DB11B9BD7CBD1C438064282C2C4CE4E7E76B0F3EF8603665CFC9444E0D8AE395575EA9FEC4B681E98CFFC52907290A0051EB85C2CA694251131F18C9FB7A83713B0031163EE0071E78C02C9D24FD01C404D806EC22DD5C';
wwv_flow_imp.g_varchar2_table(53) := '832E41A52A49573AE1FE67AB78EDB5D7FEB3267C8548007D6F4781E40BC46DE0E4328802407C286C8BA930164204504B29E52B7E001FE4B8A7864208EB2EDA26A3C10A1B316284ED38CD00848B9EAD096B2799385097EDCE0820DE81E3CF0940A49B9044';
wwv_flow_imp.g_varchar2_table(54) := '66475EB7303211A843C32FE35617F3B370DC43490FEF712B8108CAE250445F4CA24652CAF7FD8CA35400889C6ACCD3B000840EC0D10058577616180C75021025D90058A7542AD10448B1B808983AE9405C43675872B04DA84400544D08B1C60B6A49D632';
wwv_flow_imp.g_varchar2_table(55) := '2A9C66F79A49A0280044511E0BEF94B10780F0B7A03F98596124B03327BD661D2B9090C2A4499322B7C2A64F9FAE1C98BA1589D312251AA098496A0C0DBD236CD2DF4F96527EE9652DF56B834820CF00C2BCC45B6AE71F491580E8528F59AB073FAD9807';
wwv_flow_imp.g_varchar2_table(56) := '804887C000483EFA094946EE10E771E89610A63BDB04A08AD2EB8EE44481260EA713C9F8B810B00093893C69FC40C4FD4CA8440074B81062CFC31F6C205C9C8CAE14692C242B4A3700316EBCE8E44A53BB9FEC89C64187079864340085E71A451A7D83DC';
wwv_flow_imp.g_varchar2_table(57) := '692FB93F6E2500EFC118E9DCB9F31E3E2C2425E3340B9FA07023718D7E23C3FB2A4829ED4B4B2C06E75B02F13CCD0777F09B70BC52490308B31F861E75D4518EEB4648427741980553095BB03DE8CE44D83263C60CC15CA39042F87490706CC3FA3B790F';
wwv_flow_imp.g_varchar2_table(58) := '928FDC23334232E5E5E599D6D107C9F60F0A20B2E6EDCD98A4D9A40380D057A89DC2ED4FB19F135124C00270309D99658577977C1BE3816F482D1A20847D6C26DE76DC0448200A09213B3D4D9F1BBE315C1B266785E54B29FF3D6BC1070505D00021C440';
wwv_flow_imp.g_varchar2_table(59) := '2FEF4D0700011AA4205FB09B521B1C92544190CF6C16A8348B8EA39F00A0303B8EC06782B7385AE9FFA813EFC0CB8CFFCBCCFB5DECD1575E77938C4BDF4E44DE1F1440481F4FB53B4ECEC454E840C4D900101E6337008251C4C3B0AEF4632D933F1AFC49';
wwv_flow_imp.g_varchar2_table(60) := '84309046846BBA74E9A2BDFBEEBBD2A9E7235B1095172487AD5EBD3AB16BD7AE2C2BCD008519272B91759DB896247D3E4C02C3C9F7EA89F5CCD7A252F54429E5462F42C0786D500071D0E8062F2FA74C1710114936A374051040A0220303C0CC4189298D';
wwv_flow_imp.g_varchar2_table(61) := '64C337C39607889C1C992C6EA3468D548D57B56AD5E4E2C58B131D3B76FCE7975F7E2963E40DCF468AF06E92C88CE0D12D2F322BCDA4230503E867E40E99B5C70BA2FF0496403C40D3344F7AD0F2E5CBD542581DCF9D0A00B1E5A0B3D012C5AD0462AE28';
wwv_flow_imp.g_varchar2_table(62) := 'D3583E7659866425A22739D9172C668D1A3534527D5BB468A1D671E7CE9DDAF8F1E3B5CE9D3B67015824257A4ECD9A35294A90F5EBD797C6FA2ED237D06DD0CDACD266992B4748356CD8D06CFB0AA4FF8405204FDB184D023071972C595222128805C099';
wwv_flow_imp.g_varchar2_table(63) := '864FC4C90B9D3C40240AA53F78B08310DD40CE3DF75CAD5FBF7E9212205D32001A3209B0A65878B62AC215B80818AB5182AC5CB992E615F87C6C7B0F74EDDA1509274DC2174CA18994725190B904DAC20CA2D4B514225B0F00B16F97C41686128914C18A';
wwv_flow_imp.g_varchar2_table(64) := 'F1D30D1FA7215F3D39CF7E084953BB766D0E9C93548C321E5D0A624D1184451126C607D09068C94DA3C84AE8D9B3A73667CE1C69D55686E7E22C1D376E9C95A5B9514A699D49E772726101A8BD10629C9B7792C4CE164610B0A400441326A7AC00B3B121';
wwv_flow_imp.g_varchar2_table(65) := '21D89E701C92B885FEE195D84AFAF4E9A3B16D79ED2606C0682583CE843E949C21A98F0540D28388336251D02D2890F5B5FB5D5E196076BDA66928D348217EDB1293C6FF82556096AF13B50E84D40140C600A8D3988D7F47B7C112A3400073DA6B99128D';
wwv_flow_imp.g_varchar2_table(66) := '117273733DE9AE80164721394684555E7AE925DB64357427A43C20B7F273791A800D834291403C5FD334575208658F89611998313F6A0061D1E055C66FE2975850AC2C1C73B367CFD6BCB843484345EF71EA980150E10F1F194A3BC159B67DA7AD93E7D6';
wwv_flow_imp.g_varchar2_table(67) := 'AB578F624959AB562DD39A797C7752CA3CBFF337DE171A808A41C43606902CA9A40144F32894606AAB8210DBD9AA55AB12356AD4D8298428EBF659D4B9E3A5367AADF57B018D7ED00C713792F3913A347540EAB9298D261D98B62E0D1A34505BA4092D92';
wwv_flow_imp.g_varchar2_table(68) := '5236713B5EA7EBC206105B1820B20C6F00A0FEFDFB5B369F8A5A0291E98822EC148577621C7F67B1E7CE9D5B8413EFF7DF7FCF76F2FB700FFA09BE22DC085856463702610F2C2F3D5BC18D3B401F279295FA365256F1F95850288A736412A8580AD93A17';
wwv_flow_imp.g_varchar2_table(69) := 'B11A0804D24A8E62B8642A4D0062EC858585DA871F7E989830614236E53D6E9A6D628E93C743EE0E6DEF8C5618E026C4E2E4C136F28DE06A4E4E4EE2E69B6FC62D602714029BEDC9EB15AA043288625B7D084B8C1455BCD2A51D40BA24624E742059B264';
wwv_flow_imp.g_varchar2_table(70) := '896ABAE9B4DDA0AB5038C08784AFA7F8E3531D3EB0529DEED7F9C65688679F345A7C4736BA55E8E05112D58DA8F6738D9D6586AB1F0091D49E6A005188473CC9C6BCF5335DE579260F08200D1A34485BB162853274EC3CD22C363134320829494237A383';
wwv_flow_imp.g_varchar2_table(71) := '0907B33879B21924961695A6FCD040CAC2AB4E9C0B933D90C3D08A299101C8B09DB54B8ED80320729CB1485209201C73BC97CC4893B4065FC049BE093D68E9D2A5DADCB973254E3CB21891265609F6E82EF886701CA25C5B7560051C6C7DB82188C8D379';
wwv_flow_imp.g_varchar2_table(72) := '8CE4313DA5C362F0A12ACC66EF881440862D8DB40FB635E52742F7C15D8F2299EC0CF3AA039995F5585565105824A596DCECA848EF12CF3686A423684C4D3D07CAE0CBB18AE65B8D07C0C01392E231FFE90B848799E0AA4DDB3AA40E71AE504C753B5EA5';
wwv_flow_imp.g_varchar2_table(73) := '044006698475D66ED7AE5D8D91428008FF8631A40083382689037375A2AC87BA30BCD746318DA2C9970B602EBEF8627539BE13BCCC64DFE95F3DCF073CE42F1303333624880A483C97F10118AC2AE6403016FF17BE1D3E1C3E24B3AD0A60E89516F00349';
wwv_flow_imp.g_varchar2_table(74) := '83FB81065198E6C9CDC90D73481970F477A60C40C685C2E9A8695ABB2D5BB63426D34F67A29E534C84DA982CCE978BE798BA7AC0A05FCF02A1445219A1A739B03894FF4C9B364D818D6BF1CC62D9A0FF20F2FDC4C0C2001ADB9BDE5813C984D566F4C6EB';
wwv_flow_imp.g_varchar2_table(75) := 'F347BAA023428C956A5D87930A014E9E94325894D7C7244B044086AD8D2D4DFFA14B80AD13D2C7FCF6C65B000B3F2890055129C76E1957A200321BA4A669547BF0035528FE4DF2AFFEDF6EE7569AAF333AC838854FFDDB6FED56948C483B004539D9F8D9';
wwv_flow_imp.g_varchar2_table(76) := 'E173200650F83CCDA827C600CAA8E50E7FB23180C2E769463D310650462D77F8938D01143E4F33EA893180326AB9C39F6C0CA0F0799A514F8C019451CB1DFE64630085CFD38C7A620CA08C5AEEF0271B03287C9E66D413630065D472873FD91840E1F334';
wwv_flow_imp.g_varchar2_table(77) := 'A39EF87F307E6FBD51159C490000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26028942828002664554)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE90000200049444154785EED9D09BC4F65FEC79FDF75695F98925012579B91B51A694696B19B0613121225B22F3133A906D9B20C638F2C';
wwv_flow_imp.g_varchar2_table(2) := '53834A8D2CA1CD32D694AD0889845042A56BDCE5F77FBD9FBFC71C3FBFE53CE777CEF99DDFEF9EEFEB755F967BCE739EEDF33CDFFD1B08068341E1933F03797406023E00F2E8CAFBC39633E003C0DF08797A067C00E4E9E5F707AF0D00448640201071E6';
wwv_flow_imp.g_varchar2_table(3) := '62FDDE9F7221EC9A23BBDAF1E29AD835B658ED680380C9DAB871A33871E2C4FFF350E7C090959525EEBAEB2E71CB2DB7C8FF8FF5612F4EBAD37D32CEC9175F7C21F6EDDB27D2D2D2A21E28A17DFAEF7FFF2B0A172E2CCA972F2F2EB9E412A7BBEC78FBD1';
wwv_flow_imp.g_varchar2_table(4) := 'F6C9F6EDDBC5B7DF7EABBD97B2B3B3C5AF7EF52B51B16245913F7FFEA8FB312A00423BB779F36671EAD429316CD83071FCF8F10B162E3333533468D0403CF4D043E2DA6BAF15B7DF7EBB0F04C3F65173F9D9679F09E6EA95575E11EBD6AD13050A1430BD';
wwv_flow_imp.g_varchar2_table(5) := 'C9386C78B764C992A261C386F2C03973E68C5C07DA071C75EBD6BD605DBC761085EB0FFFB77BF76EF1D5575F894B2FBD54CE071B77C2840962EFDEBD960070C30D3788E6CD9B8B7BEEB947942851425C71C51561DB890800D5D1B367CF8A03070EE4EED9';
wwv_flow_imp.g_varchar2_table(6) := 'B3273065CA94C0B163C7E4C285234EA652A54A89B265CB8A2E5DBAC8C5554030BDCA29FC200BFCFCF3CF8BFDFBF78B6DDBB6891F7FFCD1D268B9350041D1A24505EBA308703CFBECB3A258B162121855AA5411575D75D5F9DF7B090C9CEE1CA2575E79A5';
wwv_flow_imp.g_varchar2_table(7) := '387CF8B078E79D77246771F9E597CBFEB277D6AC59237273732DCD112F656464C8BD08101A356A74BE6D6383516F002677DDBA753993274FCEFDFCF3CFD3B76FDF1E91F957A7108D5F76D96572F26FBEF9663174E85051BC7871CB8348A5173914A64C99';
wwv_flow_imp.g_varchar2_table(8) := '22B8A2AD92719EC3B551BA746979FDC3A2F6EBD74FDC77DF7DE2F4E9D3121400465122C0B065CB16793B7188BEFCF2CB62C78E1DA260C18292ABD8B56BD70560B63A3FE1DEAB53A78E18326488648942C71D15005F7EF965EE80010372E6CE9D9B2684C8';
wwv_flow_imp.g_varchar2_table(9) := 'A7DB2906FBF8E38F8BC183078B22458AE8BE9E72CF57A85041B0099CA2507070F5732BFFFCF3CFA271E3C6A27BF7EEE2A79F7E9207D44D37DDE454372E6A177987DBA973E7CE025991FE20FF186F2F273B73EBADB78AFEFDFB8BF6EDDB4B99CBF40DF0EE';
wwv_flow_imp.g_varchar2_table(10) := 'BBEF063945A29DFC663ACE8741208B911789538745873F5FBF7E7D5CD7BAD5F92B54A890644FD974B0A593264D12393939E2BAEBAEB3DA64D4F768FBE8D1A372DCB01FCCC19E3D7B2EDC7CE76417473A10D268F5EAD5C5C08103C5030F3C600E0008BC7F';
wwv_flow_imp.g_varchar2_table(11) := 'FBDBDFC482050B6CE95F870E1DC48B2FBE982741C0E27308BCFEFAEB921D4934A5A7A78BBBEFBE9B5B20386BD6ACC0D5575F6D5B9760EFF881C7472182F019BAF16DFB98464380FE85175E90F240D41B40F1482B56AC107FF9CB5F220ABC1ADF3EFF2820';
wwv_flow_imp.g_varchar2_table(12) := '801D4242CF4BC49CA28DF8F4D34F1372FA479A6B58A6264D9A88E9D3A78B6BAEB9465BDBA2DA657CFCC05EBCF5D65BA25BB76E528885CDF10AA131E30660BC315920A4F1E79E7B4E2C5BB6CCF6FE3FF9E493128937DE78A3E509B7BD530E37C8E6A85AB5';
wwv_flow_imp.g_varchar2_table(13) := 'AAF8F8E38F25DBE12542DD883C0040478C1821FFAE2320AB67C78D1B978DDAF2F4E9D3E9870E1D3AAF9AF5CA58B500C0C6479DB669D32647FAFFD4534F9D57D7E94CB6239D71A1512F0380E12BE1B9458B16D2C683F06C665D505172EA039CE1C387077F';
wwv_flow_imp.g_varchar2_table(14) := 'F8E107DA42B1E2C2ACEA7D421B0003060C90279613942F5F3E010890CC51919A996C27FAE1569B5E07809A073673AB56ADE40D8DE624DABAA8CD8F72E3EF7FFFBBF8EEBBEFDC9A4E4BDFD102C0F2E5CBE509ED14001801667CD821B44CE8A8531904C902';
wwv_flow_imp.g_varchar2_table(15) := '00D60501B975EBD6E2AF7FFDABD41A455B9781030706274E9C1840DBE375F21C00983034044F3CF18404412ADB09920900ACCBA5975E1A6CD9B265B077EFDE81BBEEBA2BA2F113D797254B96787DEFCBFE690160F1E2C5923DC16F2596E5D1EAE855BB98';
wwv_flow_imp.g_varchar2_table(16) := 'EAB909F89E533A69AB7DB4EBBD640300BE8CB81060C56FD8B061580060D11E3E7CB8A7343DD1D64B0B00F8AA4C9E3C59CC9831439AAD9D220502F4D05809B90970A44B354A4200884A952A89418306897AF5EA855D0EB4464EB2C876EF01D300503C1F16';
wwv_flow_imp.g_varchar2_table(17) := 'CB5EBD7AD96A0708372805029CA27AF7EE2DBF69A761C6EE89B4D25E2A02A056AD5A62E5CA9571F93559994BABEF980680FA00FE1BA3478F16AFBEFAAAF4E370921408108CF196C469CCE8C5E8E4B7DD68DB07801BB31CFD1B5A0050B7002EBB5DBB7615';
wwv_flow_imp.g_varchar2_table(18) := 'AB56AD727C040A04A8E2468E1C2985636E8554201F00895F452D00186F01FC775E7BED35A90E7393C68F1F2FDAB469931237810F0037774EF86F690340DD02070F1E948611FC45DCA68913278A471F7D34E941E003C0ED9D73F1F7B401606CE2C89123D2';
wwv_flow_imp.g_varchar2_table(19) := '30E62608144B346EDC38F1D8638F2535087C00243900E83EEA50AC83D3A64D737D34F89A74ECD83169B5433E005CDF32177D30AE1B40B59628102018C386219027A39DC007408A008061E0F781ABF4D4A9535D1D152A52652720E63599C80740E257CB96';
wwv_flow_imp.g_varchar2_table(20) := '1B400D835C2D041710D8EC867FBB9207F01DEAD4A993E8D3A78F0CAA4916073A1F002906008643D003BE22C804E4A371CA672874EAB00D105ED8B76FDFA4F122F50190620030AA48115049F244ACABD32030BA4DA0197AE69967B4239812B1143E001231';
wwv_flow_imp.g_varchar2_table(21) := 'EB177ED3561688A61508B809B0DCA22225E5865B20208152DBB66DA51729F987BCCC0EF9004841001841809D0010201390EDCC6910A8E924F0BA5DBB76523DEB669E1BDDE5F401A03B63F63F6FFB0DA0BAA84EDEEFBFFF5E8C1A354AE0C2402E18B74080';
wwv_flow_imp.g_varchar2_table(22) := '8A94E45BA47031663EB37F0AADB7E803C0FADCD9F5A663003076F0E4C993323E94C06A04633709C118BF252FA65CF101E0E64E08FF2D5700C0A76181488F81EB443C894DAD4C995733D0F900B0B29AF6BEE31A00E836C230EA51825BDC262F66A0F301E0';
wwv_flow_imp.g_varchar2_table(23) := 'F62EB8F87BAE0280CF2307CC9A354B06B7B8250FA8610302C2F9BC1268EF03200F0240DD04449411EFEB3611504374991752AEF800707BF53D7003A82EC00ECD9C3953E68B749B48BE457E53DD747F76F7D30780DD33AADF9EEB2C90B18B80802C1318AD';
wwv_flow_imp.g_varchar2_table(24) := '108CDD628948F2A452AE2412043E00F437ACDD6F2414004A3B3476EC58A9AA7453454ACD29957C2B51EC900F00BBB7B37E7B0907005DC64EF0D24B2F0980E086EF909A26BC48118CB981122118FB00D0DFB076BFE1090030280AA36128832572C362EC85';
wwv_flow_imp.g_varchar2_table(25) := '0C743E00ECDECEFAED790600749DA01A5CA971A003044E931104A865F1227533B2CC0780D32B1CBB7D4F0180EEE245CA4D802BF52FBFFC127B04713EA14080172900E8D9B3A76B31C63E00E25C3C1B5EF714009403DD37DF7C73FE2670A362A002015551';
wwv_flow_imp.g_varchar2_table(26) := '060D1A14ECDCB973C08D0C743E006CD8C17136E129003016058203070EC80A92B852BBEC3B9443CA950E1D3AE4A36CA893E403C0C9D935D7B6E700600401370131C60948B97266C3860D052A57AE9C165A3FD6DCB49A7BCA0780B97972F2294F02C00882';
wwv_flow_imp.g_varchar2_table(27) := 'C3870FCB6C136E26DFA2541379EE1F79E411593CDA29F201E0D4CC9A6FD7B300300E01ED10D15D6E8140C904B86F13638C80EC04F900706256F5DA4C0A0030A44424DF82FD219A0D8B314633BBC90780DD33AADF5ED20020512020F11672087987ECD60C';
wwv_flow_imp.g_varchar2_table(28) := 'F900D0DFB076BF91540060F004DA2313A01D728BC839848D40A560B42BD3840F00B75630F277920E000C0563D9E0C183A576283B3BDBD15954F20016E26EDDBAE56023B8E1861BD2ECF8A80F003B6631BE369212000C1915A9B2189F3973C651576A43E2';
wwv_flow_imp.g_varchar2_table(29) := 'ADAC499326519B20BF1DB7800F80F836AF1D6F2725008C1663BC48DDC840770E04392D5AB4084C9C3831AD60C1827127DDF20160C7168EAF8DA40400435620801D52207023031DE955C837D4BD7BF7B813F1FA00886FF3DAF176D202C0080295818ED4EC';
wwv_flow_imp.g_varchar2_table(30) := '4E82C058BF98C21CA4658F27DF900F003BB6707C6D2435008C2020031DE55B09AA71C38B140B718F1E3D8243860C095B31DDCCB2F80030334BCE3E93F400304E0F91652ABC322B2BCBD999134254A850416CD8B041E0456A857C005899357BDF49290030';
wwv_flow_imp.g_varchar2_table(31) := '3564A09B346952B07FFFFEB942887CF64ED785ADA11A6DD9B2A5049D1510F800707275CCB59D720060D8E752AEE474EBD62D2B5FBE7C97E24ECD66738208AE6FDDBAB50CE54446E0C72CF900303B53CE3D97920060BA323333C5F6EDDB73B76FDF9E46E0';
wwv_flow_imp.g_varchar2_table(32) := 'BB9384BB44CB962D73A74E9D9AA67313F800707255CCB59DB20060F89CFCA45A993163867463702AB006A7B9CA952B4B7940877C00E8CC9633CFA63400D494A11542454AFA13A7EA96710B9085FA1FFFF8870010662CC53E009CD9D43AADE609003021E4';
wwv_flow_imp.g_varchar2_table(33) := '1BC2BF9FE4B84EA55DC1659AF8016A175F77DD7531D7C10740CC2972FC813C0300251C53A8037B012A53275231DE77DF7D62C99225C28CAB840F00C7F777CC0FE42900301B6CFC3163C6E48C1E3D3AF7E79F7F464D9A66271028D64DFD831E3D7AC848B2';
wwv_flow_imp.g_varchar2_table(34) := '68AC900F8098FBD3F107F21C0098D1A3478FE6BEF7DE7BB98B172F4EFBE8A38FD208B9B49338FDFBF7EF1F6CD7AE5DE0FAEBAF8FD83400B8FBEEBBD156D9F97947DBAA54A9926423EBD5AB17F63BB56AD5122B57AE74DC4DDDAE410200EAC8356DDAF482';
wwv_flow_imp.g_varchar2_table(35) := '260341A714E776F5DC623BC613F9C48913D2910ED900039A8D14AC58B12231CC81F2E5CB47BC05E80B219763C68C1104FF2703A51A003232326462E63FFDE94F7903006A940A089CFEAA8A25B603BB8889A50641B366CD041165E148F5E1C1071F14AB56';
wwv_flow_imp.g_varchar2_table(36) := 'AD724C4D6BD798682795008011B351A34632DA0F35B69152F606300ED20882B163C706972E5D1AD8B76F9F9413ECA072E5CA09926CFDEE77BF8BDA5CB56AD5826BD6AC316F42B6A37316DB482500704B8F183142D4AC59F3A25B3A4F00803D60648970A0';
wwv_flow_imp.g_varchar2_table(37) := 'C3CF1FC3195166F15224012BB4DD1E3D7A64CF9E3D3BEDC489133211177DF22A079AEC00607E9541B47EFDFAB26AE96F7EF39B8B963ACF002074E480E0E9A79F16B367CF16FCDDAAF5586996900108DDAC53A74E5436A857AF5ED92B57AECC979E9E1E20';
wwv_flow_imp.g_varchar2_table(38) := 'DCF3DB6FBF950635AB64B5DFB1BE974800E8FA5A85DEF6050A1410B7DD769B20DF2CE3209E038FDE709ABA3C0B00268DCDD3BE7DFBDC1D3B76A46DDDBA35AECA35D5AA559301FCD1D8A0D005806D1A3F7E7C44D921DA2625AB1DD6EEAFBEFAEA7CB11175';
wwv_flow_imp.g_varchar2_table(39) := 'D3C5DADC667EEF3600D4414259AB9B6FBE59DA57AC809B4D7FFBEDB74B1B10ED84CA82A163CFD3006043926D02C7366E03CABA6249B64218C6D032D4A851C3F4EB7C3B2727C7F4F3C607E9F3D75F7F2D354BCB972F9720E2FF3EFDF45379F2C54B6E0180';
wwv_flow_imp.g_varchar2_table(40) := 'D3BA78F1E2A270E1C2D2728FAB09E92ACB962D6BD980C98DCA0161E666CDD300306E124E1B2A597EF2C92762CF9E3DB2928D0E3DFCF0C392CFFCF5AF7FADF35A5CCFD267FC9FB809586C7EFAF6ED2BB66CD92237D2B66DDB2CAB7D9D0400A7FD9D77DE29';
wwv_flow_imp.g_varchar2_table(41) := '376999326504D53C394094FFD6D5575F2D7FE706F90030CC32E1964C3C2951468E1C294E9C384170414CAD0DFC2546A3060D1AB8B16651BFF1DD77DF49C19E1B812A3CEBD6AD137BF7EE95B2860E3905001406B48D2F15AC0A602854A890E0264804F900';
wwv_flow_imp.g_varchar2_table(42) := '3837EB46FE9C5375FCF8F1C179F3E6117413E0468022B952B46DDB560C183040942A552A116B18F19B2411801D9A3B77AE602C38F171B3EDD8B123267B613700AA56AD2AEB355334BD74E9D202CBB94E4C855313EB032064661510384949C5023B019F0D';
wwv_flow_imp.g_varchar2_table(43) := 'AFFEF9E79F5FF034273F36004EB3FBEFBFDF130B1A4EE8632CFBF7EF9729E077EEDC290D42FBF7EF97B75B2450DB05005C26B88DFEFCE73FCBBA6CB03C5E221F006156C3781B209821177072C2E6B09808AF6818DAB46923AF71FECE69662636C0EDC50F';
wwv_flow_imp.g_varchar2_table(44) := 'ED137D7FE38D37700D09E6E4E4049013C2912E008C40C239F09E7BEE91AC0DE9EED1EC705078917C00445995D0CDB36CD93281599DDB802BDC28F07A71F347DB70CB972F0F66666606B05D9C3A754A7CF1C5171718E57400A0363F7352B2644971C71D77';
wwv_flow_imp.g_varchar2_table(45) := '08AA71224F714B7A997C007879755CE8DBFBEFBF2F7EF8E10769C4DBBC79F3F92FEA00809748294F12B13FFCE10F92D5418D0979FD60F001E0C2264B864F20280F1F3E3CB865CB16291B54AC5831805DA36EDDBA61BB5FBB766DB162C50AC90EC216AA0C';
wwv_flow_imp.g_varchar2_table(46) := '7A37DE7863526C7C35281F00C9B03B5DEAE39C397372274E9C98BD69D3A67C65CB96CD8766AB71E3C661BFFEDBDFFE56AC5EBD3A177B43CF9E3DD3080E8205F2FA891F3A181F002E6DAE64F80CB121FBF6ED0BBEF1C61B81AD5BB70660679A376F1EB6EB';
wwv_flow_imp.g_varchar2_table(47) := 'BFFFFDEFB13164F6E9D3277FD7AE5DD3117893917C0024E3AA39DC67EC20D46A436D1A2929302AE163C78EE554A95225EDCA2BAF8C692C74B8CB969BF7016079EAFC175361067C00A4C22AFA63B03C033E002C4F9DFF622ACC800F805458457F0C9667C0';
wwv_flow_imp.g_varchar2_table(48) := '0780E5A9F35F4C8519F001900AABE88FC1F20CF800B03C75FE8BA930033E00526115FD31589E01CF0080C08D0F3EF840E0BBAE537DC5F2C8435EE4FB98FDA3A538B4EB5B7E3BDE99818403003FFB6FBEF926B876EDDA00E9C60140A288785A7E7C10246A';
wwv_flow_imp.g_varchar2_table(49) := '05DCFF6EC201B062C58A60E7CE9D833B77EEC49C9E3093BA4AA4D4A74F1F19BD94ACBE2DEE6FA1E4FE62C201F0F6DB6FCB78DAD070C3444CAB020139657AF6EC99882EF8DF747906120A8077DF7D57269625EED6CEDCFDF1CE21C9AAC813E453EACF4042';
wwv_flow_imp.g_varchar2_table(50) := '01F0D1471FC99851527778897C007869359CED8B0F8030F39B570140ACF3975F7E29EB2F13C86E96C8AD4A2CB0997A6966DB74EB391F00791800EBD7AF3F9F900ADF7F5851AA5F923A85482FB344D1114A45B56AD54A667723631DD9DD8C2950BC1A29E6';
wwv_flow_imp.g_varchar2_table(51) := '03200F0180939D342864613B70E080CC9AAC4E7A1400E445251086385F5D22992D75D3D8E82A412D3729D579881926239C1729E100209FE6DAB56B3D3537A9C002194F5C32C4918A7DE3C68D32C91719E288FA82DDB183C22930001675D10003DFA36A27';
wwv_flow_imp.g_varchar2_table(52) := 'B7824A87C877BD702B241400E4D9A1A83557AF9788C5A2804632927153510587C45EF3E7CF17EFBCF38ECCFF433AF54410C96FAFB9E61AD1B56B5799BBBF448912E733E92512080905C0C71F7F2C264E9C28537AAB52A389581CE337299B4406B8D0626A';
wwv_flow_imp.g_varchar2_table(53) := '89EE97CEF7C9650A1BC3DC625FD9BD7BB74CF308255ADD5CA54A1599439580FB7BEFBD57142D5AF4BCBC910820241400F0872C0E8999BC9028950D821047C6376371059DCD97C867C9024DFF31E4C1CB53C65455C54CF4C60F9D17E698F4891414A1B888';
wwv_flow_imp.g_varchar2_table(54) := '0282DB20481800DC1EA8EEC6F47AFF42C783503B78F0E0E0B163C7020B172EB4545D45778EE27D1E50A229A276D7430F3D246F05B7296100707BA0A9FC3D363FA73E153013E94FA533C7A1371220A0907599326582C58B170FF805327466330F3E8BD10A';
wwv_flow_imp.g_varchar2_table(55) := 'B5E5C1830729D42D01908CA480000B8C607CC71D77E4F6EDDB3770FFFDF707CC94388A77CCFE0D10EF0C26E8FD3D7BF60467CC9841CD6304DD343BEA82256828A19F0DDE7AEBADE2CD37DF0C9052DDE99BC0078047565DA71B14BB78E9A597D0F2C0F248';
wwv_flow_imp.g_varchar2_table(56) := 'E58ECEFBB19EE55466E3F113A98E31CF003ABBEB1CAB1B01A198E27FA45A77F226881B00C9262CC65A7CBB7E6FF7BCA8F63068518E75EAD4A97675F5A2766045706D200334014BA1117AF4A5489122A24993268EBAB1139884260B103845960010BAB8A4';
wwv_flow_imp.g_varchar2_table(57) := 'D1FEF7BFFF2D734926229CD1A9C9D16D1743130521886FE01A87EC00826A83427758CE5F79E515DDAE457D9EDCFEAFBFFEBA7465C05D82FCFE38B7E1DE10A98C2BB7C3F6EDDBA5AB03FDE35DFC888CC0B443F54ABB780D3B557D531B006A31BA76ED9A43';
wwv_flow_imp.g_varchar2_table(58) := '81E9FCF9F3079888C3870F3BCEAFD9BAEA0E34C666C1DAC9F54D8188B163C70A952FDFEAE7D47C7312F7ECD933F8EAABAFB2E12CB13CA1658C56AF5E2D37304648808B031C6350255763F519A737C502010858B35DBB76C92A3A183749992EF9B340202E';
wwv_flow_imp.g_varchar2_table(59) := '568904BD4B962C11152B568CD525EDDF6B038041F7EAD52B67D6AC598153A74EA531382B15BDB57B9A642FB089C8A1FFD65B6FC993341EFAFAEBAF73FAF5EB97357FFEFCF4ECEC6CF37ECA868FAA4D48516A6A84E10B44516FD68EDFD97573D31E63C7B8';
wwv_flow_imp.g_varchar2_table(60) := '09FB82051AF78778897E53C483628476DCAAAA3FDA00E0842857AE5C70C78E1D964EA1782722D9DE278FFE840913A4F9DFEA26DBBB776FB069D3A6395BB76E4D1342F0639A0CA76F10A3D39C3973A8FE62FAFD781F84A55ABC78B1AC6A8FDF573C374246';
wwv_flow_imp.g_varchar2_table(61) := '46C6D9912347061A376E9C3FDE7E5906002FA29EC2C7C43FF9CD2DC39A356B6425742BDA0C74FDFDFAF513FFFCE73FB5ABBEABCDFFE0830F8A162D5A2097046BD5AA9590838B1B87E2E3C88B688F2CB2453968BFFAF4E993CFAE5B40EB06C0CFE4E5975F';
wwv_flow_imp.g_varchar2_table(62) := '965A087C4DEC568199DB4EC9F514FC3585E870FCD205C0D1A347A9DB45D16E41D4950EA90D46816A6491CA952BEBBCEEC8B380F9C5175F0C8E1A352AF7ECD9B3DC6411EB1447EA0007C9A851A304E3B203045A0040CB91919191D0DC3D8EAC8C838DC603';
wwv_flow_imp.g_varchar2_table(63) := '0022B3F09E64E3E8D0B9CD1FAC5CB97200AD8C974A95FEF8E38FC169D3A6E5AE58B1226DFDFAF5019508CDCC61AA405DBE7CF9E0A44993B855E3BECDB40090999929B338CC983143FA96FB147B06AC02002F4ED49DCF3FFFBC36EB2384C82D5BB66C70CE';
wwv_flow_imp.g_varchar2_table(64) := '9C396965CB96D5DA24808DC2E0A85CCDC405C31520EC23A4EA10E38393602313B3609614B81B366C185CB870615ABCB78016005427CB972F2F75C0BE0C107BD9F071411BA2C302B1A8842E32CF162858B264C9AC65CB96A5676464981298E1CF515BD257';
wwv_flow_imp.g_varchar2_table(65) := '6234E0B371B0334B6879F0E6C476C08F59828DE65B2809385C75E881071E103367CE3C6F6FD179D7F8AC36009416884C6E66AE2DAB1D4B95F7080144ED484CAC592DD0993367A4FAB443870EDA1BA370E1C2D9EBD6AD4B5786B868F3C877A810CF61F6E4';
wwv_flow_imp.g_varchar2_table(66) := '934F0AFEADC8AC90AA9289F11E4144A4B7E4E63006C487EB833AB9D1703DFBECB341549C66355CAA6F68B3B8ADE2216D0070EAB768D1227BD1A2456999999969C60988A723A9F82EA17F08C03AEC01F34B882895DA75E9DA6BAFA5D07500578668C4694B';
wwv_flow_imp.g_varchar2_table(67) := '201231C1CD9A35D3FD4CD8E78D80416E21041336271610F6EDDB97336CD8B0B353A74ECD278428A0D319026A48AE164F1A4B6D0028E4366FDE3C6BDBB66DE9E9E9E901FC537C99E0FF970E2B2841E09CFCF0F0B13640E882730AA337E734D5B961711980';
wwv_flow_imp.g_varchar2_table(68) := '7D89C582B0F989116EDDBAB5FCB4D9935E6763AA67B1E06219C63A1E8E5757FF87B16CD8B06152DBA54BCC2FDFB04ADA00E043741C56883FE11B9F79E619316EDCB8200291DD9E8956079680F7CE125159B366CD02A3478FBE045B89DAC066591FFABC75';
wwv_flow_imp.g_varchar2_table(69) := 'EB56C9FBEB6C4CC2374930C08D13ED5BAC0FF684279E7842ABFD78E6B270E1C2924DC9CDCDCD2956AC58BE48EECD8000952FFE443A046BF99FFFFC47FA2F59214B0008F7A1C18307670F1932049ED592A9DE4AE73DF6CEC1366DDA1C1A3E7CF88D458A14';
wwv_flow_imp.g_varchar2_table(70) := 'B9D94ADF1046E1FDD5E96CA60D7C8D66CF9E2D6AD5AA15F571363F1A974424FD2D58B060EE55575DF5CBFBEFBF7F69464646C4FD414C73E7CE9DA51BB40EC5730BD806002E062C9623468CD052BBE90CD4CBCF56AA54297BE8D0A159B56BD766812D99EA';
wwv_flow_imp.g_varchar2_table(71) := 'C9D4C646D6D1FB73D370AAF3672482ED211F102A552B49AF6C9AF79C7BEFBDF7CCFCF9F32F2B56AC5858ED14FE4303070E0C8E1D3B566B0FE166823C6345256A2700D8FCD26C9F17095703DCA0EFBCF34ECBC3DFBC79B3298F47A3631BB76EF3E6CD252B';
wwv_flow_imp.g_varchar2_table(72) := '1A8EFD4136C372CA0F374C22A970E1C2390B162C485306ACD00D0B5B4DDE225C26B8D58C5AA968FD46EE59B16285B8E9A69B4C6BDA547BB60280C520DB735E237876FCF429B16435BD0BC6205C9D3B75EA647AFA4829025B132E60446D2E6285E99BAE9E';
wwv_flow_imp.g_varchar2_table(73) := 'DD7427341E242523AE0C03070E94A95022C9039CE68F3DF698CC1A6EC6D6841B3773814648D7DDC40780C602467A14B7626E3F549756AE61DA65B11F79E411E9531F8DD4E95FAC5831A97C40A02510291C71FA3FFAE8A362D1A245368CD2BE2650BD0E1D';
wwv_flow_imp.g_varchar2_table(74) := '3A54942E5D3AEC7C711330A7C42B98D584E1728E5B856E0CB1AD0000D9F0993A1A0CFBA635712D719AA1C1C041CB2AA137272F8E99B9E3997AF5EA49D0A10509059DFA375656581F9CEABC44A847914960DDC29DD8788B1292F9DA6BAF997203613E0013';
wwv_flow_imp.g_varchar2_table(75) := 'B60D5DB21500A4E7A0E33ABE1DBA1DF6E2F398E5D163C70300C2FE38F5CC103C2FF38CA5185FA348A77FFDFAF53D977898BEC20A71DB518B0D0D4E2880617B3EFBEC33F1F8E38F4BA360A4B04CE3B8E1FFDF7BEF3DE9ACA9C306D90A0072D4E0E03465CA';
wwv_flow_imp.g_varchar2_table(76) := '1433EB9832CFC40B004EBC59B366497704334412294EF770D1516A3371238D1B374E86AA7A91B05DB057A2A97C6BD6AC29FDA8CC000036B065CB96D28E10E95008370FB602800FFCEB5FFF928512F2120100361C1BD30A71FAB3F9CDA62B27ED380A074E';
wwv_flow_imp.g_varchar2_table(77) := 'F87084C08B87E6A64D9BAC74C79577F017C2DA4D945824152EBF47B035AB1626FD3A91673A4631DB0180FF79C78E1D5D9944AF7C04D6077E9C13D90A71FAA3F5304B7C07598BB425E18814836887BCC6FB87F615ED1511627FFCE31FC38E830381C31420';
wwv_flow_imp.g_varchar2_table(78) := 'C7D2062107C01AA24A060866C90780D9990AF39C1258D990C80008C3560843569B366D4CBD8A9727DA9FF6EDDB47F4D747D5B861C30653ED25F221BC390140DDBA752FEA8662E51A356A24DD3C6245C4B116B7DC728B9419520200C64C052AF384599558';
wwv_flow_imp.g_varchar2_table(79) := '585EEF5CE603B569639D28663706421CA73F0BA5237C19DBD70100B70DBC3371BE91086B326C955D63343B17BACFE1CDC958B8C922A98F61F3106E6359B0530E004C26051E70F0426D068B6085A7551B9EEB11235383060DA4AEBD5DBB7632AE395E82FF';
wwv_flow_imp.g_varchar2_table(80) := 'A7A24C3C9916740040600D9B269AEF4FB20080B9E7E078EEB9E722C62CEB000097089C09132A04DB2503B0A9B8E691EE316EA0616ADBB6EDCF1F7EF861BE4020709999DBC0E83280855AC9266815B82A6BD4A891FBD34F3F998A9A8A0414D81EB42DF1C4';
wwv_flow_imp.g_varchar2_table(81) := 'DDDA0500758A6223E0D434A33D89F70088F77D047AEC4758D1C3915900F02E56786C0BEC1DDCC3CD90ED32006AA86EDDBA4976C0CA154C9A3EF8424E68AA0B1AE9D0A143D91D3B760C2C5EBC181098B2122268A16940EF6C8C71A56F084CF8F0E0856806';
wwv_flow_imp.g_varchar2_table(82) := '50E12614009075C12B37006E0FA8A1BFFFFE7B33EB9FF067D0005192CA0E0030186E0154A758CACD90ED00400DA5E23CCD7420F4198A2D23F444DA506806D080A06E3543F88820A0221886129B1E3E9478582B60A53DAF0180F1928728194E7FE6CFCE1B';
wwv_flow_imp.g_varchar2_table(83) := '80F61084890F481800E8C49B6FBE69B9C81C00E0FA8E1610CE898B25D40C212CC23387B3D22258A1BB4F2500209396BBCBCD00000C7F49444154E05794570190F01BC00E0044BB01685F0700D5AB57972C553800A05A0300B042A9720390451937826421';
wwv_flow_imp.g_varchar2_table(84) := 'BB6F004F00802C080F3FFCB0A53588C502D128428ED9C826A70100AB86D10956CA2AD92504F37D9410785AC6F22AB5DA57BBDFB31B00D414200413DF203364BB0CC047F30A00C84680A68ABC3866273CDCA2D80900DAC7B0041B69F55633B371EC7A2696';
wwv_flow_imp.g_varchar2_table(85) := '3558470B84D204073A2CE166DD217C00C4C102217012C442DA13AB71006C24BB01902C760054DCD801FAF6ED6B9B1D8022E13AE403200E00203F90FA841428F1900E00D06621D344739DC68B921041AFDF0018F57022E42049194B301B81723B1824AC50';
wwv_flow_imp.g_varchar2_table(86) := '32C9008900000130E467C5AE118992050068FA007324AF56C6679605F28C2B049D26B113B92263F96F845BC0BC0800D82833A95094F10F10E00E1DC978449824A906BD1E980450E1D72379D192CA057986D0C8586A5D4F01808D8D31C68A77645E040005';
wwv_flow_imp.g_varchar2_table(87) := '06D19AC5F278540706B9FE0140387768C54A346CD8501E445E25B466381146637FB861C976176BF3334600802C860A38A1DEA06AC2D1E58773738DB520791100EAD664D39A21640E1CC888808A4468A68833A0449117091708D29F448A6950DAAC0F3FFC';
wwv_flow_imp.g_varchar2_table(88) := 'D0D4C1809B0B2AEFB7DF7EFB22179A68E3774408E68344F244E3ED22752A9900800D0001369E5C406A1EA8F88E139B59E204C587861A649188EC0BE401F522B1F1B9C52255AE21B12EFB876461B16E00C5FE1003C1FED14945E918007417542D52320180';
wwv_flow_imp.g_varchar2_table(89) := '1318A353AC6CCC6636E0C2850B23F2F4E1DEC7E28B41309A368894286456F01A01741C14E1FDC3A53141762440884C1966C221D9F0040A990D2935CE870F008B6A50AE702CC0A8F27473D184DB90AB56AD9269514E9E3C696ABFB2E0688330FC443AF1D0';
wwv_flow_imp.g_varchar2_table(90) := '14CD9933C7547B6E3D440D65EACC45E20E9061C8368E7D8022216609F767424075D7C207804500E05B44225B8275EC203436686ED0E09821785E4E7F32BFA11532921284394561D1BC44C4FFE2CB15C9724E403FB11B94E1327B186050C3F8873241372A';
wwv_flow_imp.g_varchar2_table(91) := 'CF3100908D0C149BF5DB4F3616882210F0D7F1B840846E4CDDD4E8F8BDA04634A653549B1FE19758072AAC7B85F0CC2517101EABD4510825FA4EF95DFACD9F6689FA0308CB0425E9F0FFB4EF1800D0DD3669D2443B3023596400270040C8279A20B3D91C';
wwv_flow_imp.g_varchar2_table(92) := 'C88989AA105702FCDF712C838E1F3F8E86253873E6CCC0912347CCEEA3B0CFC15214295244C0BAC09B6FDEBC39D76C292363836C7ADCD249D70285B3FC025A32C621DB9C3871C254BF99833A75EA88050B16987A3EF421C700C022129944F08A0EE56500';
wwv_flow_imp.g_varchar2_table(93) := '901E1CFE58555437336F9C786C7C124DA1FA44362043DFA851A32858A295663CDCF760AFC84057B66C59996077CA9429D98B172FA65D59E7D74C1F919348D1182B6D0CB5CA60DB0857354BB83F23E770205921C70040671850B4BCF5E13A9C2C00400D49';
wwv_flow_imp.g_varchar2_table(94) := 'E08F9D2C10F3417952E68C535C374C933E911A10592296EAD0C4660996295326D8A3478F40A74E9DCE6FF41D3B76E476E9D2E5BFEBD7AF2F909999495DAF68246B1553FA081044A37DFBF6C90373F2E4C95AE5B6D086212C5B7546740C003862119B6936';
wwv_flow_imp.g_varchar2_table(95) := 'DFA59A9C6401007E2C5CBB9CBC761257FFB469D364EE1F1DD295B5626DDC52A54A0561AD3A76EC2893061837D8DEBD7BB39A356B96BE6DDBB64038873B82D3AFBFFEFA20F500A64F9F9E1E2B5E9AD8054AA56218D325F6D7071F7CA0FBDAF9E71D0500AA';
wwv_flow_imp.g_varchar2_table(96) := 'BD68F96B92F50640D38001C7891B8039410D08CB014FAC7B0B58DE09FF7B3158A244094A97C2FA5CB4F9A3659E801F473B053B3268D0A0605A5A5AB06AD5AA518B593356787EB459900E909923EC1CBA5C86718E7C00585083C267A35E84E530534D5D77';
wwv_flow_imp.g_varchar2_table(97) := '53A212858FA7DACEB9C283BA4D683F7F6EE3058B162D9A3B6CD8B040EBD6AD2FDAFCC646513BAE5DBB56B25A1C085473417B438E537C715499D770AC89FABF23478E0431249256C6AC3C61E843B04E9D3AC1A54B97C695D6C607802600D8289CFEF83A51';
wwv_flow_imp.g_varchar2_table(98) := '94C109628350C09A93D48C25D4A63E040B152A943B79F2E440B366CDD2D4491C49AD48F6052CCD08B6B03C08C864C923915954A1201894A7FCF1E3C765816CBE6761F3CBEFCE983123989191614A108FD4271F001600004F4BC8A1530060B1545547ACBD';
wwv_flow_imp.g_varchar2_table(99) := '2E94370A5E71C515B973E6CC49AB5FBF7EC08C3595D423F840A18357C4C636638882B523771475C0AC04ED90DD0FB689A218F1926300E06AC43881B3960E5FE7752198B16070A102BC93005020801522739A59DB80850D11CC9F3F7F70D1A245811A356A';
wwv_flow_imp.g_varchar2_table(100) := '04CCB274D804CC3E6BEC13B510487349DCB86EBC88DA47A8655117DB418E0180CE51B3097F191D5B800F800B9795B88AA64D9B4A00E81C2466370706B49933674A57622B1BDAEC77780ED68EB807B46766631F54FB2AD3203E4418CB60B7EC204701C02D';
wwv_flow_imp.g_varchar2_table(101) := '409226AC8066C907C08533A56AFC123C42D13B3B41405BC4166CDCB851CB87DEEC5A1A9F43404650A608B655968E305BB453687FEC22C701C0E4EAD4CE4A0600B82103181718A730785EB425D809EC0201ED9096046D8E91978F677319B53EC831B02B08';
wwv_flow_imp.g_varchar2_table(102) := 'C938B759A573A7FFD9D1A347A7F5ECD93362A5792BED3B0E00021A744223BD0E0026193528C0369B81D8CAC284BE8365188B2ABCEFA14387EC68520289D394CC786604DF481F0D557552970CD7074E7C52DCC7434A3D5BBB76EDACE1C387E7AB50A1422C';
wwv_flow_imp.g_varchar2_table(103) := 'EBB3D6E77C00686881580C3C30BB77EF2E7393EAE4A1D75A959087D506FBE4934F72BB77EF9EBB66CD1A74DF71E9BFD52770744317DFB66D5B6D4F4A633789DDC50192ECDE1C0E58B3EDA26AD5AAE54E98302150AE5CB9B8549EE1FAE3034003005CC518';
wwv_flow_imp.g_varchar2_table(104) := '7858E044D0FEFDFB73C68C19933D7DFAF4C0E9D3A7F35BD19F87EB3759D438A9115063DD0480111B889247688F4D8F2517CD9822BBD8B48A152B0667CF9E1D088D79B06BFE7D00680200CF4B047BCCFE6E92BA050E1F3E9C3B62C4882C366C56565601BB';
wwv_flow_imp.g_varchar2_table(105) := '40003B87C60E17F66820406F4FA111D4B3A16E1A766D7A35AF18D508728937F158B475F201902400601115080E1E3C983376ECD8AC79F3E6E53B79F2647EBB323FC00E51E08460FA58FCBED98455160F09E98FB46CD9B2B45896658BEDFFEFA60A3AE86D';
wwv_flow_imp.g_varchar2_table(106) := 'A5AAB0600CC3D7DD0C79590886054AD40DA0E6CE2870A211C25F88D3D88A4535DC7AE0DE8D004B8DDE68842F10DEBEBAC6AC686D72F3142E5C3878C925979C5DBA7469FA6DB7DD66ABC0EBBA0CA03EB863C70EE93F6346FFEB03C0CC31F1BFDB8083A577';
wwv_flow_imp.g_varchar2_table(107) := 'EFDED29865170B82968B9425D1D25B92D684FCA37602805806825B94239DB99988EF29475920BAC6C904CFCC89815A2C16F90088354317FF1E3B41972E5D82AB57AF0EA0228D2718468188CDF8C20B2F84CD414AFB588EEDA84453A040016981E666C5D8';
wwv_flow_imp.g_varchar2_table(108) := '87CADC6A708BFECC391813AC3A934A006073E000460106B785E0688BCB86E176656376EEDC59CC9B372F98959515B7CA10E1930C0D787D2AE23BD5AB570F6EDEBC39A0EBCE106E0C1849F17522561816339616CACA264F98109C6A37009B9EA075AE69AC';
wwv_flow_imp.g_varchar2_table(109) := '9B5E2462099E7AEAA99CAD5BB7A6EDD9B327106F3C018632582CC64DB6362CBB043AC573CB306F381272DA3FFDF4D332A83D51E4380BC444E1D0050B64E6C4F02A0BC4E9C46620831B4958CDB8FD266A510F1D3A846E2340EA44DC968933369B6521B4CF';
wwv_flow_imp.g_varchar2_table(110) := 'E704539972107E7FF7EEDD716D7E846CBC6929834BAD036C10E152A4B835778E03001688A0657CB83191C722AF02807EC312ECDCB933D61012FA7B23FF4CACED2FBFFC224BCACE9D3B3778F9E5970730601D3870E07C1FED129CA30D9A0D8FFCC7E62773';
wwv_flow_imp.g_varchar2_table(111) := '05F3482C35FC3FE426CF1FDA4FC701C007B93A49944570077584A31100C063305AE5753B8BE4C1839A2D93DAAA552B59122919C8B8A90E1E3C2823CCC8A00680294A81F31BEC1245C2C3911960447A86131DCB2DBEFFB88E204C73FB73DA1B03E413B9F1';
wwv_flow_imp.g_varchar2_table(112) := 'D5985D0180FA181E81F89D44ABE384599D28FF68795ED053F7E9D3C7D43EE49AA50C8F4AC8647C894521ADC6AE5DBB22B6C56222F8622422B15334609AEA90CB0F856E3284583277E3C7C46D80000A3BA70450344A04AA9B556F124F40B140153A89CC41';
wwv_flow_imp.g_varchar2_table(113) := '903ABC3DB70F40D3F10676797A9CCB0C17692098DBC95B8FFE5A5D81EA59269D5302C34E34DF0F42E948B1172B228B0560F229A91A4EB7CCF70836E1140C771A718291FE04D33F1B862C6C5E38B5ECDC24446621D0B381590F6E680256E0F5B931A2D139';
wwv_flow_imp.g_varchar2_table(114) := '815BCA46B0BACC0D730A7B633CC0BC3C67AEDD006A12D854844A229485AA1255860104E668FEE9DC2038A4C55A20F84E52FA71CA87735D56B98B9495DA18004E7FF97DC99225CFE7B0F7F242DA050AC68CE08C9C10CBDB15170C7C87B8B5432959E6CA35';
wwv_flow_imp.g_varchar2_table(115) := '00D825EC589DD868E939626D1EABDF8CD5AED77E9F57C6699C775701E0B505F7FBE3CF800F007F0FE4E919F00190A797DF1FFCFF01917BBEA19A61F4CE0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26028943168154664554)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED9D09BC4ED5FEFFD73EC7780D254DB81545AEDB408583FC0CF5A25BB77BB99A28A441A9449929B74324A594';
wwv_flow_imp.g_varchar2_table(2) := '59212943BAA148862665AA94263264A8509221AAA338CFFEBFDEABB3FD9F9E9E61CF7B3FCFB3D6EB755E86B3F75A6B7FD75A9FF59DBF9A504D514051206B29A065ED97AB0F57145014100A00D4265014C8620A2800C8E2C5579FAE28A00040ED0145812C';
wwv_flow_imp.g_varchar2_table(3) := 'A68002802C5E7CF5E98A020A00D41E5014C8620A2800C8E2C5579FAE28A00040ED0145812CA68002802C5E7CF5E98A020A00D41E5014C8620A2800C8E2C5579FAE28A00040ED0145812CA68002802C5E7CF5E98A020A00D41E5014C8620A2800C8E2C557';
wwv_flow_imp.g_varchar2_table(4) := '9FAE28A00040ED0145812CA68002802C5E7CF5E98A020A00D41E5014C8620A2800C8E2C5579FAE28A00040ED0145812CA68002802C5E7CF5E98A020A00D41E5014C8620A2800C8E2C5579FAE28A00040ED0145812CA6800280388BAFEB7AB9A2FF2E1BF5';
wwv_flow_imp.g_varchar2_table(5) := '6BE3FFB278BBA4D5A71F8A99ED4F9AA6C5FE5F5A7D901793CD5A00D075BDAA10A29910E20C21047F8FFEF182D6AACF705060BB10C2F86146CBF8B7A6696F87637AFECE222B0020E6B073E8F9514D51209A0280020D2058A669DAD46C204FC60240D1A1BF';
wwv_flow_imp.g_varchar2_table(6) := 'B1E8B0AB039F0DBBD9FD6F0414000200212339848C0280A843DFA988A5777F4BA81EB39502120C344D1B944904C80800283AF80F082138F8AAF948015DD785A665C4364A49B5A26F0508E0069ECD04AE20AD57AEE8E03FA364FA947BF70F0FB0910F1F3E';
wwv_flow_imp.g_varchar2_table(7) := '2CF6EFDF6FEBF0F27E4E4E8E38FEF8E345A952A5AC0D9EE64FFFF4D34FE2E0C183926E450030A852A54A692B1EA42500B46DDBB66A8B162D1E68D3A64D273660C992256D6DE434DF8BB6A67FF4E85179F8972F5F2E66CE9C29ECDCE0858585A26CD9B2E2';
wwv_flow_imp.g_varchar2_table(8) := 'DA6BAF158D1A3512F419CD05000EAC097FA66BE31BA193D18A0EBC78FEF9E7C5DB6FBF2D7273738F7DB3AEEB53737373074D9D3AD55024A6CD67A72300C0EAE79F73CE39A269D3A6E2B4D34E131D3B7614152B5614254A9450409064EBFDFAEBAF62E9D2';
wwv_flow_imp.g_varchar2_table(9) := 'A562C9922562EDDAB562F5EAD5F2F0DA69C58B17178D1B3716F5EBD717BFFCF2CB1FBA604DAEB9E61A71F2C927CBFF070C3830616D8020743872E4C8B1296EDDBA553CF7DC73A2A0A040FE1FF3E767C1820562E3C68DF13EC55018A6958E209D00003BFD';
wwv_flow_imp.g_varchar2_table(10) := '9FD87DD8D056AD5A895AB56AC91BA95AB56A61DD6781CEEBD0A143E295575E11C3870F179F7DF699A77339F5D45345CB962D252873B83A74E820CE3FFF7CF977B88230800173E196E74F03185F7FFDF56322CD575F7D255E7DF5D53F700126890610342F';
wwv_flow_imp.g_varchar2_table(11) := 'F23530F94A708FA50B0060C67B2B964CB0652C60B162C544850A15C40D37DC20EEB9E71E71C61967D8626D835B06EF47DEB16387F8EF7FFF2B9E79060CF5B6451F72B8B22BAFBC525C78E185E2B7DF7E13E79D779E046CD68D16840291B101C4D9B3678B';
wwv_flow_imp.g_varchar2_table(12) := 'DDBB77CB79BCF6DA6B62CD9A35C7E61589448E01840D6AA50D37900E008066DFD4AE2D53A68CE8DCB9B3E8D7AF9F38E59453140844EDDC6FBFFD56E4E7E78BA79E7ACAC67E76F60A80C041E7C6AD53A78E78E001A43821FEF297BF8866CD9A49D1CD2F40';
wwv_flow_imp.g_varchar2_table(13) := 'E0E023FA6CDAB4493CF6D86362DBB66D9223E1C01B7370F6B57F783B5F08116A9120EC00C0C1B764DA6353DD72CB2DA24F9F3EA24A952A81DC302E6E2057BA42465FB972A578F8E187C51B6FBCE14A9F763B010C0CCB015C1B87105D41EDDAB52517E705';
wwv_flow_imp.g_varchar2_table(14) := '47C0C10600D17BECDCB953724268F251F27970E86349136A10083300C0F2DBF2E0432F70E38D378A6EDDBA8933CF3CD3EE5ECD98F750680D183040CC9B374FCABB61691C76F404FCDC76DB6DA27DFBF6C714876ECD71F3E6CD52E7B16AD52A317DFA7429';
wwv_flow_imp.g_varchar2_table(15) := '86ECDBB7CF8F831FFD097813DEE4D637B9D94F5801C0F2CD1F4B94134E3841EA04FAF7EF2F2A55AA94D5E200EC6E8F1E3DC4A2458B241B1EB6065750B56A5509D82D5AB410279E78A204023B264ABE8D43FEEDB7DFEA3FFEF8A33669D2243177EE5C69A9';
wwv_flow_imp.g_varchar2_table(16) := 'C0EFC1871B3F117943C909841100A499CF8D4D0A27D0B66D5B3164C810012078C15EBA314FAFFBE016ECD5AB9758B870A16DB39FD773646D301F02D66DDAB491629C9D35E3806FD8B0411F356A5464CD9A3539DBB66DD3F6EEDD2BA76F288DBDFE9624FD';
wwv_flow_imp.g_varchar2_table(17) := '870E04C2060071B5FD4E160C87952E5DBAC8DBE5AF7FFD6B5682403A0080B1C61C52AC38880437DD7493C0A468A57DF9E597E2C1071F142FBFFC321C803CF756DEF7E1D95081409888839D7F9B170BC04D72F3CD378BBBEEBA4B6EAE6CE304D209008C9B';
wwv_flow_imp.g_varchar2_table(18) := '9A838F8317161D38B9540DB6FFBBEFBE939C0EF6FB58E7A454EFFBF8FB50F9098409006C2BFDCC2C1E72250E29C8C27002D9D4D20D000C102857AE9CF4EBC0A28375271170C3F6E39D3774E8507DD6AC599A5DEF461FF704B103380B05DEC20200AEC9FD';
wwv_flow_imp.g_varchar2_table(19) := 'C9288A9F40D7AE5DA53850B97265DB4AA6C057CDE204D211008C4F2C5FBEBC3CD8EDDAB5D3B016C46B2836517076ECD851DFB76F5F58F674AA550A85281038B108EC99356B9627AC7FBC15285DBAB4B8FBEEBBE54FB6F809A43300B086F5EAD58B4C9C38';
wwv_flow_imp.g_varchar2_table(20) := '310727A2582E80DB1F679E09132688F1E3C70BA2F5D2A4210A601A0C3492307000983469D25B23478E6CB66EDD3ADFD60D8713C34F201B6207D21D00F2F2F2C4C48913653C412C0070FBCF9933478A0ABB76EDF26D0FB93450E0A240A000A0EB7AB30307';
wwv_flow_imp.g_varchar2_table(21) := '0EBC75DF7DF78971E3C6F966A66113A118BCFEFAEB45DFBE7D252760D7E6ECD246F0B49B4C00005C9889238807002FBDF4920400BCFDD2AD952A55AAF9E1C38703E302820680B70E1F3EDCEC89279E90516A070E1CF075FD50320102C3860D936EA899DA';
wwv_flow_imp.g_varchar2_table(22) := '321D00D2980310A54B977EBBA0A0203085606000C0ED4F849FE1A78DAB2AAE9A7E6B700101C4018313C84413A10280F0423BD68D3E7DFA34CFCFCF0F840B0812008EB9FBE29F0E174060C89E3D7B7C5FADE38E3B4E7A9EE1279089B1030A007CDF52A607';
wwv_flow_imp.g_varchar2_table(23) := '2C0280B7F3F3F303E102820480DF03C28590F2F7F6EDDBC5A851A3C4D34F3F2D7EFEF967D30474EB417402F809E07862D5FBCCAD3978D58F0200AF28EBBCDF2200D89E9F9F1F48269B400040D7F5B831FE6461811340E11384271736672394987C029922';
wwv_flow_imp.g_varchar2_table(24) := '0E2800707E50BDEAA1080044F7EEDDF32B54A8E07BEE80A00000BB3FAEBF7F6A6468193A74A8CCC7E6B75290C9B020DDBB7797F103780CA673624B83B80A00BC3ABECEFB8D0280ED152A54F09D0BF01D0012DDFE8628C0AD4BFAAA11234648102076DBEF';
wwv_flow_imp.g_varchar2_table(25) := '8638D0A95327E93598097E020A00FCDE41E6C78B0200621E9AFB5D6B20080048EAF66BC46BE3DD853810142740EC00C128D89709534D673F010500E60FA4DF4FC60040BEDF958782008084EC7F2CF171EC183C78B0CCC51E848B27A9ABEEBCF34EA9183C';
wwv_flow_imp.g_varchar2_table(26) := 'E9A493FCDE1BAE8DA700C03552BADE510C00BCAD699AAFD6802000E098F6DF0C3549E6402EBB2953A604220E90D39ED8F4DEBD7BA76D3E01050066765A30CFC400008A675FCFA4AF832593FFE391DF1007D00960229C3A75AAF8E1871F7C5F29BC041107';
wwv_flow_imp.g_varchar2_table(27) := '08203AEBACB37C1FDFE9800A009C52D0BBF763018030613FF5007E0380AD5C7F00012642400013A1DF7E0246EC00E9C548698D38904E3A010500DE1D60A73DC701005FC500BF01C0B4FC1F4B580E1C299DC78C192381C028D9E47401ACBC8FC720D5871E';
wwv_flow_imp.g_varchar2_table(28) := '79E411C1DF7DE6D6AC4CF50FCF2A00B04D3ACF5F8C0300DB354DF3CD1CE837005892FFE3519F90CF279F7C527A0CE227E0779657928ADC7EFBEDD257205DFC041400787E8E6D0F9035005054CADB95C41FE804881BC04468647CB5BD02365E442760E418';
wwv_flow_imp.g_varchar2_table(29) := '249D75D8390105003616D9A757E2000023FBA607F08D03B0AA004C447FE3C6277660E4C891523148B927BF9B9163B067CF9EA1CF27A000C0EFDD617EBC6C02005B0AC064A44427400AE8193366040202F809DC7BEFBDD23A60041085911B500060FE40FA';
wwv_flow_imp.g_varchar2_table(30) := 'FD640200F0CD21C84F0EC0750060B1A8F642AD37C481A23CF0BEAE210B0800104A1CD6BA030A007CDD1296064B0000BE5902FC0400D7D37E1BA638740286381054EC80E12710C67C020A002C9D495F1FCE2600B06D024CB522466658CC83CF3CF38CACFC';
wwv_flow_imp.g_varchar2_table(31) := 'EA67338A5C528B90CC4261AB45A800C0CFDD606DAC0400E09B29D04F0EC0B109301569A90C838D9E0CB241E413C04448855BF21BE2271096A600202C2BF1E779240000DF5C82330A00202F200027000804210E508BD0C83118169D800280F40300214479';
wwv_flow_imp.g_varchar2_table(32) := '4DD33C376FF90200BAAE571242F892B41D71E09B6FBE91CE42D3A64D0B2C760010403918069D800280B40480CA9AA6799EE73CE30080A58E4422327600B761EA0D1C3E7CD8F71D4019AB76EDDAC9D8017C06826C0A0082A47EF2B1138900420805004E97';
wwv_flow_imp.g_varchar2_table(33) := '0D4E80A42263C78E15641EF6BB210E90639094E7041005E523A000C0EF95373F9E0200F3B4B2F52469C6711622A94810B103468E41E207C82C14448E410500B6B68E2F2F650B009C2D84D8E80B45A30631FC04E004881D000482881D401C20C720D98582';
wwv_flow_imp.g_varchar2_table(34) := 'D0092800F07BE7991F2F0900D4D4346D93F99EEC3DE9970E201000304802106CDDBA553A0B010241780CA20700048C28423FF3092800B07738FC784B01801F542E1A03718042A4C40EF89D548429142F5E9C24A33ACE42152B56F4057C195701808F9BCC';
wwv_flow_imp.g_varchar2_table(35) := 'E2500A002C12CCE9E3E801D009E031481C81DFAD54A952912E5DBAE8DDBB77D74E3FFDF41C3F74020A00FC5E65F3E32900304F2BC74F1AA1C4E80470167AF6D96703F113A854A9D2518A9FB46FDFBE58B162C53CB70E280070BC753CEB40018067A44DDC';
wwv_flow_imp.g_varchar2_table(36) := 'B1E127307AF468317EFC78DFFD04CA952BA717A51BD78E3FFE78CF29A000C07312DB1E4001806DD2397B116E80F462F808E035E867EC006C7F952A556456A15EBD7A09FC05BC6C0A00BCA4AEB3BE150038A39FE3B7293E62E4184427E0678EC1934F3E59';
wwv_flow_imp.g_varchar2_table(37) := 'A61BEFD3A78FA78547140038DE269E75A000C033D2A6EE38BAEEC0E38F3F2E4D847ED71D20BF20310377DC7187F0AA22B10280D47B21A82714000445F9A271A36B11A2189C3469926F26425C8319BF72E5CA1204F0160410DC6E0A00DCA6A87BFD290070';
wwv_flow_imp.g_varchar2_table(38) := '8F968E7B421C18346890983E7DBAEFB5084F3FFD74D1AD5B37D1B9736751BE7C79C7DF12DD81020057C9E96A670A005C25A7F3CEF012349C85FCF613285FBE7CA46FDFBE85B7DF7E7B6EC58A15739C7FCDEF3D2800708B92EEF7A300C07D9ADAEE313A76';
wwv_flow_imp.g_varchar2_table(39) := '009D4000750722952B573E326FDEBCE2F5EAD5CB71CB5D580180ED2DE1F98B0A003C27B1F5018C1C8346A2513F4B93E323F0D0430F6958071005DC00010500D6F7805F6F2800F08BD236C6C1223064C8105986CC4F3F01F401A43AA70E213E024EF30828';
wwv_flow_imp.g_varchar2_table(40) := '00B0B1F83EBDA200C02742DB1DE6FBEFBF974945A84AEC572831071E10A0D6004946C932ECA4290070423D6FDF5500E02D7D1DF70E0BFEF5D75F0BDC86FD8C1DC05B90838F42121F01274D018013EA79FBAE02006FE9EB4AEFC40E508B90B801BC068F1C';
wwv_flow_imp.g_varchar2_table(41) := '39E24ABFA93AC9CDCD155DBB761528240D31C08E38A0002015A583FBBD0280E0686F79642A108D1A354A1F3D7AB47EF8F061D7CC748926021750B3664D596CE4BAEBAE13254B96B4A50F50006079A97D7B4101806FA47667A0BD7BF7EA43860C89BCF0C2';
wwv_flow_imp.g_varchar2_table(42) := '0BFA4F3FFD94FBF3CF3F6B70085E356EFCEAD5AB8BFEFDFB8BD6AD5B0BA207AD72010A00BC5A1DE7FD2A00704E43DF7A304C72DBB76F8FBCF5D65B918D1B37E6CE98314323BF80D7AD56AD5A780AEAB7DE7AAB460E012B4D0180156AF9FBAC02007FE9ED';
wwv_flow_imp.g_varchar2_table(43) := 'CA68DCF88585853266000B01BA01AC05866FBF2B83C474929393A35F72C92562FEFCF91A65C9AD34050056A8E5EFB30A00FCA5B76BA319DC004E42C40F4C9E3CD9D31463804B9D3A75A412B261C386C20A17A000C0B56577BD230500AE93D4FF0E49364A';
wwv_flow_imp.g_varchar2_table(44) := '152222094932E265A3DE20494C9A376F2ECA952B676A280500A6C814C8430A000221BBFB83529474EAD4A9521CC06FC0AB0627D0A2450BE99750A3460D394C2AA5A00200AF56C379BF0A009CD330143D2012907178CA942962F0E0C19183070F322F4F4C';
wwv_flow_imp.g_varchar2_table(45) := '85E79D779E2C7402176046145000108A2D1277120A00C2BB36B666C6C11F3366CC91B163C7EA870E1D2A7EE8D021D7F3FF972851425C7CF1C5324EA15EBD7A12049271019B366D123D7BF6148B162D12478F1EB5F55D41BE949797275DB101BED8EF4419';
wwv_flow_imp.g_varchar2_table(46) := '3B67CE1CEA2D782E7E79410305005E5035E03EF7EEDD1BA112D17BEFBD97F3E8A38FCA72E56EE71AA4C8C845175DA46385C8CBCB4B0A32DBB66D93C145AFBCF28A28E24C02A690B5E13319004A972E2D13C3DE7BEFBDB1D9A05469306BDB247C4F73D85E';
wwv_flow_imp.g_varchar2_table(47) := '7CF1455988041070DB6108252069CC6EB8E10659752851A33CFA8A152BC4C30F3F2C5E7FFDF5F0112AC58C321900480187A767972E5DC471C71D174D09050069B753A3266C98090F1D3A24264C9820CD77280AF97FB78080438F1E00336483060D12928B';
wwv_flow_imp.g_varchar2_table(48) := '3177EFDE2DF2F3F3C5C48913D38EAC990C0080371CC039E79C130BE20A00D26EA7C64CD860FB39F8F3E6CD131B376E144B962C111B366C704D242853A68C40CC20A168B232633B77EED4070E1CA863A9D075DD13E5A457EB95A900C07A51A28EE42F7112';
wwv_flow_imp.g_varchar2_table(49) := 'BF2800F06A4305D52F373F69C6280B8666DE8D8642F09A6BAE113D7AF410B56BD7164410C66B7022AFBDF65A64F8F0E1FA279F7C92939B9B2B6318D2412998490060886AAC53D3A64DB11849456E1C25AE0200370E4898FA00E57FFDF5573173E64C796B';
wwv_flow_imp.g_varchar2_table(50) := '6FDCB851D7755D73AA20A4F4B891378088C1448D30E6C58B1747E6CF9F2F4A952A95B365CB166919000852F91224A323F377FA0DC9FA0F1A009C84621BDF057DB0D650221ED0060860FFEBD6AD9B28ED9B0280301D5E37E6621C12FC0588267CE9A597C8';
wwv_flow_imp.g_varchar2_table(51) := '32A4AD5DBBD651F7152B561403060C9019841201803136373E2044FBF2CB2F45EFDEBD25D76017006063313302265E8140D00080A6FEEF7FFFBB38F5D453650C88D5065D788FC22FE3C68D93A21AF426A62311C7268450006095D0E9F2BCB121388C1F7C';
wwv_flow_imp.g_varchar2_table(52) := 'F081B8FEFAEBC5CE9D3B6D1FA0134E38410200C943927100D1F4316EEDDF7EFBCD11D9D8CCE8153047C249F06FAC0E7C8FD3BE8D89F90D005857C8C6C48DCDC1E5E00F1C3850346EDCD8F61AF12D1C7AB3EBA300C0D1B64C9F970181850B174AFF7E0A93';
wwv_flow_imp.g_varchar2_table(53) := 'A028B4727038706890A92F481251D84BBF1B09530DFF023639DCC0881123E4F7D0F826273516BC06000E3A079E3C8C1C78C6A37A33663980121A9387C167DA2A0EC0EF8D1CD47828E8382C5F7DF59518366C9858BE7CB9E9B4637892F5EBD74FB2FFD894';
wwv_flow_imp.g_varchar2_table(54) := 'EDB2F26E7E3B8080DF434141819C0F66D055AB56493328E648ABCD4B0038EBACB3246B4EB2952BAFBC52722F7054546F36E3666DF55B2C3CAF00C002B1D2FE51432C78FFFDF771DBD5D7AD5BA7B11953E51FA4760007AC5DBB76A1A2812162F027F91409';
wwv_flow_imp.g_varchar2_table(55) := '9042E188A8008B0D97433E05333E116E03007237723D373ACAD873CF3D57DEFE546B3658F51000A9028050ED688F2763D88139F01F7DF491FEC5175F68580BF0E0E3FFA2C50258521448DC50DDBB77975983915343B0699352899C8A2B57AE9472F0279F';
wwv_flow_imp.g_varchar2_table(56) := '7C22C51E12A9A46A6E010074C36FA25AB56AE2E69B6F16679E79A6B8F4D24B055C14CD8D222CA9BEC5C2EF1500582056C63C1A0D041F7EF8A1C04200082C5EBC586E507E604FB1FD932BB059B3668EEB0604413C8AAECC983103F764BDA0A04023B14A22';
wwv_flow_imp.g_varchar2_table(57) := '9F0427006028DE38F8E452206808B36993264D5C2FC2EA321D1500B84CD0B4EC0E16F9E38F3F16EFBCF38E6497010064D62BAEB842CAAA21BBB52CD1181160FAF4E9FAAE5DBBB4B973E74AB3249C4E2C10D80500380DB8240E3B377DD5AA55C555575D75';
wwv_flow_imp.g_varchar2_table(58) := '4C931F728E490180A5DD94C10FA3998E3E146C5C1C4942BE8193AE88015CF824602158B06081140B56AF5E2DD6AC59F387FC8A560100BA20DF132781FDBE65CB961204008364415321DB420A0042B6206A3A1E51209A8B993D7BB64C818EE2D050105A05';
wwv_flow_imp.g_varchar2_table(59) := '000E39367BA21FEBD7AF1F46F9DE0C25150098A1927A26B32880C293BC05C3860D8B7CFCF1C77A6161612E918E44319A490852A24409BD55AB561A21B6175C7041D200A990534E0140C817484DCF230AA0105CBC78F1D1E79E7BAE70DFBE7D25F1270000';
wwv_flow_imp.g_varchar2_table(60) := '38D0F13202C135DC7BEFBD91DDBB77475AB76E9D3368D0A01C58FF80EDF84EA9A300C02905D5FBE9490144828282027DFFFEFDFAD75F7F9D43C6659C9DB0D7C703002C24F7DD775F61D9B2657F9D3C7972E9EAD5AB6BC942A3D3842A0A00D264A1D4343D';
wwv_flow_imp.g_varchar2_table(61) := 'A400CA4FD2AEE3E598A8200AD6843D7BF6E8C58B17D7AB54A99256B90E92904E018087FB4A75AD2810760A280008FB0AA9F9290A78480105001E125775AD2810760A280008FB0AA9F9290A78480105001E125775AD2810760A280008FB0AA9F9290A7848';
wwv_flow_imp.g_varchar2_table(62) := '0105001E125775AD2810760A280008FB0AA9F9290A78480105001E125746D791A0824C353EE77AFBC367E1F5467C3AA9A932C07BCDCB25CBB6BE150078B1E2049B90AF8E1C7C2FBCF0824C53656484F162BC547D12F1868F3B1170679F7DB602815404CB';
wwv_flow_imp.g_varchar2_table(63) := '9EDF2B00F062ADC9C97FFFFDF74756AD5AA57DF5D557DABE7DFBBC18C6529FE4F56BDBB6ADACE05BB972654BEFAA873396020A00DC5E5A6E5BF2D577E8D0415FB66C992CA94D708957052DACCC9F14D4AD5AB5925981150858A15CC63EAB00C0EDA545E6';
wwv_flow_imp.g_varchar2_table(64) := '1F3972A478FEF9E74D25A3747BFC54FDA10720169E5056D5B29E020A00DCDE021F7DF491CC064BEAA930360E3EE5C2FEF6B7BF85717A6A4EFE52400180DBF426C3EE2DB7DC2233ED86B1010073E6CC11356BD60CE3F4D26A4EE99C2CB588D00A00DCDE71';
wwv_flow_imp.g_varchar2_table(65) := '64D785035000E036659DF5175D5D189D0CBA1A2C35AC979D46D18F3A75EA88934E3AE9D8EBF49B6649541500D859FC64EF2800709BA2F6FB8BCE0A4CD930AC3146D55C7C345E7FFD75F1ECB3CFCA4AC65694B41C728AA400F4F5EAD53B964A9D2220D450';
wwv_flow_imp.g_varchar2_table(66) := '745209D9FED7DA7A5301802DB22579490180DB1435DF9F71E0F9930C3F9F7EFAA974C6229B0FD97BA98B187D38F97F72039A291D163B0B7201527E0C4E80F70105D28277EAD449FE9B429F700841FA7F98A09C02001344B2F48802004BE472F5610E3E45';
wwv_flow_imp.g_varchar2_table(67) := '5029054691136AF2F16FFE9FFF4B5415C88D49000080018554000094ACF7DD779F2C0D86C935484FD024DFA700C08DC58FEE03D91FD6D0AE6CE9F67C62FBAB55AB9654026692158003C76D4EC560B2F70E1A34481E7A8A815861EDDDA43D75038C1C8353';
wwv_flow_imp.g_varchar2_table(68) := 'A74E95E9C6CB962D9B30E7A09B635BE84B01800562997AF4B3CF3E137DFAF49125A8C2E677CF41E1369A346992A851A386A9EF09F343DCE8BB76ED123FFEF8A378EEB9E7C49B6FBE294B83E38B11A606D8A233B8EEBAEB44D3A64D45C58A15A5F230040A';
wwv_flow_imp.g_varchar2_table(69) := '4305006E6F143623BE00FC89BC19A646F92FE4562AD9F067BA36BE03851E1E9780D9962D5BA4BC0F1884B52102506895DA81175F7CB1D4152032E09D19E045A100C0CD0D63B09B46814D37FB76AB2F6E1D4313EE569F7EF74390D5B061C3C8E7AFBDFBEE';
wwv_flow_imp.g_varchar2_table(70) := 'BB126CC34C73E8639808F9930AC2545CA60641972E5DA468105053001010E1D5B03628C0CDCF2D9F9F9F2FA64C99A273AE8CC31594AC6FE3338EBD4205E6EEDDBB537148827200C5581500385940F5AE3F14E0E063ABDFB06183183D7AB440A996298D42';
wwv_flow_imp.g_varchar2_table(71) := '24580B2A56AC1869D9B2A556AD5A353F2B0E2900C8948D94C9DFF1D1471FE92B56ACD0DF7BEFBD1CE2180E1F3E9C519F8BAF40F9F2E523EDDBB7D7EEBAEB2E0D3D814F4D01804F8456C3D8A0006CFDE6CD9BC5030F3C1059B060813872E448CE6FBFFD16';
wwv_flow_imp.g_varchar2_table(72) := '9869CFC627987E05DD40993265C43DF7DC237AF6EC291D897C88355000607A85D483BE520013DFBA75EB4860A213BE6CC8FB5E4C02AFBE6AD5AA49AB4D225D0207145F03741088245E36CA8EF30308786C2A540010BB90861B29374FD8CC785E6E3A337D';
wwv_flow_imp.g_varchar2_table(73) := '1B0135D8B0BDF423E0F0A3DDC77D17DBBEDB1E7CF842C066F33D580F50C691C301935CA2C30D4860DE654E00014A3BB8114C90381CB9D9D00BDC7EFBEDE2AEBBEE929E841EEE4305002C1C8BBE63C70EFDC081035201B370E1421924825656B53F52005A';
wwv_flow_imp.g_varchar2_table(74) := 'E1E3DEBB776FE9E9C661E270B8D990F9FBF7EF2F4D7CC8FB4E35FCCC8F038FACCDFC498D76F5D557CB030C00608F07D052D9E339F85BB76E95EF7028F9F7E4C9932558952C5952C61F7CF7DD77B6620BA2E9C7AD7FF2C9274BC7A11E3D7A8833CE38C34D';
wwv_flow_imp.g_varchar2_table(75) := 'F246F795DD0060C8582C5A7E7E7EE19A356B728A172FAE11261A66A712AF7683D97E3948E415A85BB72EF2B9BC41DD6A5BB76ED5EFBCF3CEC89B6FBE9973E4C81169E6B3DB38D01C4CECECA3468D92B7298717769F034633F6805956DBE0828C346FDBB7';
wwv_flow_imp.g_varchar2_table(76) := '6F97879E46F2D7C71F7F5CF6895BB29346FF00EC55575D25C68F1FEF151790DD00C0026DDBB64D7FF0C10723B367CFD67EFEF9E74CA9FBEE64EF997E176FC27FFDEB5FE2B1C71E93AEAD4E59D54F3EF9E4E8C081038F2C58B0A0A4AEEB8ED6825BFFC20B';
wwv_flow_imp.g_varchar2_table(77) := '2F949C0A879DB05D6E7AA379A16023E0E8F3CF3F9769E091E10101B804271C0C00D6B16347440FFDF8E38F77DB44A8000076930C3E45C13B8E6E1CD32727831E444CBAE69A6BC4830F3E286F58BB8D54EAF3E7CF8F74E9D225B267CF1E7CA86DAD050706';
wwv_flow_imp.g_varchar2_table(78) := 'E559CD9A35F5DEBD7B6B975D7699EFA21C071F6E60DBB66DD25579E3C68D8E40A074E9D291BBEFBEBBB07BF7EEC52A57AE6C8B2E09D64501C0871F7E28EEB8E30EF1C1071FD8DDBB59FB9EC106537464DEBC79D2C7DD6A33586A7228C249D00FB7A69DC6';
wwv_flow_imp.g_varchar2_table(79) := 'E16FD4A89104A4D34E3B4DBFF4D24B35146A66D97B3B63267A075D03DFC1F7109D88EEC041D31B346850387EFCF8DCDAB56B6B2E7E4F760300C124CF3CF38C18376E9C2CE2A19A3D0A000098EA1A366C68AB030E07EEBD38F9141414D8BA2DE1441A3468';
wwv_flow_imp.g_varchar2_table(80) := '208B9F5C72C92552A18718E0E261B1F56D281A9F7EFA6972134448482284B025DA9C76DA69E2EEBBEF9697958BB103D90D0054EDE9D6AD5B28D377DBDA6D01BD0400BCFCF2CBF2F6B5DAE00078F73FFFF98FD5578F3DCF6127C271F0E0C1C70EBF95836F';
wwv_flow_imp.g_varchar2_table(81) := '2723502A8B41B4AE014BC6D4A9538F2E5EBC58DBBC7973EEFAF5EB6D7D2BA2CDD0A143F50E1D3A682E457366370060D71D31628478F5D557C5C183076D2D8A7A49C8BA8376000036995B71C28409327B8FCD1669DCB831D1815AC3860D35338AC8E804A1';
wwv_flow_imp.g_varchar2_table(82) := '44122E5DBAD49202136E83683EE3109A011BC6E47B5F7BED35D1AF5F3F611704727373A5B5AA4E9D3A6EE802B21B00703059BD7AB5E402C29AC5D7E6A1F0F535BB3A00D8FD193366C888383B727F891225227979798543870ECD6DD0A0418E59961FE71D';
wwv_flow_imp.g_varchar2_table(83) := '14733CFFC5175F88871E7A28A50F40F48D0E0B4ED217EA2C1AC93ECC101C104024C0CF04A5299E8EFCDB4A036C08A88AB60500001B494944415488C28F01CB8B594E24C118D90D0010052E00AFAB356BD6585907F56C14054833367DFA745980D44AFBE1';
wwv_flow_imp.g_varchar2_table(84) := '871FC4134F3C015B6BE5B56367B151A34691471E7944CBCBCB93873F59C3CA009707D018959B78872843AB9E7C1C3AD871F2FF61666CDDBAB5CCF98727A1196E00E09B3E7DBA4E9DC66FBFFDD6F24D4E3E01FC1AAEB8E20AE9E7E0A02900F8F4D34FF5AE';
wwv_flow_imp.g_varchar2_table(85) := '5DBB16AE5EBD1AC7135B0A1A070B90D6AFC20A7303928EEBFCF3CF37B5F98D0F26A30F07F1C9279F94893BAD340E6093264DF4871E7A4843F64FC5F60334881A887BA4022713B05B11858801581A70DB25CB0FC00010246B88020B162C38D2B76FDF239B';
wwv_flow_imp.g_varchar2_table(86) := '366D2AADEBBA2510A0D02BC0091700376206741407908002DC0C6BD7AE8DA05CF9E28B2F72727272345C3AC350D1D7CAA1F0EB59369BE15A8B3720F26C5E5E9EA54D88D20D361CBF7A6A285A6183199B430F78C0712473D7A65F587D126E902B1010B00A';
wwv_flow_imp.g_varchar2_table(87) := '3666E86AB8EE56AA5449CE09B31F5AFB64EDE0C183FA82050BD87739EBD7AFB704000020F507C823D0A64D1B277E0E8A03402E43178043109E5C185951D4601E2C2828D0F9B7134F2E331B284D9E2103CF6FC58A15D39B3469528AB0555C806BD7AE6D99';
wwv_flow_imp.g_varchar2_table(88) := '0D85051E3B76ACFCC16BCEAC169E9B16EF3EAA1B637148C6F603ECEFBFFFBE0499C58B17134AEC0B99E1083A74E8207AF5EA0527A0972F5F5E4B344F1490CC8D67AD4619A277610DD09F38300B2A006057185161C641C7836BF0E0C1853367CED40B0B0B';
wwv_flow_imp.g_varchar2_table(89) := 'DD8D74F1651BBA3F88A669BF0A2136B76EDD3AD2A74F9FF38903E026B2A28432DC6F91C5BB76ED2A6F7F83FEA966CC4DFF7FFFF77FD2CEDFBC79F3A46C3FE3902414197BC99225AEB1FBA9E668FC1E11A065CB96911A356A1CE9D6AD5BF1534E3925A168';
wwv_flow_imp.g_varchar2_table(90) := '0930214261C2040CCD5E36C8FE0465A18C840BB0D914002422DCA64D9B22B058F3E7CFCF415194EDAD54A952475AB76EFDCD8811232255AA54A96E971EB0E56C78BCFE60CFCDDEFEF8F177EEDC592A0C93DD788678C1AD0A27E7D7CD1F871E91D2A54B1F';
wwv_flow_imp.g_varchar2_table(91) := 'E9D4A953E1C081034B55AA54E94F206000229C270A3D2C5166E9C178881E440BA2DBB0D9140024231C515803060C10070E1CB049DFCC790D9313372A87D089E619B617575D6CEF661B4A3EF40C64CAB9F2CA2B1356D901A831AD61D6C3AB30042D2284F8';
wwv_flow_imp.g_varchar2_table(92) := '75C58A15251A356A9430473C9689D1A347EB53A64CD1D08D9805014422000093A2154E2C8A2E0A00926D1264D4FBEFBF3FEB01001916F75A22DCA87F97CAE4968CA66C76E2DC71BE32DB001C645DD62291D69BC38FCC8F796CEEDCB99E67ED313BF79C9C';
wwv_flow_imp.g_varchar2_table(93) := '1CBD57AF5EE4FA3BA6188CA7B5474909673466CC18A9AC34D358071C92503AA218B5B12E0A001400A4DE6A28B6D0BAA3DC7292BADA38A428AFF0BF30DB88DF471C6BDFBE7D42EE03361AE5207EF744E39995A5CDCEC1C973C4F5E3C78FBF0996827800C0';
wwv_flow_imp.g_varchar2_table(94) := 'AD8F3F0240818BBA996658646EB8E106A950B551885401800280D45B8D5B1700A0E6A14D56530EC2A12798859BDA6C639323F7A3FC4BD438EC9B366D921A7F3C0BAD9815CDCEC3E973885070501C7058F7780D10BBF3CE3B2D8B2F00F3C48913FF90EFC0';
wwv_flow_imp.g_varchar2_table(95) := 'E47C1500242314CE1664BCC9F6380100005ADC74D34D8E000025170760D5AA55A6F627DCC6E9A79F2E6F7FC64ED470ECE17015996E4DF5EDF743780D02A07C7FA2B4DF7000C4449043005F14B30D072400C04605620500C9888C7B2B61AA461E38B30B92';
wwv_flow_imp.g_varchar2_table(96) := '69CFB90500144EE5865BBE7CB9291291C907D99F4393C8BBCE481D8E328C241C5E67EC3535F1380FC13955A952453A25F113AF31777401B817C3C9986DAD5AB5921E95B808A7F28A8CE95301403222EFDDBB572E04DAEF6CB604B801001C54B22E010004';
wwv_flow_imp.g_varchar2_table(97) := '6099691C1834FAA4C44AD4702AE240B14E70026192FD63E78C3293EF276F60B206E8A1CC34DBD031609D810E5421B6D01400A4221605294819867C96ADCD0D00A0AC17E21491701C54330D8519F27F22F61FC51956857FFFFBDFE2EDB7DF36D365A0CFC0';
wwv_flow_imp.g_varchar2_table(98) := '05E03D8942103F85446ECCFC1E65A6D9222868FF0948C2B70291C9425300908A5873E6CC91DA5B024AB2B50100DC5A00A15D25E0CA952BC5ADB7DE2AEBFB99B9A51987CD8C892B1107B063C70E191A4B6A6EB8B5746978EEC1B124F2A7204D1D0A4D4CA5';
wwv_flow_imp.g_varchar2_table(99) := '7038A91A004060D0238F3C923206418900A9A819F37B05004226BE400988B2C92E00C0F6530A1B175D330050B1624581790B96B966CD9A71570D910270B66255B0B8FC9E3CDEAE5DBBA4752738F478F701BA66444F0500BFFBF39F2D84D8E8F68AF90100';
wwv_flow_imp.g_varchar2_table(100) := '46724DB7E7EE467F6896F1BE43134FA49BDDD053AB00409831A6C74B2FBD34616E3F1289DE76DB6D69070098ED283C438B474F050036766E3A00008B8D3D186F3AE43FCC3EDC5E4E438F61D10990E1A6C609863EDD2A6C42D419413BA4D776D2AC0200D9';
wwv_flow_imp.g_varchar2_table(101) := '763089E1239FC8C30D00800378EFBDF79C4CCDF777499E3A7CF870E9BD174F0C0000F87638005CA75335E8837725620396000B4DE9005211CB2D0E80C34F8927B4B5F8B473B322C38E1933462761E4F7DF7F4F4CB8A5C843FAC4BE4CA92B6465D866146C';
wwv_flow_imp.g_varchar2_table(102) := '643986657723D331FD4F993245606A72D2EC00006CF0E5975F9E100028C2010760D6AFC0C9FCDD7C17531D7A00381C2C1DB1CD2A00D01FA0426420406DC11F400140AA857DF1C517A51CEA4409C84165A1D1EEE20CC2AD4A4316DEBD7BB73E71E2C4C3E3';
wwv_flow_imp.g_varchar2_table(103) := 'C68DCBF9FEFBEF4B9A1507780E93CFF5D75F2F35CA68978D77518811C8F4D4534FE9BB76EDD2CC0697C4A345580100A0C3A2806501C5623A356E6C0000AD7DBC1BDB2A00F0ED444BB668D1423A43B166269B02805484226103CA2B6AC0D96D2C3837156C';
wwv_flow_imp.g_varchar2_table(104) := '1F35E00DB9CF5086EDDFBF5F877D1B33668C6646EBCB3CE813ADBA519B2FB64F6E7F4C6868C89D8433871500107348E68A7B718021BFB6B6840100B0F86E7000C67E40B49C3D7BB6E4044D360500A908C5ED098B8946DA6C94566C9F2C383EF0B0B489D8';
wwv_flow_imp.g_varchar2_table(105) := '336E6D1C8E700335E3CB4E9F00138E32F172C4A35F183264880C12C94400604DF87EBC0BCD581552ADB39FBFF70A00880C9C356B56D602402521C42E2F169218739C4DEC9677320E2B0090C8F64BBC0159610807357360E9130518004092C8D806001027';
wwv_flow_imp.g_varchar2_table(106) := '8E3EC04C7F89E816560E00BF02BE9FB55100F03B47A800C0230040DB4CE51A5285D9696600006D2F8A3C6E6CB31C801F0040965B94804E2AF74033B79580D47244A7C29F4E741C76D6D3E93BEC07CA7EA303085804A8AC699AE735F12C653CB54B5C5DD7';
wwv_flow_imp.g_varchar2_table(107) := '3DE300B21900D0594C9B36CD49DE39B9A46E03001CCEFFFEF73F69FAB2CB99D9DD6B4EDF735B043094BFE44CC46A6528994DCC5301800922896C05002C0BF8E1138D67D1BEFC27B2BA0D00460E00DC9357AC5861661943F30C3E2098555102C64B1F6ED5';
wwv_flow_imp.g_varchar2_table(108) := '0A8077E679E79D27838130095B48D9965100504E08E14981BF6C05808B2EBA48EA10705871DADC0600E6835B31D695747304A29E02E9CDF0B08CA7C0B50A0070141C7CAC4C952B57B6B254E5354DB35695C54AEF45CFFA2502780600F89C63B7CD361D00';
wwv_flow_imp.g_varchar2_table(109) := 'AEBF84A5527CD369B30A00F8FF2323E3D882A34B3C97D974F504E4B0629EC5769FC815D8AA272089560906B2C8A9650E00B041758FD4C10000E1964ECC8098AC925901C2A80404004834816CE9B45905006E32585A1CA71239B6B02E7856A65B5D4722F7';
wwv_flow_imp.g_varchar2_table(110) := '70AF4EC4AAC301007EFC78190C44D11BA7EB6AE67D5F06290200D4F455CD4CCACA33E4AF47D6C4F9C48ED349BA5A01DC0400ECF6582D70DF358BD36404C29781431EAF6DDEBC59A66D9F3F7FBE2353A795BDE0E459CE1B2C3F3E21986813E503C0890BF3';
wwv_flow_imp.g_varchar2_table(111) := 'EED4A9534DE54EB0190DB85DD3B46A4EBEC7ECBB7E02C05B428866662766F63936ECBBEFBE2B956176ECCE0A008474D8193870A078E38D374C6D6AD6061319DE8C37DE7863C2A5E2B0C0FEA683229064A08019377BB29A86244085F3B2E2158A591111C0';
wwv_flow_imp.g_varchar2_table(112) := '424290B7354D6B6EF60C38792EED01808F2749038B07DB69F6063388A60040C8F25CCB962D93D97D490E6AA6C10190EB0FE04D540D082727623548A54D76A03037587E7C1790EF93355C9C497462B6C15560AD81B61652824DD5342D71A655B3839B78CE';
wwv_flow_imp.g_varchar2_table(113) := '4F00784008916F624E961F0100F0BD47F1942D0040ED3994806EE80020385A7B0EABD9DB1AE0C41409E780F810DB8C9A8EC469A02FA01418855EC3D860FF710307D060EF9335EA26E21066B6E1A54A6421B7BF85E220190900B0FF8801AEB76C030034EF';
wwv_flow_imp.g_varchar2_table(114) := '00001BCB2D00B09A16DC5844323313F494A851F29B449A28D6ECE8685CDF2C311D72F809D0A1B009197F1399EA7007C7B109D3AB993C00C630646A7AEAA9A7AC9609BF49D3B4A95E7F3BFDFBC901A000B4E7AF9B8212D90600679D7596CCB58F6C6921BC';
wwv_flow_imp.g_varchar2_table(115) := '342915E19EC885802860F6A6C6C9059B3973496436E3E0C03693C6DD6CBF7E6C7C630CE68D150851E6CC33CF94FF1DAB80272538FA0C9E79E595572C4D0F60A12E80C5CA40D5344DB31FE26A61860A008A22F7D2C90C48820936D5B9E79E6B3B0D58EC1E';
wwv_flow_imp.g_varchar2_table(116) := '21F3115996D1ECA3C137D338280D1A34906200E9C1E245531A0040A2CD307100868B2EF114D0125372B26850000CE59F55D7664CA504910134669B5F26405F390006D375DD134B40B671001CBA09132688F3CF3FDF35004066476977EDB5D74AD39DD9C6';
wwv_flow_imp.g_varchar2_table(117) := 'C6A69E2020106F932302F07B8A6B8609008CEF23690B1CCC39E79C93B07007A5CDD0632C59B244163731A367424CBBF0C20B65BEC67FFEF39F56E47FDF2C004100C03342884E663797D9E7883A0369B3C50C48396E0300EC66028E475B8278C88A4BA215';
wwv_flow_imp.g_varchar2_table(118) := 'B30DC5D63FFEF10FB9D1D9F06C7C7E0C25209586F007C025D88DCA40D19E87441ADA8D368425274B0FB73FCACC440D5024B0090E1145A9D9F1E026F8EE64FA910463FAA6000C02003C5104E2064CF559A2ADACE6A04F4733A0570040D252F215A2E82271';
wwv_flow_imp.g_varchar2_table(119) := 'A9999B8E4D84DD1C11007917851A7FE7E070F8FBF6EDAB7FFAE9A7AE899AC4D5E3520B37B161C38608BA0B21448E59C0E239AAF510F04388772ADB3C4567B8C1E132CDD283C34F00104A4512825A6CBE29008300004F1481DC2CB8B3C2CA993563198BA2';
wwv_flow_imp.g_varchar2_table(120) := '00E0FF6F4F36F8CE9D3B25BB0B989ABDED90A761FF39586456468F80A61C3325AEC06EDCFCC58B17D7EBD6ADAB1154435662148ACB962D8BFCF7BFFF3DBA65CB965C21043F291BF344CC215763AD5AB592D6EBE3FBC96D880883EC6F1600A0012645BC0A';
wwv_flow_imp.g_varchar2_table(121) := '13D54D4C3251DF1480BE0380977A009C805828B4D8569A02803F520B871DE47958633802AB0D9104C51A8787E4A02E69FEF5060D1A44468E1C9953AF5E3DCD103148CEB268D1A2239D3B773EBA67CF1EEA7A27E534344DD39B356BA6A1D0C3912959B14E';
wwv_flow_imp.g_varchar2_table(122) := 'E68F6994A84092CE5AF90E440A1C7FF08F48546E3C0CEC7F5000E08943100080BDF99D77DEB1B4671500FC995C54C1C51F9E1C884E5296595A88040FE7E4E47068238F3EFA684E9D3A75B4589D070773F6ECD97ACF9E3DB5EFBEFBEE4FBD18DC49D9B265';
wwv_flow_imp.g_varchar2_table(123) := '0BF3F2F22273E6CC299ECA2107CFC837DF7C53C698C4EB33D9771929E649038E5ECA42FC3FDDE66B9A36C80DBA99EDC335D9CCEC80BAAE7BA207C8160040DE261F3F3A0F58582F82C63009E2EE8A2E20C8C2ABC58A158B60F1E0E6AF5DBB765C671AC48B';
wwv_flow_imp.g_varchar2_table(124) := '79F3E649F0477C311A74E196472701BDAEBBEE3A1D11A57AF5EA49F73C5CCFFCF9F3C904AD5951FA19E3E2160D07850310A280C5F569AE699AAF95547D0700AFC4806C0100B2D4600120CD74221F7CB3609CE8396ED5F5EBD74BFB3595708368C58A15D3';
wwv_flow_imp.g_varchar2_table(125) := 'EBD7AF2F6FFEBCBC3CC9F6C76B00005A7AC43FE6CD81E3FFD0F213A8049DAA56AD2A709E827B8877200DD99E3F172E5CA80F1C38505FB76E5D8E1DB3E589279E1879FAE9A773A89A64A108089FE65B0460341D8302004C8198045D6BD90200D8AB29B76D';
wwv_flow_imp.g_varchar2_table(126) := '21B79C2D1A7313E2C28A42D0CFC601D5342D828BF3E0C183B5C68D1BFF89ED8F9E0F871E27239C7450BAA17F000090BDC99A441973FA4C662E350060E9D2A511BE77C3860D146CB175361E7EF8619DFA82A79E7A6AD279C7A1A9AFDAFF639C929F8B6B8C';
wwv_flow_imp.g_varchar2_table(127) := 'A5EBBAEBD6806C0100D87EE4530B9165B696D8E0020863A50213B7A1592DB8AD018B5C70B9F99B376FAEDF7FFFFD5AC3860DB554F23ACA3A1C75083AC2446851E926BF09B0235869F0E0C13AA1D1A99489F1BE0F761F5761647F2B5E7F517DF9AAFD0F14';
wwv_flow_imp.g_varchar2_table(128) := '00BC1003D0D882DE2801AD6CD4745302FA0500C606C12D187FFF575F7DD5F3905E0E7F93264DF4FCFC7C79F813A51BB30B30F1DE23AE1F9327FE0FEC213B264B380C2A26A38BC04469A3F9EAFC13B808500400AE2A03715C21473E9A6B2BE9C1140024DE';
wwv_flow_imp.g_varchar2_table(129) := 'AE86371F1C00013D7BF6ECB1B1B7CDBDC2CDDDA041031D8FC2A64D9BCA9BDFA202CDDC4045751FE535AF6962EEDCB932041887223B323FFDA068C48392B9DBE4CC7C57FE05CE01B8CD05C00AB241FBF5EB27D335996D0A0092530A10C08D17AF365287D9';
wwv_flow_imp.g_varchar2_table(130) := 'B921CDAC0561B884DB7290BCBEF9095022951CFB05879D2FBFFCD2F677C1EE134F80DB2FCA461BAED9BEFAFEC7AE852D4587990535F38CDBBA004236D9A8387A986D0A00CC518A9C8B78CF51F6CB0B10E0E6C4CBAF63C78EE62664F129800C761F9106F3';
wwv_flow_imp.g_varchar2_table(131) := '1EB51E9D14953586AF5DBB76E48D37DEC8B150F43376E681DDFE920BB24847D71F7733421000400943F209B32DDD000073163EF636594DB36489FB1CC156E40C2007A31D2FC16483C3010000C413B8D9E00C71E6F9E69B6F64B018FB0330800BB0E2DD17';
wwv_flow_imp.g_varchar2_table(132) := '6F4EA54B973EDAB66DDBA38F3DF658C90A152AD8394B81C9FEA110018AC400D72C02990E00789561D7C6ECE5B5193076C31B8A55222F6FBAE9A6C8FAF5EBD9F076367DDCF38D169D580ED292C156339E5D1D00B23CDE8C1C721CA728CB8DA20F0727376E';
wwv_flow_imp.g_varchar2_table(133) := '7D3EA04C9932FAE5975F1E1931628456A54A959C54D68A04A01688E63F7A2EAE2DA013D4D675DD15BF804C060064CB8B2FBE58FAE8A3694EE6C7EE642D52BDFBC30F3FE8AD5AB53ABC72E5CAE2428862A99E37FB7BBE07361A17642A0A996D86A232FA79';
wwv_flow_imp.g_varchar2_table(134) := '6E7BF409C485D02FDE8C44899A0D6E4A3636A00410B76EDD5A7A0B9E71C61966A71AFB9CEF6EBFF1261A0A0028E2041C270B81D54307908922000040DC3DA6A66469ABEDEE46B3EF718856AF5E5DD8BF7FFFA3AB56ADCA3D7AF468AEAEEBAEED233801F2';
wwv_flow_imp.g_varchar2_table(135) := '0CE2C587375F2A2E60E9D2A552F14B336E618284B66CD9224846E266632E14644551C998D5AA554B39BF04E307AAF80B1D07E09628000780A20A16D96C4B171D0000D0B2654B69B6B2EAEC629616669F235866F9F2E5C8BE473EF8E083DCC3870F97702B';
wwv_flow_imp.g_varchar2_table(136) := 'ED37DF098743F65DB4EBF8EF276B5F7FFDB5D41D9071C8ED031F33AE6E1CFEDEBD7B6BD5AB5797873F15408595F537E6E51A729BDD3CC99E732A0A64B215204C00C01A161414E8AB57AF3EBA76ED5AED9D77DE29B668D122C1CD6BC5092BD15E806DC7E1';
wwv_flow_imp.g_varchar2_table(137) := '89705A7402C94C6B462C00E63C7C41DC6E1CF0DCDC5CBD54A952856DDAB4D1060C18900B40D93CF84C2F50AD7F2C7D420500459C80ED70616E2158646E842297CE94FB417100294914F7010E3A870F851B493F90DDDF7AEB2DC79A7563300E3D71F52417';
wwv_flow_imp.g_varchar2_table(138) := '411C48160C84828F60202F000031E4EAABAFD66BD6AC5978D55557E59C7DF6D932FB904D0008C4DF3FD90A870E009C8200B65EC23129F164A629003043A5C4CF18373E7E02E4BFA3BC98010ECE7AFEFD6D827B884A2431476C761D4301182F1CD8C9D845';
wwv_flow_imp.g_varchar2_table(139) := 'B7BEE43C304BE22968E40D74609D08DCE4178F266105004C83149DB35C4908FB34E624368D99964E0040124B367BD03A80447425206BF8F0E1FAFEFDFB3552B45929A0916CAD90B759532AF70208D18D1C008F3FFEB874033753AD37D59EE0F013724D24';
wwv_flow_imp.g_varchar2_table(140) := '21A65682A162C74CD5479CDF8746E9177A11C098609197A06510400C60B3982DDF942E00C0C624D92629BBC30800C6AD8F1E06331C1CD8A2458BF45F7EF9C5F125C31AD5A85143AE2BC5468D221B98F7485A3276EC587DDFBE7D84F0DA389BBFB3F30627';
wwv_flow_imp.g_varchar2_table(141) := 'C3A1C70C8947221C870B0E57A1BCF90D42395E1C5B14B7F092AEEB967402990A0098FE48663979F264AB69A62C50DB9D478B4289F51E3D7A443EFEF8E39C828202CDA9E720EC78F9F2E5E54DDFBC7973E989082DD0F738B540D037C95548E001C070EB03';
wwv_flow_imp.g_varchar2_table(142) := '3236FCFA6309180A5B7FDAE90062276CC53AC066C0DD939BC14C4B070E80C34F8A2972D37308D2A1711B6315E0070D3D55874812EAF4B072300D85207D3BCD59087BCF2D8FB5810AD3700236E3F963972554DAFE447B26F41C408C48401621C288133694';
wwv_flow_imp.g_varchar2_table(143) := '80286D289C6966B3A50B00C096E2DDE6551A30AF40054B01723A4E5AA4D89E366D9A5EBC78710D30C05DD78BC0A264DFC27A23E31B4E430405916F101080FDB7A9DD8F1E929C7E68FB7DA9EDE774DDD20600A28020A948C0CD43B4174933719A4915E39D';
wwv_flow_imp.g_varchar2_table(144) := '0E0080CC4F014B4C6238A3A45B33B4F53B76EC90493770A5FDFCF3CF65120E009B86138FD3E09C7874E140433F3807C086C3CFA1378A99E25E6D70552E1CFED0B3FC69A3044CB6C98B14840041DC32632C34492DE10466CD9A95F4BC0000E4927BF4D147';
wwv_flow_imp.g_varchar2_table(145) := '13CAD668B3A922836211B63355A34F9C58183F1ECB4E092EECE68829A95858E450B4FF1CFE0B2EB820B0188054DF6CE6F7D17EFBD0004B016B85328F2CC480821B8E44D173417CA2B20F5E85FC1D96BF71E3C6C76E7A97622AD2EAD68FA64FDA7100D193';
wwv_flow_imp.g_varchar2_table(146) := '4F05045473E110CE9C39336E74199BCDB0F5925432510E77CC4BF8163CFBECB3A659569C5760D9E301005169D8CCA74D9B16F7D6635EDC5A6496C5FD977453F5EBD73773C6D2F2196E7FF20C10AB6F6402E260C2C991E1C9CCCD0CCD78873802686E8816';
wwv_flow_imp.g_varchar2_table(147) := 'FCD9A85123C9E6BBA0D48BA56FDA1E7CE343D21A0062F403713902B2BD101B806810BB91D834FCD4AB574F06DA240AE9340A457063A5BA318C1BAC6EDDBAF2E68E072AB0BD78CD25EA8F4D0BAB7FD96597893A75EA1CBB15CD1C84B44480A2345DD14E36';
wwv_flow_imp.g_varchar2_table(148) := '7C2B7EFEA4254F9521C8E02C30DB19E1C4C67A1B20EFC081271E494939F5ACDF39FCBD58DB8C00801820C07700456133E38013179EA819B72D376EA203C63380003F660E21CF73F0E933DEADC3E684F54FD49FB169915BBDCC8DE7C58672B34FE884F865';
wwv_flow_imp.g_varchar2_table(149) := '96E60085875612947AD8F47DADDCE3263DE3EA48BC1E20A8FEA31C89241804350F356E5A53401E7A21C4B24CB8EDB30A00E2E80A0081A64208DC8C1520A4F5B9F46CF2C68187EBC8A89B3E11C5324A0430BB2D8AB8031E374081BF030CC68FD9AED473E9';
wwv_flow_imp.g_varchar2_table(150) := '47010E79F40F5F90B1377CAAE5C94A004845145DD7CB153D5336EA59E3FF52BDAE7E1F0E0AFC211D90A669DF86635AE19A85028070AD879A8DA280AF145000E02BB9D5608A02E1A280028070AD879A8DA280AF145000E02BB9D5608A02E1A280028070AD';
wwv_flow_imp.g_varchar2_table(151) := '879A8DA280AF145000E02BB9D5608A02E1A280028070AD879A8DA280AF145000E02BB9D5608A02E1A280028070AD879A8DA280AF145000E02BB9D5608A02E1A280028070AD879A8DA280AF145000E02BB9D5608A02E1A280028070AD879A8DA280AF1450';
wwv_flow_imp.g_varchar2_table(152) := '00E02BB9D5608A02E1A280028070AD879A8DA280AF145000E02BB9D5608A02E1A280028070AD879A8DA280AF145000E02BB9D5608A02E1A280028070AD879A8DA280AF145000E02BB9D5608A02E1A280028070AD879A8DA280AF145000E02BB9D5608A02';
wwv_flow_imp.g_varchar2_table(153) := 'E1A280028070AD879A8DA280AF145000E02BB9D5608A02E1A280028070AD879A8DA280AF14F87FD2B4794A499E3D4D0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26028943406407664555)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEC9D07981455BAF74F0F9905044554822041242B08088292042429A80888095131E25E77EFDDF55BF7EEEE7D';
wwv_flow_imp.g_varchar2_table(2) := '36DCE5AEABAB22496431811244918C826441B2880401490A4892A4CC747FCFEF488D354DF574AAEE4AEF799E7E0666AA4F9DF37F4FD5F99F3786229148444913040401414010100404814021101202102879CB640501414010100404018D801000590882';
wwv_flow_imp.g_varchar2_table(3) := '8020200808028240001110021040A1CB940501414010100404012100B2060401414010100404810022200420804297290B02828020200808024200640D080282802020080802014440084000852E531604040141401010048400C81A1004040141401010';
wwv_flow_imp.g_varchar2_table(4) := '040288801080000A5DA62C08080282802020080801903520080802828020200804100121000114BA4C59101004040141401070940098CB10844221DBA461F46B679FB60D4E3A1204B28880979F05C62ECF7016178BCF6FE5D5672193CF8110009F2F7A99';
wwv_flow_imp.g_varchar2_table(5) := '5EB011F0EA4B0FA965F2C517EC5511CCD97BF559C8E4B81D2500C63264823FFEF8A3FAFEFBEFD5A953A7F4839F939393D02AE55A3EC58A155365CA945165CB9695534342C8C9454142201C0EEB678B678C678D93B59B4ED78C8F67BE448912AA5CB972AA';
wwv_flow_imp.g_varchar2_table(6) := '64C99241128FCC354B0844EF35DCD64DCF81793F632F634FCBE4F8B24600E2B198BD7BF7AA050B16A8CF3FFF5CFDF0C30FFA0550A448914297057D9E3D7B567F2EBEF862D5BA756BD5A64D9B98E421DE18B2B406E5368240461028ECC47CFAF469FD6C2D';
wwv_flow_imp.g_varchar2_table(7) := '5AB448EDD9B3473F23A54A95CAC83892ED342F2F4F3FF3458B1655B56BD75637DE78A3AA53A74EB2DD9C77BD3CEF6943E8CA0ED2912B4473FFFEFDEAA38F3E529B366DD2643891BD261B4018E42437375755AA5449EF67D75D779D3EDC5AB5747030FACB';
wwv_flow_imp.g_varchar2_table(8) := '1A01280C4084B274E952F5F2CB2FABD9B3676BC6C30B0A025018FB0100C0A201D87DF7DDA71E7AE82155BE7CF96CC84BEE210878068123478EA877DE7947BDF6DA6B6AF3E6CD7AB3E593C9D345A2E0F0FC43E239FD376DDA543DFAE8A3AA7BF7EE897E5D';
wwv_flow_imp.g_varchar2_table(9) := 'AE1304124680B5B664C912F5D24B2FA9F9F3E7E76B9BE3ED3509DF208D0BCDFBD9A5975EAAEEBFFF7EF5C0030F64743FCB080128EC2402DB3F78F0A0FEF06FD8176AC9850B17AA7FFFFBDF6AE3C68D2941084BEAD3A78FBAFBEEBBD515575CA18C970A6A';
wwv_flow_imp.g_varchar2_table(10) := '14C0449592291695D280E54B82800D08589D0250F57FFBEDB7EAD8B1639A44172F5E5CEDDAB54B1380499326E9DFBBB555AD5A550D1A3448DD72CB2DFA99E5846690FCC2C60C0EBC4F2035175D74917EE6639D9CCCFD889F813B56422A72406BC4691E72';
wwv_flow_imp.g_varchar2_table(11) := '8BEC0BDBC459173C07C78F1F571F7FFCB126C25F7CF1853B266F310AE6D2B76F5F3570E04055A3460D3D3F3E3C1356FB592AF871DBAC138093274F6AE685100E1C38A04A972EAD59D8575F7DA5D6AF5FAFBEFBEEBB948552B76E5DD5A4491375E185172A';
wwv_flow_imp.g_varchar2_table(12) := 'EE8316A171E3C6FA34C1DF8400A40CAD7CD1A5085811009EA5993367AAD5AB57EB9335CF182F3EC835A77F7EE7D68659022D00CFEB2F7EF10B3DD6440800D761E640FB8719B0478F1EAA42850A71A799EA8B336EC772415208A4220736FF0F3EF8402D5F';
wwv_flow_imp.g_varchar2_table(13) := 'BE5CBFEF59E76CF4568DDF43085923DBB66D53EBD6ADD3C4C1CDAD5EBD7A7AFF624D43EA2105C67E76E5955716187A2AF8659400D03983E224CE07F645DBBE7DBB1A33668C7AF7DD7715767F7E8F7060FA67CE9C49E8618F25345488BC40506BC20EF979';
wwv_flow_imp.g_varchar2_table(14) := 'FDF5D7AB471E794475EDDA556B1B180B2F14C0343B1ABA4115EAE6C52863732702D10F3EEB7BDEBC795AC589598D171ECF18EB9B7FF35C18A4C18D33327C137896F9772263354EFFBC4378FED1043EF6D863FA30C0BC8DD393315F7E673CFFA9BE38DD88';
wwv_flow_imp.g_varchar2_table(15) := '9D97C764C8D9BC67C4DAC8591710BE152B56E8750ED9354C48FC2DD6BB9CDFF37CB04E781658176E6EEC577CA2F7334C64DDBA752BA0E14A751D67440300A8007DFCF8F1C8CE9D3B239CEA61F3458A14C9D9B061839A3871A276464208568D0927F2E09B';
wwv_flow_imp.g_varchar2_table(16) := '1FE858D7A33EB9FDF6DBD54D37DDA43503274E9CD080A26AAC5EBD7A4CC6E8E68521631304A211803C1F3E7C58136C5E886FBDF59656FBC77ABE0C82EE16248D977632CF7DACB1B76CD952F5EBD74F356FDE5CBF40393D417C0C35319A01DE0B980AA4B9';
wwv_flow_imp.g_varchar2_table(17) := '0701648F3978C78E1DF92662B39F0A7F871872D2E7BAC58B17EBBD843D25D596EC5E93EA7D92F95E6163AA56AD9ABAEDB6DBF2B5DAAC61F048B5D94200CC0FADF120F3B07DFEF9E7E1891327E67DF6D967E1502854A454A952458E1C3912DABA75ABB651';
wwv_flow_imp.g_varchar2_table(18) := 'C652ED252B94C2AEC707A066CD9A7AC387F5F3328008DC7CF3CDFAA440C891D1526551A9822FDF1304EC4000B2FDF5D75FAB193366E47B37630660D30B220120228828824B2EB9443FF3BC670C0D23DA103403BC442108F19A1D9ED6F1EEE1F7BF278A21';
wwv_flow_imp.g_varchar2_table(19) := 'EBF8CB2FBFD4BE2AA8F50D8D8E110D463FFC1B52C0891F13007B493AAAFC64F79A6CC8AAB031A1E1AA52A58A6AD0A081BAE1861BB466BB7EFDFA290FCB160260DE4011129F23478E4466CD9A95F7AF7FFD2B77E5CA9511A514C69922A1504807F8DBC1F4';
wwv_flow_imp.g_varchar2_table(20) := '139D7534A038527042404D78D555576915A9A16E145340A2A8CA756E4100B2BD76ED5AF5CF7FFE539BD6787106BD19790E0C52CFE662B46BAEB9463DF1C413EACE3BEFD4CF3D7F33DE5B5CC3EFB0171BA74F3918A4BF9A0C0C0D3266968711F1C5E10CDF';
wwv_flow_imp.g_varchar2_table(21) := 'B0175E78417DF2C927F93735E7ACB0DA37B2B997A48F843D3DB06771887DEAA9A754BB76ED52EED4560260A8FDBFFEFAEBC8FAF5EBC3F3E6CD0B7FF8E1879143870E91E7978D9FC0FEFC9CBF76AAFDA211288C45F160376AD4487B1AE323009BE2B460F6';
wwv_flow_imp.g_varchar2_table(22) := '094894B5A68CBC7C5110B0090108C0679F7DA6FEF297BFA80F3FFC305FB396C9E7CBA6A1DBDA4DA2A7394C00BD7BF756EDDBB7D78E8298223951429C7887A156E5608099C0F05D8A3550794F1444261E1E98A8F0BE3F74E89036C5F22E367CB77054C56F';
wwv_flow_imp.g_varchar2_table(23) := 'E5BDF7DED3B92A926989CA3E993EDD746DF4FC589768009E7DF659FDD37C084FE6106B2B0180DD6DDCB831FCEEBBEFE6CD9D3B376FC78E1DA1C3870F170987C36CFE6CFCF625FC4F533AD80609A7E03440A805AA14C3966265D248F376F2754120630840';
wwv_flow_imp.g_varchar2_table(24) := '00D6AC59A3FEF18F7FA8C99327BBDACB3F63209CCBE896C8699097276A544C05FCDB7012E404CA3B0C0F6B42B070B432471258BD17E26D78999CAF1BFB8EC6C3AC3D815C4D9D3A55BDFDF6DB3A1A858D0A953624C070ECC35F6CDFBE7D31FDC3DC38E76C';
wwv_flow_imp.g_varchar2_table(25) := '8C299A00B05775E9D245FDD77FFD97C2E7C54C00F877A224C0560200835EB4685178D8B0616767CF9E8DCE8D133FAAFF1CB730B4E8715C70C1056AF0E0C1FA83DD305EF6C16C085BEE21082483001B18614DA84E79B9BA39CC2F997965E2DA44DE431C0C';
wwv_flow_imp.g_varchar2_table(26) := '300F9084054D21F8723A35CC0446CA620E1189A62CCFC45CDCDC27440AC754230C95533EE177C4DF1305460878BC9688ACE2F5E1D7BFE3544FC6CC871F7E583BB8A79AD5332D0260651B5BBE7C79F88F7FFC6378D6AC59D8FD39F163F7D727FF44D879A6';
wwv_flow_imp.g_varchar2_table(27) := '0566B5A87006C28E42DA453E975D76590106252C3FD35291FE934520FA64856AF57FFFF77FD5EBAFBF2E3E0031C04CD424C2CB14CD20AA55BCAE39B962266053333634E2B1311FF222B66A7E7F67C49B1F8E7978E9A3EE073F7042ED4FF4D7A79F7EAAE3';
wwv_flow_imp.g_varchar2_table(28) := 'F6E3352100B111427345C23BF62BF6AFABAFBE5A9BB239D0267AFAD79A82481ABBB2150158B972A5FAEB5FFF1A993A75AA41005CA3F68F05272A281C03B109C2A86056E66224E20414EF5195BF671301AB972FA7ABBFFDED6F42006C1004A77A362C2284';
wwv_flow_imp.g_varchar2_table(29) := '38B982379B1851158411633A20B498FC22BC848500144400BC483AF5CA2BAFE8443D84EC118D45E3DF60E8F6187C1B9651C6BB405BCDFA640DDE71C71D3A0B2E7E2BC968A5D22200C60C1126EA9E6FBEF946A7F4E514C2CF34B845C6C1B33A0D00DE5D77';
wwv_flow_imp.g_varchar2_table(30) := 'DDA51D84B00366BA1253C6272937F035026C4A3C779CAC20DEA4D22607402299F37C0D4C8A9333BF13AC4E51E6F7196A574C049CBE3840A02120720007424E61E6E6E703046BF0E8D1A33A0705FF467B02169CFE5F7DF555EDD467B4443530298A2F305F';
wwv_flow_imp.g_varchar2_table(31) := '8BD68C8039516DBFFAD5AFB4F36AD609001B3F6A9D65CB96E9F4A3541DC391C3CD0440AB3FA2120E71EA07409C2A3009A002AC5CB972FEC28AA7F60ACC0A9489BA02015EBCAB56ADD2C54D78EE488842F21F7388952B06EA914124B3419144AC458B16EA';
wwv_flow_imp.g_varchar2_table(32) := 'F2CB2F372208221C203A74E810BAF6DA6B7D65422CECBD875684987D2AB912976F6462250F05A4947DC0AA2583B547968F63C3C41CC0C1D53102C08B67ECD8B15ADD83C013CDDFED186285DC18160F83EFD0A183AE4A8639409A20E0460408951A376E9C';
wwv_flow_imp.g_varchar2_table(33) := '7AE38D37745A6D5EC6E200981D49F1D2C513FB5C144104DCC9DD8E56E0CE3BEF0C99138C656744CEDC0567BEF1E3C7EB3548063FDE9FA8A6598B4455C87ACCBC5C5887F7DC738F1A3A74A8D65C67540360C5064942326CD8303565CA14AD9234AB7CDCAE';
wwv_flow_imp.g_varchar2_table(34) := '05B0D204F03B2202060C18A0932D606341B5678E10106D40E617B6DCA1700478E192FC67E4C891051CFFC4792A732BA7106C236418EDD1A347882C83641BC457209D34AD999B45F23DF3BEC3710FD289BA1FE283FD994C7CA4E39D356B968E948875DAF7';
wwv_flow_imp.g_varchar2_table(35) := 'C23E903C2AEEF806FE2AF7DE7BAF4E6EE5080120A693186452389A1781575E4456E34495450A61D4799D3B77D63197E6DCE14200DCB1F8833C8A9D3B77EAD0BFD1A34717F0AAF6CA73E745D915862DA75F4208091DC47C4815D2860D1B5A4ED38DEF8FC2';
wwv_flow_imp.g_varchar2_table(36) := '7C15F81B8EA61CF250ED1BA569292D8DA73FA9A86365A094F598D995EE0801304ECED81BC942C62984240FB0433FB573AC5E7BFC366BD62CBF02931B1F603FE12E73898F002FDDE1C3876BF3DBC18307E37F41AEC80A023805727078FCF1C7B54331C400';
wwv_flow_imp.g_varchar2_table(37) := 'C74CDE1946595A63534C26642BD3833708003F0D332EE3339C1C49CF0BE124940F15BF61EF37AE95537EA62564DD7F56098031041600DEC7A8217102A11009CC90100FAF362BC714D4FE38061266419820FFAE54A99257A728E3F61102100042AD200089';
wwv_flow_imp.g_varchar2_table(38) := '2456F1D1D45D3515AB132E07079209A13DC4A788F0373652CC896816519FBBB5F16E279DFB8E1D3B229874CB9429133A79F264888D1F753FEB2E96AA9FDF0B11C8AE641D21006CFEB367CF56D3A74FD7319F7880A20EF27A08522C73005EBFA8F388FF85';
wwv_flow_imp.g_varchar2_table(39) := 'D59B7384FB39CC27BB4B59EE960C02420092412B73D75ABD3338F5B3D11345C4DF7188C384D8B3674F5D89B062C58AF90372529B6875EFC3870F4766CC98117EFFFDF7C3BB77EF0E952A552A87460557BCFB994BAC26EAFECCADB3583D3B420078F98C18';
wwv_flow_imp.g_varchar2_table(40) := '31427FD229C7987DB852BF230E3DF7DF7FBF8E0E3058BC9B5478A9CF4CBEE945048400784B6A9082FEFDFBEB2AA46412440BE0A6F707E65CC6B36EDDBAC8A851A3F2264C9810A67CFBB994EEBA8AAB34F721E0080120DEF85FFFFA970E4332DBFDFD14DF';
wwv_flow_imp.g_varchar2_table(41) := '193D17CC01A408A570102918F9B75173DC58164EB279F72D4D19512611100290497453EB3BDEFB0F2D226601D208376DDA5455AD5A559B06B2FDFEB0D25AEEDEBD5B97955EB2644964EEDCB9E1F5EBD7477273738D4AAE59A9E29A1AEAC1FE96230480C5';
wwv_flow_imp.g_varchar2_table(42) := 'C2E97FD4A851DA1720280D12802AAF55AB566AD0A041AA63C78E05F2810B0108CA4A707E9E42009C9741B2232046BB7CF9F2DA4990D4AD440A58551CCCB466209A0060BAA50C2FD92457AC58C1A12E1295AED7F529DD9395855FAE778C00107E0401C036';
wwv_flow_imp.g_varchar2_table(43) := 'E4F7166DDB22DC0773002A3D12809859BCDFB190F9B903012100EE9043BC51586905C811D0A74F1F75DF7DF7694D80D9A7285E7F76FF1D2FFE4D9B36E9CD9F6A926476355A3C8D86DD6391FE9247C051020009302F98E487EF8D6F441300367C927DB46E';
wwv_flow_imp.g_varchar2_table(44) := 'DD5AB569D346B56DDB5657113437710EF4866CBD3A4A2100DE919CD5FB83A42D9802787FF0C1AF2893EF8F68ED24FF27B10F79FBC9D9CF4F72BA442773634CE2D9EFDEB52604C021D9C0DA8985EDD4A99376EC216D703269181D1AB6DCD627080801F0B6';
wwv_flow_imp.g_varchar2_table(45) := '203944F0F2A6A0D0902143747451B6DF1F64F07BF9E5977528B711C5259BBDB7D69510802CCACB4A2546DA60AA3161CFAB5DBBB6B6F149DAE02C0A25A0B71202E03DC15BBD3FD01CF6EDDB578718F32E218700110346B3D3AF88BE88F367B3C78F8BE46D';
wwv_flow_imp.g_varchar2_table(46) := '38729B8BF648289FB7D695100087E5457860AD5AB53493471B40C2207C0432F1003B3C55B9BD8B101002E02261A431143489240822D3285548493B4E95C14CBC3F70F62385F4279F7C1221B3DF9A356B48E51B92A23D6908D0E1AF0A01705800DC1ED51D';
wwv_flow_imp.g_varchar2_table(47) := 'D101D409276D30363D69824026111002904974B3DB37A76EA201882E2285300789E8F0403B220338FD53BA7DF8F0E111D4FF646E3D17EA775E79F4EC2220774B15012100A92297E6F7AC546575EBD6D59101B0789C7AF0F6B5E3C14D73A8F2751F222004';
wwv_flow_imp.g_varchar2_table(48) := 'C0DB42B532079017A07FFFFE11CC89BC3F2A56AC182A59B2A46DEF100AF660EFFFD39FFE14993F7FBE016048BCFDBDBB9684003824BB58698351E75D7DF5D5DA2780D49F65CB962DA0CE1342E090C07C765B21003E13A852840346AEB8E28A30A1C5240C';
wwv_flow_imp.g_varchar2_table(49) := 'EADAB56BCEE5975F1E32FB142533EB68FF01B2FDAD5EBD1A02A03EF8E08388524AC7F70B01480655775DEB1801200700618041C80390ACC8CB952BA70B089136B87EFDFA3ACE1733818406268BA45C1F0B012100BE5C1B6CCAE162C58A45FAF6ED1B7AEA';
wwv_flow_imp.g_varchar2_table(50) := 'A9A7729A346912323B05A6326BDE3B6CFE1425C204F0D24B2F410052E94ABEE332041C21004629D23163C6A8EFBEFBCE659064773856EC9907B6418306EA965B6ED1FE00A400256DB0F9F46FA7776F76672C777303024200DC20057BC6607A874000F4A7';
wwv_flow_imp.g_varchar2_table(51) := '57AF5EA1DFFCE637A16BAFBD366D0280AD1FAFFF2FBEF842C7FCCF9B378F9CFFF60C5E7A711401470880510B80EC51660220AAA49FD702B63B427C3007DC75D75DDA24C0EF68B2F93BFACCF8E2E642007C2146AB4940007468E0D34F3F1DA2E648BA1A00';
wwv_flow_imp.g_varchar2_table(52) := 'AAF84D9932457DF8E1876AEBD6ADBA7ECBE9D3A77D0B609026E60801206E74FCF8F1FAB36DDB362561243F2FB968DF00CC010F3DF4907AE0810774B860BA0F739016B7CC3536024200FCBB3AB0F9935B64E8D0A1FA0091EE3B83D3FE73CF3DA7264C98A0';
wwv_flow_imp.g_varchar2_table(53) := '7004349AC4FC7B7F0D3942008E1F3FAE2B47E1518A5309FF26BE943093A037AB87AA458B163A5320613E5412C41C60CEFA251A81A0AF9AE4E72F042079CCBCF20DBB0900EFE761C3866902802F801000AFAC84F8E3748400B061F181082C59B2446B02E6';
wwv_flow_imp.g_varchar2_table(54) := 'CC99A38E1E3D1A7FC401BC82079A6800127D90F613326098030C93804407047061A4316521006980E7F2AFDA4D00366CD8A0CBB74300F00790E61F04B24A00AC4EAA54927AF1C517D5C48913D5912347FC836C9A33B1F287A851A3861A3870A0CEFB4D31';
wwv_flow_imp.g_varchar2_table(55) := '1084271B7F9A4007F4EB4200FC2BF84C10003CFF79479306589A7F10709C006CDCB851FDFDEF7F5793274F56A74E9D12F592696D459B0338F55F75D5550A9300DA003E5245D03F0F6336672204209B6867F75E4200B28BB797EF965502600514F9A45F78';
wwv_flow_imp.g_varchar2_table(56) := 'E1053569D22475F2E4492F639995B19313A04C99323A6D3079026EB8E186ACDC576EE22F048400F84B9EE6D90801F0AF6CED9E99E304802880F7DF7F5FCD9E3D5B6DD9B2458705927042DACF08C44A1B8CA7AF9136B862C58A524550164DC20808014818';
wwv_flow_imp.g_varchar2_table(57) := '2ACF5D2804C07322736CC08E13009C4AF6EEDDAB934CE0103877EE5CB57EFDFAFC5877C79071F98D4B952AA5AB805D7BEDB59A0490FA13126034890C70B9001D1E9E1000870590C1DB0B01C820B83EEBDA710260E079E6CC19CA4C6A6F53124E484B0C01';
wwv_flow_imp.g_varchar2_table(58) := '367D9204111D40496123EFB71080C4F00BEA554200FC2B792100FE95ADDD33738C0058E5B55FB56A95FA9FFFF91F6D1290763E02569101E403A0F807B5033A74E8A0A303C813204D10280C012100FE5D1F4200FC2B5BBB67E61A0240820934007FFEF39F';
wwv_flow_imp.g_varchar2_table(59) := '75AE69A3497AE08222B7F207285DBAB4AA56AD9A6ADCB8B1BAEDB6DB549F3E7D0A64FF922242763F36DEEF4F0880F765186B064200FC2B5BBB67E61801889E082926972D5BA6860F1FAE66CC98A13009E4E6E6DA3D5F5FF78730EFBBEF3EF5C8238FE87A';
wwv_flow_imp.g_varchar2_table(60) := 'E0254A94289031D0D79397C92585801080A4E0F2D4C542003C252E4707EB1A02909797A7D3012F5AB4483B037EF6D967DA31102260D60618B66D475173C9CDA3B523458B16D5B9BFBB76EDAA53065308047340B45F00C39704422E11A243C31002E010F0';
wwv_flow_imp.g_varchar2_table(61) := '59B8AD10802C80EC935BB88600B0B14302480644F5A969D3A6A971E3C6695220E680C4571B2400C74008C0A0418354C78E1D1526029A993C0901481C533F5E2904C08F52FD694E4200FC2B5BBB67E63801B0DA9438F52F5EBC589B033EFAE823493F9980';
wwv_flow_imp.g_varchar2_table(62) := 'D4A37D0338F9534170C080013A7BA0A10548A02BB92400080801F0AF908500F857B676CFCC95040087C06FBFFD56FB042C5DBA543B079231D0EC1320CE810597423401E0258009800A826DDAB4D119032FBDF4D2025F12E740BB1F27EFF42704C03BB24A';
wwv_flow_imp.g_varchar2_table(63) := '76A4420092452CB8D73B4E0062410F094013C08B6AECD8B16AF4E8D1522D30C9754A1D70EA079024E8F1C71F576DDBB6154D409218FAF57221007E95AC9800FC2B59FB67E63A02109DC006BF00FC01DE78E30DAD05F8E69B6F0A3806028955689CFD5079';
wwv_flow_imp.g_varchar2_table(64) := 'A3472BCD489D3A7554FFFEFD55B76EDD54EDDAB555F9F2E5CF2302A20DF0867CED1AA51000BB90745F3FA201709F4CDC3A22D711002BA0F6EDDBA7A8494D840059023FFFFC7375F6ECD9FC4BC51C50F8F2C209B056AD5A3A6D70A74E9D74C220B33940B2';
wwv_flow_imp.g_varchar2_table(65) := '06BAF5F1CCDCB88400640E5BA77B1602E0B404BC737F571300E354CACF1F7EF8416FFC9802281D7CE8D021EFA0EC8291F252A850A182AE1B40DA60FC02A40517012100FE95BD1000FFCAD6EE99B99600589D4AA912880660EAD4A9DA1CB067CF1E75FAF4';
wwv_flow_imp.g_varchar2_table(66) := '69BB31F14D7F56A6112202EEBCF34E5D4E187340A54A95CECB0920E600DF2C8198131102E05F190B01F0AF6CED9E99A708001BD3FEFDFBD5D6AD5BD5C71F7FAC264D9AA4B502E626FE003FA361850555046BD4A8A11306F5E8D143F5ECD953952D5B36FF';
wwv_flow_imp.g_varchar2_table(67) := '4B620EB0FB1173677F4200DC29173B462504C00E1483D1876B09403CF857AC58A15E79E515F5C1071FE83C01380BD28400C443EEA7BFE30848DD00D2063768D040152F5E5CA70D96D37F62F879FD2A21005E9760ECF10B01F0AF6CED9E99270880D5A9F4';
wwv_flow_imp.g_varchar2_table(68) := 'C08103BA68D0ECD9B375DA60B2078A39C07A79583949122258BF7E7D75CB2DB7687F80860D1B6AC740C91068F723E6CEFE8400B8532E768C4A08801D2806A30FCF1080E88D8913FFD1A347B53900123061C204B579F3E67CA9496440C1056CA5192147C0';
wwv_flow_imp.g_varchar2_table(69) := '65975DA6CD0177DD7597360950408826A6007FBF008400F857BE4200FC2B5BBB67E60902609E74B48A9A70403206BEF8E28BBA8A20D1028639C06EB0FCDA5FB972E5D4830F3EA8060F1EACAEB8E20A6D0E104D805FA5FDD3BC8400F857BE4200FC2B5BBB';
wwv_flow_imp.g_varchar2_table(70) := '67E6790200209803700A244F00BE014408984980F80514AE0D009FE6CD9BAB76EDDAE922427CA825804F80D1442360F7A3E76C7F42009CC53F93771702904974FDD5B7E708402CF87FFCF147B56DDB36F5F6DB6FAB51A346695260342100F1172D18A109';
wwv_flow_imp.g_varchar2_table(71) := '68DFBEBDCE1340ED0022068400C4C7CE8B570801F0A2D4121BB31080C47092AB94F22C0188554570FEFCF93A59109A009205990B0889C0CFD704F01B3396D5AB5757F7DC738FEADDBBB7BAF2CA2B7529613107F86FE50801F09F4C8D190901F0AF6CED9E';
wwv_flow_imp.g_varchar2_table(72) := '99AF0880912760D5AA556AF9F2E56ACE9C393A8530DA01B336207AD3B31B542FF517AD1DC131B05EBD7AF92601D206630E30370915F49284ADC72A04C0FB328C35032100FE95ADDD33F32C01880504B67FAA081216882660FCF8F13A4F80B4C411204490';
wwv_flow_imp.g_varchar2_table(73) := '85D1B56B57F5D8638F49DAE0C4A1F3CC9542003C23AAA4072A042069C802FB05DF1080E85329AAFF2953A6A877DE7947AD5FBF5EEDDDBB579D3A75AA80A0C537E06738ACC2268DB4C19413A69850C58A150B541114C740EFBE378400785776F1462E0420';
wwv_flow_imp.g_varchar2_table(74) := '1E42F2770301DF10002B91923698DC004408BCF7DE7B3A6D70381C2E600E30DBBF65591444C0481B4C1541B40110014880D184007877C50801F0AEECE28D5C08403C84E4EF8120004C920D7FE5CA953A3280B4C1070F1E14E92789009B7EF7EEDD757440';
wwv_flow_imp.g_varchar2_table(75) := '8B162DF2C30385002409A48B2E1702E02261D83C1421003603EAE3EE7CA701B0DA94BEFBEE3BED10387DFA749D3698979FA40D8EBDAAA34D23E403C031F0F6DB6F573805D6AD5BF73CC7401F3F23BE9C9A10005F8A554F4A08807F656BF7CC024100700C';
wwv_flow_imp.g_varchar2_table(76) := 'E4E44F9E00C204F10BD8B46953015300FF1173C04F9058F946100E58AD5A35D5A851234D04FAF4E9A37016349B03245CD0EEC73373FD0901C81CB64EF72C04C0690978E7FEBE2300F1A0273C90B4C16803D002904A585AE208503A983C010F3FFCB0760C';
wwv_flow_imp.g_varchar2_table(77) := '246CD09C3130F19EE44A27111002E024FA99BDB71080CCE2EBA7DE7D4D00ACE2D58D2A821F7DF4913607E02448D8A0D12432E0E7E51DAB8A60E3C68DB55360AB56ADD435D75CA3AB081A24C02A41939F1E18BFCC4508805F2479FE3C8400F857B676CFCC';
wwv_flow_imp.g_varchar2_table(78) := 'D704C00A2C36A813274EE82A82EFBFFFBECE13B063C78E020480FF883920F6522B5AB4A8BAF8E28B55CB962DD5A0418354A74E9DF2D3060B01B0FB11CD4C7F42003283AB1B7A1502E0062978630C812000568E819CFA172F5EAC860F1FAEFD028E1F3FEE';
wwv_flow_imp.g_varchar2_table(79) := '0D893938CA68ED0824802A829412266D30C4409A37101002E00D39A5324A2100A9A016CCEF049600101E883960C992253A6DF0279F7CA24D02524530F683104D0078D1346DDA54570F6CD3A68D2E208439C0DC246DB03B5F2C4200DC29173B462504C00E';
wwv_flow_imp.g_varchar2_table(80) := '1483D1472008402C51B239FDF0C30F6AE7CE9D6AECD8B13A75F0D1A3478321799B66C9A91F47C02E5DBAE4A70D96E8009BC0CD603742003208AEC35D0B017058001EBA7D200940B449804800A202F00758BB76ADFAE69B6F0A3806224F710EFC79555B39';
wwv_flow_imp.g_varchar2_table(81) := '076202E8DFBFBFBAF9E69B559D3A75D405175C50206D30DF166D807BDE0C4200DC230BBB472204C06E44FDDB5F2009809538491B4CCD00FC022003E409902A82892F7CD206D7AE5D5B9136F8A69B6ED20983CC5504256B60E25866E34A2100D940D9997B';
wwv_flow_imp.g_varchar2_table(82) := '08017006772FDE35F004C03895E213C086CFC63F72E4483569D22475F8F0612FCA34AB63366B4678F154A8504187083EF2C823AA75EBD6591D8BDC2C71048400248E95D7AE1402E035893937DE401300AB53292182D40C98366D9A360748DAE0C217A795';
wwv_flow_imp.g_varchar2_table(83) := '6984B4C17DFBF6D5E18168052A55AA745EB220310738F7D073672100CEE29FC9BB0B01C824BAFEEA3BF004203A7D7174104F00002000494441542D1B133E00E4092059D0BBEFBE5B206DB0F803C47F00300754AF5E5D2709EAD9B3A7EAD1A3872283A0D1';
wwv_flow_imp.g_varchar2_table(84) := 'C41C101FC34C5F210420D3083BD7BF1000E7B0F7DA9D034D00E2096BD9B2656AC488116AC68C19DA1C6094121687C078C8FDF4F70B2FBC50D70CA08A60C3860D55F1E2C5F39D29A56E40621866EA2A21009942D6F97E8500382F03AF8C4008C03949599D';
wwv_flow_imp.g_varchar2_table(85) := '4ABFFDF65B9D24884A82AB56ADD219034F9D3AE515D966759CB1D206D7AF5F5FF5EAD54BE70868D0A081BAECB2CBB23A2EB99935024200FCBB328400F857B676CF4C08808900449F4A490A74E4C8115D4570F6ECD9EAEDB7DF565F7EF965BE0CAC363DBB';
wwv_flow_imp.g_varchar2_table(86) := '05E4A5FEAC3423E408A85CB9B26AD2A4891A306080BAE5965BF2AB088A29C039E90A01700EFB4CDF590840A611F64FFF42001290254460E9D2A5BA8A20E6009207E5E6E626F04DB9C440A05CB9723A6DF0E0C183558D1A3554891225B439409A33080801';
wwv_flow_imp.g_varchar2_table(87) := '7006F76CDC5508403650F6C73D840058C8D1CA431D73C082050BD4A2458BD48A152B7484809904885F40412063A50D6EDFBEBD4E1DCC873C01E652C2A211C8DE4B450840F6B0CEF69D8400641B71EFDE4F084012B22363E0962D5BD4840913D498316374';
wwv_flow_imp.g_varchar2_table(88) := 'B480D18400240664F9F2E555BB76EDB463207E01440C184D08406218DA719510003B5074671F4200DC2917378E4A08402152B12A6D7BFAF4691D1E0801204AE0D0A143050A08B951C84E8EC9CA4F8210C17BEFBD57F5EEDD5B57112C5DBAB493430CE4BD';
wwv_flow_imp.g_varchar2_table(89) := '8500F857EC4200FC2B5BBB672604204902402820277F2A07524590088175EBD629B403666D00FF361308BB05E7A5FEA2B523D8FF890E206D3026818E1D3BEA6441E6268982322B61210099C5D7C9DE85003889BEB7EE2D04200579E1148823206181A40D';
wwv_flow_imp.g_varchar2_table(90) := '1E376E9CFAFEFBEF53E829B85FA16220EA7F8A073DF1C413EAFAEBAF0F2E180ECC5C088003A067E9964200B204B40F6E2304200921469F4A210293274F56EFBCF38E2E24B477EFDEF3F204886FC0CF005B9903481B7CE79D77E6A70DBEE8A28B1425868D';
wwv_flow_imp.g_varchar2_table(91) := '267E01492CD0242E15029004581EBB540880C704E6E0708500A4093EE680CD9B37AB8F3FFE584D9D3A55A70D86188839203160B1FFE313D0AC5933AD0DA092E0C5175F2C042031F852BE4A0840CAD0B9FE8B42005C2F22D70C5008400AA2883E95B2E193';
wwv_flow_imp.g_varchar2_table(92) := '291073008584700C94961C026CFADDBB77570F3FFCB06AD9B2A5E408480EBEA4AF16029034649EF9821000CF88CAF1810A01484104566AE9EFBEFB4E670B2451100E82BB76ED52440C48B34620DA34C2FF49154CED800E1D3AA8ABAEBA4AE70990961904';
wwv_flow_imp.g_varchar2_table(93) := '840064065737F42A04C00D52F0C6188400A420272B028016E0E0C1833A6DF0BC79F3B45FC0175F7C51A077F107F8190E2B2C300754AD5A55356EDC58DD7EFBED3A4C9002424693C88014166B8CAF0801B00F4BB7F52404C06D1271EF7884006440364B96';
wwv_flow_imp.g_varchar2_table(94) := '2C512FBFFCB29A3973A63A79F2648110C10CDCCE775D9236F8EEBBEFD6E6805AB56AE9B4C1BCD4A4D987801000FBB0745B4F4200DC2611F78E4708409AB2899536982A82240CC23780024267CE9CC9BF9368020A6A02F89F396702A7FE468D1AA92E5DBA';
wwv_flow_imp.g_varchar2_table(95) := 'A8D6AD5BAB6BAEB9465711B48A22907A02A92D602100A9E1E6856F0901F08294DC314621001990039BD989132774DAE0F7DF7F5FBDFEFAEB3A6780D1A48A607CD0C913806360F3E6CDD5A0418354E7CE9D159505A3C9821080F8585A5D21042035DCBCF0';
wwv_flow_imp.g_varchar2_table(96) := '2D21005E90923BC62804C04639446B0338F5533CE895575E516804481624D9010B073C5A3B52B16245F5D0430F699300E6008881B4F4111002903E866EED4108805B25E3BE710901B04926568E81A40DA68A20A584A91B001958B97265011220E6808202';
wwv_flow_imp.g_varchar2_table(97) := 'B08A0E204700A600B2055240E8D24B2F2DF025710E4C7E110B01481E33AF7C4308805724E5FC3885006458066C4E3FFEF8A33601BCF6DA6B3A57C0B163C70A9803442B50B81078A19136189F80C71F7F5C9301890E486FE10A01480F3F377F5B08809BA5';
wwv_flow_imp.g_varchar2_table(98) := 'E3AEB10901C8903CA23502D40E2047C0F8F1E3D59A356BB466C0EC1898A16178B65B2B3F092A070E183040670CAC53A78E225A203A3A40B40189895C0840623879F12A21005E949A336316029001DCADCC01FC8EB4C1D40C204C70FAF4E96AE3C68D5245';
wwv_flow_imp.g_varchar2_table(99) := '3009FCD102D4AE5D5BA70D2665305504CDC982A46E40E2600A01481C2BAF5D2904C06B12736EBC4200B280BD712AC527004D00B503468C18A193051D3D7A340B23F0F62DCC7E01140AE2E4DFAD5B37F5E8A38FAA56AD5A797B720E8D5E088043C067E1B6';
wwv_flow_imp.g_varchar2_table(100) := '4200B200B24F6E2104200B828C564B931C88F0403E6BD7AEB54C1B2CCE813F0BC60A0BD206932D102D005A013401393939F95F126D40E10B5B0840161E7C876E2104C021E03D785B21000E088DCDE9C081036AEBD6AD92363845FC491B5CAD5A359D24A8';
wwv_flow_imp.g_varchar2_table(101) := '57AF5E5A2370C10517080148104F21000902E5C1CB84007850680E0D59088043C01BB7254410730069830F1F3EAC3013484B1C01F2045033805C01640F246D304D9C01450390F82AF2D7954200FC25CF4CCE46084026D18DEADB4A2D4D34004982E6CC99';
wwv_flow_imp.g_varchar2_table(102) := 'A3D306132E78EAD4A92C8ECA3BB7B28A0C203150FDFAF5B516A06DDBB6BAA260E5CA95BD332987462A1A008780CFC26D85006401649FDC420840160519AB8AE09123477415C159B366A9091326E8DA014693B4C1050564E50F407400B5029A3469A2C304';
wwv_flow_imp.g_varchar2_table(103) := '6FBDF55685B3A0D1441B70FE22170290C5073FCBB712029065C03D7C3B21002E111EAAFFC58B17AB175F7C51CD9E3D5BE708387BF6AC4B46E78D61E003F0C0030FA8C18307ABEAD5ABEBDA0166C7406FCC223BA31402901D9C9DB88B10002750F7E63D85';
wwv_flow_imp.g_varchar2_table(104) := '003824B7585504172C58A053062F5FBE5CAD5BB74EE5E6E616D00648D6C09FE0B0D28C70EABFE69A6B22EDDBB78FB46AD52AD4A2458B1069830D1260C62EE84584840038F4E067E1B64200B200B24F6E2104C06582E4D44F9E80891327AAB163C7AAFDFB';
wwv_flow_imp.g_varchar2_table(105) := 'F70B01484E46E10A152A84DBB56B171A3264484EDBB66D4398086842007E06520840728BCA4B570B01F092B49C1DAB100067F1B7DC947002FCF8E38FD598316374D640A203F2F2F21C1EA97B6F1FA50D208C2252AD5AB5C8E0C18343BD7BF70ED5AA552B';
wwv_flow_imp.g_varchar2_table(106) := '54B264C910D705FDE46F485108807BD773BA231302902E82C1F9BE100087656D752AC51F80B4C19F7DF6993605CC9D3B57D70F30CC01E21878BED04CCE8111FE5AA2448970A3468DC2CD9B370FB76EDD3AA775EBD6452EBFFCF21CB373A0C3A277F4F642';
wwv_flow_imp.g_varchar2_table(107) := '001C853FA33717029051787DD5B91000978AD3481B4C58207902A82478E2C409978ED695C3CA2B56AC586E891225F2BA75EB56E491471E29DAAA55AB22469E00578E388B8312029045B0B37C2B21005906DCC3B71302E032E1453B0772EA9F32658AAE1B';
wwv_flow_imp.g_varchar2_table(108) := 'B061C306B57BF76E75FAF4E902A396B4C13FC361D28E600AC06E92D7A14387D033CF3C53F4C61B6F2C22E1813F612504C0650FBE8DC311026023983EEF4A088007048C39E08B2FBE500B172ED46460D3A64D057C02C4241053881080C8CD37DF1C7AF6D9';
wwv_flow_imp.g_varchar2_table(109) := '6773880C305F19E4FC0042003CF0E0A738442100290217C0AF090170A9D0A39306111DB07AF56A3572E448F5C1071FA843870EB974E4AE1A96F607E8D2A54B68E8D0A1AA7DFBF63A378034D100F8790D0801F0B374ED9D9B10007BF1B4AD37ABAC814403';
wwv_flow_imp.g_varchar2_table(110) := '902468C68C19DA4170E7CE9DE799036C1B808F3AA24640972E5DD40D37DCA01A366CA8AA54A9A28A172F9E3FC320560E140D808F1678D4548400F857B676CF4C0880DD88DAD45FACB4C19CFCB76FDFAE6B07902B809C01E626FE00E70BA06CD9B2EAA28B';
wwv_flow_imp.g_varchar2_table(111) := '2E52575D7595EAD1A3872E1E64AE172004E0804DAB56BA7103024200DC20056F8C41088037E474DE28491B3C7CF870AD11F8FEFBEF256D70027244FDDFBD7B773564C81075FDF5D72B0A0905352C503400092C188F5E2204C0A3827360D842001C003DD9';
wwv_flow_imp.g_varchar2_table(112) := '5B5A9D50710C2459D0471F7DA456AE5CA90B08513FC068A209F8295D7074EAE45AB56AE59B039A366DAAEAD4A953401C41710C140290EC53E89DEB85007847564E8F540880D31248F1FEE4093879F2A4DAB2658B9A366D9A7AF3CD37D5575F7D558000F0';
wwv_flow_imp.g_varchar2_table(113) := '1FA91D5010605E8E152A5450F805F4EBD74FF5EFDF5F6122309A10801417A47CCD35080801708D285C3F102100AE1751C101466F503FFCF0832E1E843960FEFCF99A1448DAE08298598549B2E9F7E9D3473DF8E083AA79F3E6DA1410A4CA81A201F0D883';
wwv_flow_imp.g_varchar2_table(114) := '9FC4708500240156C02F1502E0A10560650AE0779803A81940DAE04F3EF9449B04CC2DE8E6002B0280FDBF66CD9ADA17E0BAEBAE5337DE78A3AA5DBBF6799503FD5A3B400880871EFC24872A042049C0027CB910009F089F3C014407903278D4A851EAE8';
wwv_flow_imp.g_varchar2_table(115) := 'D1A305CC01620AB01634A981D1003CF2C823AA6FDFBEF94E817EAF1C2804C0270FBEC5348400F857B676CF4C0880DD8866B1BF688D004E803367CE54E3C78FD7C583D00C60229076BE49C0BCC1972B574E0D1C3850DD71C71DAA7EFDFA3A649097A8B9F9';
wwv_flow_imp.g_varchar2_table(116) := 'CD374008807F9F0A2100FE95ADDD3313026037A259EAAF3073C0FAF5EBD5D2A54B75C6C08D1B3716081194B4C1E747078009D1018D1B37561D3A74D0B902AA55AB56C027C06FB902840064E94175E03642001C00DDA3B71402E051C1450FDB38A11A5504';
wwv_flow_imp.g_varchar2_table(117) := '090BC431906441C78F1FF7C92C33370D5E9A6407C417E0F1C71F579D3B77D67902FCDA8400F855B24A6BAF887021FDF5D5575F9DF63AA608D94B2FBDA4DF25C78E1DF32F70019C9910009F083D5A457DEAD4291D1EC8078DC0AE5DBB14BF3337710EFCA9';
wwv_flow_imp.g_varchar2_table(118) := '3690D91CC0C99F4C81A40E6ED0A081BAF4D24B95B984B05F340142007CF2E05B4C4308807F656BF7CC8400D88DA88BFA3B70E080DABA75AB9A376F9E66EF5414140250B880D0025C72C925D40C8874EFDE3DE4D7B4C142005CF4A0DA3C1421003603EAE3';
wwv_flow_imp.g_varchar2_table(119) := 'EE8400F858B8C6D408111C3162844E1B4C2D018908882BF4087901481B8C39A06DDBB698074266FF09AF87070A0188BB063C7B811000CF8A2EEB0317029075C8337B432B15F5B7DF7EAB9304CD9D3B57AD5AB54A670C8C3607647654EEEFDDC21C12A959';
wwv_flow_imp.g_varchar2_table(120) := 'B366A467CF9E79EDDAB5C31C9053A54A959CD2A54BFF6437F0781302E0710116327C2100FE95ADDD3313026037A20EF7674500727373D5912347749E00C204274C98A053081B4D2203ACEB06942C5932B762C58A671B346810EED1A347919E3D7B16AF5E';
wwv_flow_imp.g_varchar2_table(121) := 'BD7A8EC322B6E5F642006C81D1959D080170A5585C39282100AE144B660605392053201EBD9413266FC08F3FFE98999BF9A3D7B34AA91F2FB8E08270FFFEFD8B3DF9E493C5EAD5AB5730418047E72904C0A3824B60D842001200492ED1080801F0F142B0';
wwv_flow_imp.g_varchar2_table(122) := '4A5E833960C18205BA7E00A9838910208BA0591B10641F81286D489E522AB742850A917EFDFA1579FAE9A78BD4AA552B5F03E0E588002100FE7DF08500F857B676CF4C0880DD887AA03F4EFDE409C014306EDC38B56FDF3E2100B1E516A954A952E4AEBB';
wwv_flow_imp.g_varchar2_table(123) := 'EE0AE11058B366CD7C1F0021001E58EC011CA21080000A3DC5290B014811382F7DCD6AA3C209F0E38F3F56A3478FD68584BEFBEE3B890E8821D40B2FBC50E705183060806AD9B2A5E2FFD1A982BDB41E18AB6800BC26B1C4C72B042071AC827EA5108000';
wwv_flow_imp.g_varchar2_table(124) := 'AC002B0240C960CC014405AC58B142FB04503FC028252C8E813F2F0C12019120A861C386AA458B16AA53A74EBA8090B979AD56801000FF3EF84200FC2B5BBB672604C06E443DD41F9B16C58276EEDCA95E79E5153576EC5875E2C4090FCD207B43CDC9C9';
wwv_flow_imp.g_varchar2_table(125) := 'D1A98229213C64C8103568D020ED40E3D52604C0AB928B3F6E2100F131922B7E42400840005742F4691527C0A953A7AA77DE794791F77BF7EEDDEAF4E9D30590096ADAE0E879F3C0502C88D2C18D1A355255AA5451A54A9552E6C4405EF00D1002E0DF07';
wwv_flow_imp.g_varchar2_table(126) := '5F08807F656BF7CC8400D88DA847FBA374F0E6CD9BD5C2850BD5E4C99375DA60F207184D4C023F218126A052A54AAA5EBD7ABA70D06DB7DDA6FF6DF804982328DC9C2D500880471FD404862D04200190E412D100047D0D449F54890E58BB76AD3607BCFF';
wwv_flow_imp.g_varchar2_table(127) := 'FEFBEAF0E1C3418728E6FC4B962CA935004406F4EAD54B952F5FDE53580901F094B8921AAC1080A4E00AF4C5A20108B0F8AD54D5640C245B201F9C0277ECD8215504CFAD916873C005175CA0377F22041A376EAC1D05CB952BA7B5046E6F4200DC2EA1D4';
wwv_flow_imp.g_varchar2_table(128) := 'C727042075EC82F64D21004193B869BEB1A203281844BD008A07912B809C01E616547F80E8A5C2464FE5C0EAD5AB473A76ECA8FAF4E9132252006741B73721006E9750EAE31302903A7641FBA61080A0493C89F9922D70F8F0E1BA9CF0B163C70A640C4C';
wwv_flow_imp.g_varchar2_table(129) := 'A21BBF5F1A61829D3B7756BFFAD5AF4237DC7083226CD0ED4D0880DB2594FAF88400A48E5DD0BE29042068128F315F2B6DC0FEFDFB75DA6012067DFAE9A7BA8090393A20A89A802887484D00D000FCEE77BF0B513AD89C24C8ADF9018400F8F7C11702E0';
wwv_flow_imp.g_varchar2_table(130) := '5FD9DA3D3321007623EAA3FEC2E1B0FAFEFBEFD5D6AD5BB553E09B6FBEA94D034693C8809F85DDBD7B77F5CC33CFA856AD5A9D1712E8C6680021003E7A50A3A62204C0BFB2B57B664200EC46D407FD459F5A4916441541A2033EFAE82375F2E4C9022182';
wwv_flow_imp.g_varchar2_table(131) := '3E9872DA5368D7AE9DBAFFFEFBD54D37DDA4C304F10F70E3C66F4C540840DA22776D0742005C2B1AD70D4C0880EB44E2EC806225B1A160D0D2A54BD5B265CBA8241859B972A5567D2BA5288E130AAA39C090D6E5975FAE9A3469A2AEBDF65A8519A069D3';
wwv_flow_imp.g_varchar2_table(132) := 'A68A2801A3B92D39901000679FB34CDE5D084026D1F557DF4200FC25CF8CCE86C4409803C68D1B171E3D7A74F8C891236CFEC4BC059E0018C0130AD8AF5F3FF5C0030FA8BA75EB0A01C8E88A94CEAD10100220EB2251048400248A5400AFB3CA6A4715C1';
wwv_flow_imp.g_varchar2_table(133) := '3973E644C68F1F1F5EB56A55E4C08103214C04E73401EE0F80B7598ED19A0F5EBED75F7FBDBAE79E7B146681CA952BEB54C1E6E606C740D100D8BC105CD49D10001709C3E5431102E0720139393C2BB5358E81A40DDEB8716364F9F2E5E10F3EF820BC6E';
wwv_flow_imp.g_varchar2_table(134) := 'DDBAF0D9B367D9FC8D0F9A01DDFC6E1AB09A5F850A155483060DD475D75DA76EBEF9669D32383A32C0C0C629F90A01700AF9CCDF570840E631F6CB1D8400F84592599C07248053FFB66DDBC2AFBCF2CAD9D75F7F3DEFC489136CFE45955245CE6903B238';
wwv_flow_imp.g_varchar2_table(135) := '2277DD0A52801360F5EAD5B52660F0E0C1BA68909B9A10003749C3DEB10801B0174F3FF72604C0CFD2B5796ED1AAEB53A74E45A64C99928B1680EC81254A94281A0E878BE0304889614208CD9A00FE6D362BD83C3C47BBB30A8944F5DFA64D1B75C71D77';
wwv_flow_imp.g_varchar2_table(136) := '449A356B06090855AC58B18036C0A9410B01700AF9CCDF570840E631F6CB1D8400F845920ECC034DC0CE9D3BC35F7FFD75242F2F4F952E5D3AE7E8D1A3214205274D9AA4494050088015FC6801CA952B17A959B366047340CF9E3D43EDDAB50B5148C8E9';
wwv_flow_imp.g_varchar2_table(137) := '2604C0690964EEFE42003287ADDF7A1602E0378966613EE6533C1B3F1F5E3A458B165567CE9C5173E7CED52984C922C8FF03DE22A1502852BB766DF5D4534F85EEBFFFFE50B453A013F808017002F5ECDC5308407670F6C35D8400F8418A599E43BC9876';
wwv_flow_imp.g_varchar2_table(138) := '2A08CE983143A710A6BC309A004842509A45AAE00845839E7DF6D9D0430F3D142A56AC583E144E45040801F0EF6A1402E05FD9DA3D33210076231A80FEE211801F7FFC51E113B069D3263575EA54F5CE3BEFE8FF07D51C90939313A951A386FAED6F7F1B';
wwv_flow_imp.g_varchar2_table(139) := '1A3468507EB9E078386672290901C824BACEF62D04C059FCBD747721005E9296C7C64AE1206A088C1C3952AD5AB54A9B03CE9E3DEBB159A43F5C7C01AEB8E20AC5E6DFBF7F7F9D2A183300BF77AA0901700AF9CCDF570840E631F6CB1D8400F845920ECF';
wwv_flow_imp.g_varchar2_table(140) := 'C3EA344BE640CC0198024823BC7CF972F5E5975F1618A9DFF3043059E6486E00D203E30CD8B2654BFDF3A28B2ECAAF17906D6D801000871F980CDE5E084006C1F559D742007C2650374E8770C0F5EBD7ABB163C7EA8A82E73207EAA106810018F3E4C5CC';
wwv_flow_imp.g_varchar2_table(141) := 'A64FC1A0214386E8BA01254A94C817593649801000373E29F68C4908803D3806A117210041907296E768B591E117F0EF7FFF5B8D1F3F5E930148815F730298E1B6CA0F70D55557697340CF9E3D15BE0190806C570E140290E587228BB713029045B03D7E';
wwv_flow_imp.g_varchar2_table(142) := '2B21001E17A01B871F2B85F0B66DDBB42FC092254BA827A0CD03E6E800ABCDD28DF34B664C56732A53A68C6AD4A891223950EBD6AD75ED008A08659304080148468ADEBA560880B7E4E5E468850038897EC0EE4DE2203E8B172F562FBEF8A29A3973A6C2';
wwv_flow_imp.g_varchar2_table(143) := '5130688D8D9E0FE5827BF5EAA51E79E411D5BC79F3AC3A050A01F0EFAA1302E05FD9DA3D33210076232AFD1540C04A1B70E0C001F5EEBBEFAAE9D3A7ABCF3FFF5C7DFBEDB70A1341B4EADC6F26022B7F87EEDDBBABDFFDEE77DA29D0DC329D1F4008807F';
wwv_flow_imp.g_varchar2_table(144) := '1F542100FE95ADDD3313026037A2D25F5C0450FBEFD9B3878A82DA1440AE80DDBB7747CC458482E21C78C71D77A8DFFFFEF7AA61C386F9B865C319500840DC65EAD90B8400785674591FB81080AC431EDC1B9A37364C011001D206BFF4D24B117E123618';
wwv_flow_imp.g_varchar2_table(145) := 'A44A82C58B17D72680279F7C52B56DDB36AB0B43084056E1CEEACD840064156E4FDF4C0880A7C5E7ADC15B9D6C77EDDAA54D0173E7CE8D6CD8B021B26FDFBEF0B9FA01A173A585BD35C924464B4AE0ABAFBE5A75EEDC593B023668D04055AE5C59D75430';
wwv_flow_imp.g_varchar2_table(146) := '5AA6B4014200921094C72E1502E0318139385C21000E821FC45B47DBB6C909F0DD77DF913638327DFAF4DCC99327E7EED9B3077300BB2049F32102BAF9CD2CC07CCA962DAB2EBCF0426D02E8D3A78FD608902B400840109F0E7BE62C04C01E1C83D08B10';
wwv_flow_imp.g_varchar2_table(147) := '802048D90373FCE1871F223367CECC1D3162C4D9E5CB978743A150B1E2C58B17CBCDCDCD3979F26481E4411E984ED2432C57AE9C260083070FD65A017203F02237884FD21DC6F9029A172A36BEFAEAAB9A8049F30F024200FC23CB4CCF440840A61196FE';
wwv_flow_imp.g_varchar2_table(148) := 'CF4320865A3BB275EBD6F0AC59B372D1068442A122A54A952AB27FFFFE9C952B57AAAFBEFA4A8710FAA159E50640ED5FB76E5DCC0111CC010D1B360C55AF5E5D952C59322353A642E30B2FBCA0EB34984331FDA665C908782EEF540880CB05E4A2E10901';
wwv_flow_imp.g_varchar2_table(149) := '709130823414AB30B753A74E450E1E3C18E1C45FBC78F110C572366DDA14E2943A6BD62C5D4CC8685EDFA8ACC65FBC78F1C845175D14214950BF7EFD42B7DC724B08F340261A49980C02E0275C338195D7FA1402E0358939375E2100CE612F77562A3F1D';
wwv_flow_imp.g_varchar2_table(150) := '70AC2C78070F1E5463C68C516FBCF186426DCD69D52F9A00B37AFF9C5604DF8748F9F2E5D52F7FF9CBD0A38F3E1AAA58B16246D6C9DEBD7B755D86091326E8024D54690C62A5C68C80EB70A742001C1680876E5FBA746975EFBDF7EA48A42BAFBC32A964';
wwv_flow_imp.g_varchar2_table(151) := '64A188DF32B57848707E19AA7909599100420557AF5EAD2B09924278E1C285EA9B6FBE29307D2F6B032CCC011136FDA79F7E5A3DF5D45321B309C0CEE440D4622009D3679F7DA63F2B56AC509B376FF615B9F2CB3392EC3C8400248B5870AE8F7EDFE06B';
wwv_flow_imp.g_varchar2_table(152) := '4489F25FFFFAD78A1A25C994281702109C75E3F84C310BCC9E3D9B9C016AD9B265BE320744834B5D80A14387EA8A81A8E88C66270130FA3C75EA942ED58C2FC0B469D3440BE0F84A4F7F004200D2C7D0AF3D44138052A54AA9010306A8FFF88FFF1002E0';
wwv_flow_imp.g_varchar2_table(153) := '57A17B715E568E825BB76E556FBDF596FAF0C30FD5962D5B7445413F99030C395D72C9253A22A077EFDE3A370026011E54BB8A05998904F8E10FF0B7BFFD4D576A8C4EC9ECC5B513F4310B0108FA0A287CFEBC4738F9F35E41ED4F5552329272F0100D80';
wwv_flow_imp.g_varchar2_table(154) := 'AC1D572060450038AD120D804960DEBC79FAB37FFF7EECE6B4FC7C01FA3FA19FFEEB452B159BFDE5975FAE19798B162D54C78E1D55D3A64D158983D26DD1B842002053C3860DD37E164200D245D8F9EF0B01705E066E1E019B3FEF16DE2B5423E5DF9425';
wwv_flow_imp.g_varchar2_table(155) := 'C71F209943869800DC2C651F8E8DCD8B0D8B933F5A005208E31B604500BC3C7D1E4298380F6A93264DD4638F3DA66EBBEDB68C8404E263B17EFD7AF5FCF3CFABB7DF7E5B4C005E5E38E7C62E04C00742CCE014302BB2F9F35E69DFBEBDDEF45933C96CFE';
wwv_flow_imp.g_varchar2_table(156) := 'FA90254E80199492749D8F8095ED7BC3860D6AE2C489117204B089952C5932849F001A02D2DC9A9B979C04A3C75AA74E1DF5ECB3CF6A155D261C02C16ECD9A3511340053A74E8D9C8B04C831B4285ED4A004FDD1110210F4155070FED1EF14348CA41FFF';
wwv_flow_imp.g_varchar2_table(157) := 'ED6F7FAB5AB66C59E03D6BD69EC6435108403C84E4EF1943E0E8D1A37AB3278B1DAA710AEB6CDBB64D4D9A34497DF0C1079E2500E681A30520270004E0965B6EC9AF11102F722219D029C0B47AF5EAC85FFFFAD7F0B469D3C2914844D760089D3B0E0801';
wwv_flow_imp.g_varchar2_table(158) := '48064D775C2B04C01D7270CB28A20900EFCB1B6FBC51FDBFFFF7FF54BB76ED521EA6108094A1932FA68A80A10DC014C0E6C5FFC9A2C7664978E0E8D1A375DE807DFBF669CD80971B736ADCB8B156D5E1A853A952A5A4D574F1E60F461B376E8C0C1F3E3C';
wwv_flow_imp.g_varchar2_table(159) := 'EFBDF7DE0B1F3C7890E79A1CC41081027E15F1FA92BFBB03012100EE90835B47419871A74E9DD4A38F3E9A56155221006E95B04FC715AF321E9BD9279F7CA266CE9CA9E3DA3113A029883E317BE5540B73AF5AB5AA66EB940B860CD4AE5D5B55A85021BF';
wwv_flow_imp.g_varchar2_table(160) := '4E40BAA28648EDDBB72FB268D1A2F0C2850B23E40420FB220E97E708803607C46A5E32AFA48B9557BE2F04C02B92CAEE3871F2E3FDD1AC5933D5A64D1B75C30D37E8FFA7DA8400A48A9C7C2F2504E21100FE7EFCF871AD0958BC78B11A376E9CCE1960D6';
wwv_flow_imp.g_varchar2_table(161) := '04786DC3C211900D9FD33FACBD5FBF7EDA311093875D8D54C0C78F1F8F1C3870203263C68CC8D8B163235F7EF925D1154649664B4D8097232DECC2CE8DFD080170A3543237A644DF696CF624FDE9DEBDBBA2CEC805175CA0C38B536D420052454EBE9771';
wwv_flow_imp.g_varchar2_table(162) := '04B66FDFAE468C18A1A64C9942A8A0AE26E8F59C011D3A74D019BBB0DB65AA48D0D2A54BC32FBDF45278F1E2C5E113274EE4142D5AB4484E4E8EE112A0C304D10E98EB07645C987283A410100290145CBEB81812806D1F0F7F0E0D34236A8A0310E6444E';
wwv_flow_imp.g_varchar2_table(163) := 'FD98133948D8D18400D881A2F4913602569A016A0670FA5FB468914E21BC72E5CA08E68073CDF53903AC4ED76CFC10004277D261EE060856B8EDD9B327F2C9279F84090D3C7DFA7488A24C4458A0718040EDDEBD5BE3BA69D3A6B4E596ED0E82A2B11002';
wwv_flow_imp.g_varchar2_table(164) := '90FACA4AF4349DFA1D32F34D644EEE1036F99A356B6A1321871E083B649DE7B77EFDFA8A430431FFE6966A865121009991A5F46A1302305FCC01A8B5478C181159B3668D66C59C68CF85B1EAFF7B6563E8DAB5AB4ED9893F40A63400BC2CBEFFFE7B5D91';
wwv_flow_imp.g_varchar2_table(165) := 'F19CC624C4C902C2019EF855E06849B4057F07BB64E3876D126FDC6E8C973932F68ADF47DC49257081108004408A718999004B40D7B50000200049444154186BDBCDEF07636D63DFC75788F4E184F6B106D0D4F1CCF29CA201E01AD4FE76BD3B8400A4BE';
wwv_flow_imp.g_varchar2_table(166) := 'CEE49B1942C0EA544B98DBABAFBE1A993B77AEF611F8C52F7E814A3B74E4C811C5C72B9B03B6BBA79E7A4AB37CBB1E62B33620918DFCF0E1C33ACA822A82680320068C2591EF6648E496DDF2C2634C448AA0F9E113946A874200D25F694416B159922E97';
wwv_flow_imp.g_varchar2_table(167) := 'D3B3A14E4FBF677B7B80B0A3ED247DF8ADB7DEAA060F1EACEDFBF15A3C7FAA78DFE7EF4200124149AEC92A02560BFBDB6FBFD5C96EC81BC0DF4B9428113A70E080FAF8E38FD582050BF426613437AB00DD4000502B928A19130119197951F2710B0130E4';
wwv_flow_imp.g_varchar2_table(168) := '8F1D94173779227008A58A24E425D1E6E6535FBC3908012888502ACF74B972E5F23DE52FBDF4524D1E59FBA9AACBE3C92C95BF3316DE5D7CCA9429A3EAD5ABA7AEBDF6DA0205C462F52B042015C4E53B9E440035180FB091338017E4AE5DBBD4D8B163B5';
wwv_flow_imp.g_varchar2_table(169) := '3A1B82E08596490290E8FCC1102CF9B8D904000140CE103D521C534512C7D020342100E94B193BFA030F3CA0060E1CA86DEBAC7737D6C9306FE41071CC75C914F4490729D100A4839E7C37A308C463B8D8B8D1004C9C3851AD5AB54AEDD9B347F1BB58E6';
wwv_flow_imp.g_varchar2_table(170) := '80544E11764F90F49DF80060EBB3DB04106FACF1F08CF77D27FF8E9C2101682D382D61B66093341AFFE6C30B9E8811C821A7BD78CD0D6BC26A8C41230089CA8167A64A952AAA72E5CAFAF93192891918B2C6B19BF3930C9C77DE79A78E95C776EEA596AD';
wwv_flow_imp.g_varchar2_table(171) := '6755088097564500C75A98BA8E871F95F0975F7EA9962E5D4A1E7C9D3C2856A860B655C256F763E3270A004F5E3BA20082B224C80A49C5C383070F16C81C69CC1F53012F79D6C3FCF9F3D53BEFBCA30E1D3A14179E44379EB81DD97C4110090010C6F3E5';
wwv_flow_imp.g_varchar2_table(172) := 'C14E7EF3CD37EB3CF8A8F52179D8CFCDCF1A2490FF932D8F3A1C90053359B459549EEE4E0880A7C517DCC11BC4809F3CF03B76EC502FBFFCB27AF3CD37B55320CD70FC31D20D3B8D162F214C004F3EF9A4BAFEFAEBB3AE01707AFEA9DCDF90332620E40C';
wwv_flow_imp.g_varchar2_table(173) := 'B9B32285A84CC197BF4F9E3C599B0B8C2A93FC1EB5AAB1B9708DE1599DCA98B2F19DA011000353438E661538B2327C7CC88087973CCE7238F8F1FB68C26FAC0FFA40EEA8D50D72E1163F976CACA144EE2104201194E41A572160A51EC393160DC0ECD9B3';
wwv_flow_imp.g_varchar2_table(174) := 'F5C98FD320D7A10A464340E480D1B2A909E05E65CB9655D5AA5553575E79A55647727AE164C2CB495A6C04525583122AFAFEFBEFABB56BD7EA13229A16C8201B019B09FE22E44020BCD4ADCDAF04A0308D0B7F23636683060DB49A1F7961B7679347ADCF';
wwv_flow_imp.g_varchar2_table(175) := 'FF51EB5354AB458B1649892ED5B594D44D3C78B110000F0A4D867C3E023CE084B461FFE5DF78D4A2098010A015D8B973A72304805308E93B7BF7EEADC801806312AA493625398D64662523F7BD7BF76AF9733A6433354C0468113EFDF453F5C61B6FE8E4';
wwv_flow_imp.g_varchar2_table(176) := '52562D9B043116024125006CF0F7DE7BAF26CA3C23274E9CC8F792472E84F4515BE3C20B2F4C6AF1B8C9F33FA98167F8622100190658BACF2C02E6079B7FF331AB0F292A347CF8705D60885384395C30B323FBA977C642DE7FECFE9000B3E39FBC94EC93';
wwv_flow_imp.g_varchar2_table(177) := '80D53A30F76E5E139CFE3117612A4043606862B025B346DC906EDAAF04C09009F26083379CF32066A4C0C5378654B7D75D775DBEF8CCF230C899A14910129DDE332404203DFCE4DB0E23104FB5F7F5D75F6BA73008C0CA952BD5D6AD5B23E74281325226';
wwv_flow_imp.g_varchar2_table(178) := '37FAF4C88BEEAAABAE52FFFDDFFFADED964601A078E3761856CFDD3E193C3107CD9A354B3B8EB2E1A32DE2271912D7AD5BA723499C6E7E27006CFC0D1B36D4D53189D707739E0D6CFC98C82EBBECB2B8224846E6713B0BE8054200022A783F4DBBB09334';
wwv_flow_imp.g_varchar2_table(179) := '27FE63C78EA9CD9B3773E28B4C9830218299E05C95BCF3EA09C4F3428E879B958D13DBFF33CF3CA343920C0D809CFEE32199FCDF13C594354134012602E4C54994644368045E7FFD751D4E1AAF653A7AC00F04A0308CF0CCEFDBB7AFBAEDB6DBB47F0C9A';
wwv_flow_imp.g_varchar2_table(180) := '18ECFD38F65D7CF1C5F9C5700A9343A2F28E27CB20FF5D084090A5EFE3B947BF1C3861CC9A352B326AD4A80836E0A2458B864A952A15421BC0891027C274377F339CBCFC38D170BA6CDDBAB5BAFFFEFB55B76EDD127AB1F9582C8E4E2DDE891127D251A3';
wwv_flow_imp.g_varchar2_table(181) := '46E92C896C469035B3C606130164321BC964FC40000C6183231B3B58822104AC69D3A63AE56DCF9E3DF53362D56483CFFCE3220420F318CB1DB28C80D58B9E970E59E4962E5D1AC159909751B162C542FCEEA38F3E52DBB66DD31EE2562DD649A6B0130E';
wwv_flow_imp.g_varchar2_table(182) := '59ECB0FD13F78F5AF39A6BAE51B56AD59278E42CAF05F3EDE21100239F049123D89D59237CD8C038A17EFEF9E77AADB07E8C962987412F1180789EFD38C162DBE727CF21641B2F7F8871DDBA75F3C3F492919583CBC857B71602E02B71CA646221C0CB9F';
wwv_flow_imp.g_varchar2_table(183) := '97B8E1E4C5A9830D1F3B300E611419E26F86B398E150487FF108007F373B23B1795C74D1456AD0A041FAC34B4E9C95DCBF368DF561A49C36B43838A7A14162F37FF1C517755D02C399540840C1E7C3FC2CF00CE160D9A54B17EDD8C7860FA1C2B39FEBF0';
wwv_flow_imp.g_varchar2_table(184) := '038028CBB3E1DCB32104C039ECE5CE5940C0ACD6B77AD190616EDCB8716AFAF4E9F9F903B80E9B3039E81349278B131359C9D828B89ECD814DFFAEBBEED2764EF37D45AD9905A127718B785A01A32B481DC9A65E7BED35F5E1871F2A8A525148C94EB391';
wwv_flow_imp.g_varchar2_table(185) := '79D85ED20018E36633C77E0FF9A541A889EBEFD1A38726C2D8FDAD9EC14465908458E5D2041110029020507299371188F77231BCBF3101F092E75482731895E7E6CD9B9750B2181297F09243E5CF8B1B3B27A480DFE30018ADDA94138FBBD652A2A40CB9';
wwv_flow_imp.g_varchar2_table(186) := '928E98444373E7CE8D4004F00938D7CE7328E5F7A9120437128078DA0E36FF4E9D3AA9F6EDDB6B1280D684EF90F40A6FFFC2525F272A0377AD1CEF8F460880F76528334803015E3C9CD80DFB3FD9C638FD4F9B364D9B06283E5358E345DDAB572F9DDE97';
wwv_flow_imp.g_varchar2_table(187) := 'D8654C0846853DFA921CE46908C7855F65AD602278E79D7722CF3FFF7C846C83561125E90EDD8D0420DE9CEAD7AFAF1E7DF45175C71D77E8443D869984B9B8A9DC74BC7904E9EF420082246D996B3E02856906F81B4585DE7DF75D9D4E960D1D4730F366';
wwv_flow_imp.g_varchar2_table(188) := '6ED416C7BB99134F9F3E7D74C951AB164F0B216271370256F2FBECB3CF22141C8220421E4B962C19C224802629561861BC13B41905371080C29CFB88D3C7A98FF58FD90B8C88EBBFFDF6DB759D0B790EDCBDA6F3D55691547554DE989F8C5210480901EA';
wwv_flow_imp.g_varchar2_table(189) := '0960F3451B0001C099C9ACBA370A94400C7819D6A851C3732547530246BEA411605DB03E301719A589BFF8E20B4D1A493C05418C6E5E2200F1C60AE9C5BF85D4BD6C2198472003575C7185F60390E60D044403E00D39C928B38480618B6483372AC6C5B2';
wwv_flow_imp.g_varchar2_table(190) := '4F1ABF37AB38E5B49F254139741B43E6461D7AFE6F987AF00F183F7EBCAE3D811600D288631C7903087D4B26C5B01B3400408C490B92CB5C50E93317F2F1E3E08ABA9FDA163443DD6F6021CF81430B34C9DB0A01481230B9DCBF08A4FBD24AF7FBFE45D6';
wwv_flow_imp.g_varchar2_table(191) := '3F332BCC590D87C0458B16690D00D9267128E5244DAE091C07A3A3060A53B1BB850010D982031FCEAC900042F8F0EC470340696B23977FB484E559F0C69A1702E00D39C928B3848078236709688FDEA6B0F5C12918D3006986310118A7FF3973E6A8575F';
wwv_flow_imp.g_varchar2_table(192) := '7D554710989B170800697AEFBBEFBEFC8C7DD8FBD10A50D1F2924B2E89E9E42ACF913716B810006FC84946290808021E4580C441449450900A82801A3D9EEB95D31A0012F670D227B2E5E1871F5637DF7CB347D197611786801000591F8280202008A481';
wwv_flow_imp.g_varchar2_table(193) := '4061A75DFE46422948C092254BF44F2207A2134C456B03B24900A2EF8DE6820A9678F3B769D346FF9408973416888BBF2A04C0C5C291A1090282803F10C04B7EE7CE9DEAEDB7DFD6D904A343059D220056DEFEA8FDF1F0EFDFBFBFAA57AF9E44B7F86309';
wwv_flow_imp.g_varchar2_table(194) := '5ACE4208808F852B5313040401E710B0D20CCC9C39538D1D3B563B0B1E3A7428929797173937423209E66713CCA606C040887B12CA47CE7E52F792C3DFECE427767DE7D652A6EE2C042053C84ABF828020106804AC36CCBD7BF7AA75EBD6A965CB9645E6';
wwv_flow_imp.g_varchar2_table(195) := 'CF9F9FB776EDDA5CB4034AA9A24AA92206096033E6043E74E8509D621A0FFC74DA860D1BD44B2FBDA4264E9C684E5F6C74A94908152B6FBAE9A650AB56AD7405CBAA55AB4A1D8B7440F7C07785007840483244414010F017025BB66C098F1D3BF6EC1B6F';
wwv_flow_imp.g_varchar2_table(196) := 'BC711652A0942A7EEEA3276A1000524C5F7DF5D59924006CFE116A570C1C38303464C89010352C8CAA98FE425D66138D80100059138280202008641001AB98F893274F86E7CC99933B79F2E4DCAD5BB7868A152B56B468D1A2C5C81F60840BF6EEDD5BFD';
wwv_flow_imp.g_varchar2_table(197) := 'E77FFEA73E8DA7AB01C0F1F0F9E79F5713264C206B1F9B7E988D9F2C86975D7659CED5575F1DC2EEDFB973E710DEFFF9AA81C84F160A296095C105E260D742001C045F6E2D080802C14020DA1C80ED7FCF9E3DE1EDDBB7874F9C38112A55AA54CE993367';
wwv_flow_imp.g_varchar2_table(198) := '72F00DA03C35B90448B6F3873FFC4187E21196974EA3A6C5B061C3B413622412C9534A91AB38AF49932645FAF4E953AC4D9B364528E6431A5F2960950ED2DEFAAE10006FC94B462B0808021E46C04C04CE55A1D4E558727272428406122AF897BFFC4517';
wwv_flow_imp.g_varchar2_table(199) := 'A3BAE9A69BD433CF3CA39A376F9EB606001F80E1C3876B0270ECD8B15CA5D40FA54B97CEEBDBB76FD1C71F7FBC44BD7AF58AA00D9093BE8717570A431702900268F21541401010045241205E8A5C4205DF7AEB2D9D2B00E7BFDB6EBB4DD5AA552BED53F9';
wwv_flow_imp.g_varchar2_table(200) := 'EEDDBBD5ECD9B375F4C137DF7C93170A85CE5E72C925E1F6EDDBE7DC7AEBADC5CB972F9F236AFF5424EAEDEF0801F0B6FC64F4828020E023044E9D3AA576EDDAA58E1E3DAA43F288C92F53A64CDA2773FAFDE69B6FB469E1CC9933DA0780133FE97CAB54';
wwv_flow_imp.g_varchar2_table(201) := 'A99253B468D1FC10441FC12953898380100059228280202008388C80393530FF364C05A8E48D2441A9A8E78D7E8C3E99A6F95E46FFC6F453B987C3D0C9EDD3404008401AE0C9570501414010B00381C24C03F1CC0685DD3FD1EF267A9D1D73953EDC8380';
wwv_flow_imp.g_varchar2_table(202) := '1000F7C84246220808020145201E01C8F4C95C084030179E108060CA5D662D0808028280201070048400047C01C8F405014140101004828980108060CA5D662D0808028280201070048400047C01C8F405014140101004828980108060CA5D662D080802';
wwv_flow_imp.g_varchar2_table(203) := '8280201070048400047C01C8F405014140101004828980108060CA5D662D0808028280201070048400047C01C8F405014140101004828980108060CA5D662D0808028280201070048400047C01C8F405014140101004828980108060CA5D662D08080282';
wwv_flow_imp.g_varchar2_table(204) := '80201070048400047C01C8F405014140101004828980108060CA5D662D0808028280201070048400047C01C8F405014140101004828980108060CA5D662D0808028280201070048400047C01C8F405014140101004828980108060CA5D662D0808028280';
wwv_flow_imp.g_varchar2_table(205) := '201070048400646901442211150A85B274B760DF46B00EB6FC65F6828020901802420012C329EDABD894684202D286326E074200E24224170802828020A08400647911B03985C361C54F8314647908BEBB1D38E6E4E4E47F7C3741999020200808021940';
wwv_flow_imp.g_varchar2_table(206) := '40084006402DEC047AEAD429F5E5975FAAEDDBB7AB13274EA8A2458BEA8FB4E41100E7B367CF6AAD4AC58A155583060D54D5AA553511A089D625794CE51B828020101C0484006440D6851180BD7BF7AA891327AAE9D3A7AB7DFBF6A992254BAA52A54A65';
wwv_flow_imp.g_varchar2_table(207) := '6014FEEE924D3F3737579D3C79526FF84D9A345177DF7DB7EAD2A54BFEC4CD1A1631BDF87B3DC8EC0401412079048400248F5942DF60F33973E68C3A7DFA74848DAA448912DA0370D5AA556AE4C8916AD6AC59EAFBEFBFD77D8906202148CFBB08530A1F';
wwv_flow_imp.g_varchar2_table(208) := '5AB56AD5D4C30F3FAC060C18A02A57AE0CDEA9752ADF12040401412020080801C890A07FFCF147B565CB96C8BA75EB22FBF7EF0F952A552AC446BF79F3663567CE1CFEA64FB0D2EC41006CDBB66DAB3A74E8A05AB56AA59A356BA6CA972F5FA073710EB4';
wwv_flow_imp.g_varchar2_table(209) := '076BE945101004FC818010800CC911FBFEF4E9D3236FBEF96678D3A64DAA489122A162C58AE5A0B23E74E890C217409C00ED05BF4C9932EAE28B2F561D3B76540F3EF8A0BAF6DA6BF3FD01B893F804D88BB7F426080802DE4640084086E477FCF871F5FA';
wwv_flow_imp.g_varchar2_table(210) := 'EBAF47860D1B16DEB56B1777C104F093779AB48C228033E0030F3CA0BA77EF9E6F0E2856AC5846EF299D0B02828020E035048400D820312B6733340013274E8CFCF9CF7F8EECD8B1C32000053201E198265A80F4046038F799712C57AE9CBAE69A6BD475';
wwv_flow_imp.g_varchar2_table(211) := 'D75DA73FCD9B37D744401C01D3C35ABE2D080802FE424008800DF2B42200478F1E5553A64C51CF3DF79CFAFCF3CF6DB88B74912C02975C7289EAD9B3A71A3C78B06AD1A2851080640194EB050141C0D7080801B051BC10019CFFD8FC71F6FBF0C30FD5E4';
wwv_flow_imp.g_varchar2_table(212) := 'C993D5575F7D65E35DA4AB58085869543A77EEAC7EF39BDFA876EDDA090190A523080802828009012100362E0736FF2FBEF842CD9F3F5F2D5DBA5427FCD9B973A74EF8232DF308581100FC007EFDEB5FAB1B6FBC31F303903B0802828020E021048400D8';
wwv_flow_imp.g_varchar2_table(213) := '282C3CFBE7CD9BA75E7CF145FD536CFC36829B42572459EAD1A3871A3A74A8BAFEFAEB4503900286F215414010F02F0242006C942D277DD4FED8FD3FFDF4D3FC9EAD1CD56CBCAD7415030108003E004F3EF9A410005925828020200844212004C0C62541';
wwv_flow_imp.g_varchar2_table(214) := '8CFFECD9B3350158B264898D3D4B57A92020042015D4E43B8280201014048400D8286908C0DCB973D50B2FBCA0162C586063CFD2552A080801480535F98E2020080405012100364A5A08808D60DAD09510001B40942E6C45C06BD928BD365E5B851580CE';
wwv_flow_imp.g_varchar2_table(215) := '8400D828642100368269435742006C0051BAB01D012FD5A4F0D2586D1754003A140260A3908500D808A60D5D0901B00144E9222602E96C8E54B1246A888AA0840FD3286BED64332A6B5249936C9A942997EC994E4A24F3F716026023C642006C04D386AE';
wwv_flow_imp.g_varchar2_table(216) := '8400D800A274618940BAAAF11F7EF841AD5FBF5EAD58B142EDDBB74F6FFE6CBC4E6DB86CFE8C8976F9E597ABD6AD5BAB7AF5EA2555AA3C5D4C64A9651F01210036622E04C046306DE84A08800D204A177109001B5F22353DD8DC8D0DFEE0C1836AD2A449';
wwv_flow_imp.g_varchar2_table(217) := 'EACD37DFD4A5C18B1429A258AF4E12803367CE288840E3C68DD57DF7DDA77AF5EAA5350134433B100D86315E73A8B3537390A59A3C02420092C72CE6378400D808A60D5D0901B00144E9A25004D8F88F1D3BA60E1F3EAC4E9F3EADAFE5341FBD09721DBF';
wwv_flow_imp.g_varchar2_table(218) := 'A76475D1A245757D90D75F7F5D4D9B364D1D3972C455285F7AE9A5EA8E3BEE50FDFAF553B56BD7D6260A4C15E639E5E5E5E931F38C5D78E1859A284062A4790B01210036CA4B08808D60DAD09510001B400C601756C5BD62C1C0C918353E993F8D9A1FAC';
wwv_flow_imp.g_varchar2_table(219) := '3B2B7B3E1B68F1E2C5F5DF0E1C38A0D6AC59A3B66EDD9AAF7A770BD4A54B97D6EA7F34016CEE6CF6869F823146C80E73C75CD0B1634775EDB5D7AA5FFCE21771C912178886C02D92564A08808DB2100260239836742504C0061003DA85D99ECD4617ADE2';
wwv_flow_imp.g_varchar2_table(220) := '67136323E7E43F61C204357AF468B576ED5A8D161B28A7612BB380911E9C3E737373D5D9B36713321F64530C8CB158B162FA63982DA2E762D437A95BB7AEAEB6D9BF7F7F55A54A154D0A6261253E02D9946262F7120290184E095D2504202198B2769110';
wwv_flow_imp.g_varchar2_table(221) := '80AC41EDE91B15E6CD8F63DCDEBD7BB5A31EA75E3676367E36794EF3BB76ED5253A74ED529C00F1D3A94120E6E49159E4AED124C1A14DCEAD3A78FAA53A78ED616F01EE4271F1C1B312954AF5E5DFF5B9ABB10100260A33C8400D808A60D5D0901B00144';
wwv_flow_imp.g_varchar2_table(222) := '9F7711EF54CA09FF830F3E503367CE54DF7CF38DB679F3C18E0F19C036BE7DFB76F5F5D75F2B9CE8526DA96CBEA9DE2BD6F752190338B0B9D7AC5953952F5F5E9FFED16A409CC0031342870E1DD49D77DEA92EBAE8224BF57F3C19D83D4FE9EF67048400';
wwv_flow_imp.g_varchar2_table(223) := 'D8B81A8400D808A60D5D0901B001C40075C146C4A9954DCD681B366C50C3870FD7DEFA68000C95B8F9D46E9C76F94E2A9BA8D7218608F189D664600E404BD2BB776F5D90AB458B167AAA06CE86B3A4F80438B7028400D888BD10001BC1B4A12B21003680';
wwv_flow_imp.g_varchar2_table(224) := 'E8A32EE29D3477EFDEAD366DDAA455F986B31E4E7AEFBFFFBE5AB66C595C24DCA2CA8F3B501B2E4874AE5CD7A4491375EBADB7AA060D1AE83B1B9A01FE5FB56AD598D103E9245AB2618A81E84208808D62160260239836742504C006107DD4453C028027';
wwv_flow_imp.g_varchar2_table(225) := 'FF1B6FBCA156AF5EAD4FA9D8F939F5E3038029405AF20840002EB8E00255B9726555B66C599DFD108D09A4E0AEBBEED2E601320E5A352100C9E39DEC378400248B5821D71B04E09FFFFCA7FAE4934F6CEC59BA4A05014E713D7AF4504F3DF5946AD3A68D';
wwv_flow_imp.g_varchar2_table(226) := '841FA502A20FBF6338AAB1B9A3EEC7398D0D7EE2C489DA9B9F533FCD506BA3CAE693E8A9D78790A53425C31C62444CF093C8075AAD5AB5D4DD77DFADFAF6EDABAA55ABA6C30CF11D80B4134E6836C3A47473F952420808014808A6C42E8200E02CF48F7F';
wwv_flow_imp.g_varchar2_table(227) := 'FC432D5FBE3CB12FC9551945A05BB76EEAD7BFFEB5BAF1C61B8500641469F7741EEFA4CF2914953EC978D8783899928C67E9D2A56AE1C285EAF8F1E3969309A27D3F1DA91686178983AEBBEE3AD5B66D5B55B16245AD19C02780B0C2962D5B6AE7416999';
wwv_flow_imp.g_varchar2_table(228) := '474008808D18430066CC98A10900C941A4398F801000E76590ED11C4230084EE8D1A354A87EF618F4653C409FFE8D1A39A0818A7D46C8F3B48F743BB42D440850A15B4A685A801420A31093CF8E083AA61C3864182C3B1B90A01B0117A548A8B172F56AF';
wwv_flow_imp.g_varchar2_table(229) := 'BDF69A3601F022323C646DBC8D7415070154BCA8133965DC74D34D3AAF79B366CD440310C09543C21A52F572D267A3675D60E31F3972A49A33674E001171EF94D11870FA7FE4914754FBF6EDB5460079610EC08F00D380D31513DD8B5E6A231302901A6E';
wwv_flow_imp.g_varchar2_table(230) := '96DF62B1EEDCB9537DF6D9673A2D28FFC7BE288BD6469013E88A131C2F7C5E18575E79A5DEFCF13696E63F040A3BED73AA27DDEE82050B141EFE3C8B6C263CA3980076ECD811131051F76766AD14862BEFC94A952A697F1D9E5B883CA601320C62C2C371';
wwv_flow_imp.g_varchar2_table(231) := '501C06ED958B10001BF1E465842A0B4D80515A53625C6D0438C1AE8CEA6CBC50702AE2A5C1E94F9AFF1030A79D35D2D0F2CCA179439D3F65CA143576EC58B56EDD3A4DC4590B1044CC75C633EA3F54BC3923E40641C314C0F3CA7B9443D455575DA5060D';
wwv_flow_imp.g_varchar2_table(232) := '1AA46EBFFD769D55D0EC9469E412908881D4642E042035DC0A7C2B9ECDD1865B481736202072B201449776812D7FFFFEFDDA9B9F933E1B3D27FD77DF7D57DBFA29BE63D5E4A4EF0E81161661012120D5B0B93A21E40DB3C025975CA20983B4D410100290';
wwv_flow_imp.g_varchar2_table(233) := '1A6E9604805FCA89DF064033D4859C1232046C16BBB5AAD4C7EF48D3FBDE7BEF45F0E4C7FC53BA74E910A7FCCD9B37AB6DDBB6E597EA8D1EAA10802C0AAF905B152607B4399804A85048C4069A010A15356DDA5487F9F237A309C94F4E9E420092C34BAE';
wwv_flow_imp.g_varchar2_table(234) := '160404019721804A7FC58A1591E79F7F3E326DDA34D4C621B8B851910F95B134EF22604EBFCC068F3CD1F01042488E8F9B6FBED9BB937378E442001C1680DC5E101004E22360A5BD61E3FFF6DB6F753C3FF1FB93274F8E90C4E7DC860F0928D0E4B41F1F';
wwv_flow_imp.g_varchar2_table(235) := '67375D112FF1128EBDF80574E9D245FB09905008D217AB8906F07C648400B869C5CB58040141C012012BD52E097B70F2E3B37EFD7AED0380FA5F5A3010C06110A7406A0A600AA0E2E0C5175F9CF0FA09064A85CF520880AC02414010F01C029CF209B71D';
wwv_flow_imp.g_varchar2_table(236) := '3162847AEBADB7B447BF9924987D053C37391970A108446B72F00BE8DAB5AB7AE28927741E018801E1835C473401FF17DF2C6B488500C8C326080802AE42A030552D6A7F8AF310DFBF64C912357BF66C45C95E731355BFABC469EB60CC1BB999F0E12088';
wwv_flow_imp.g_varchar2_table(237) := '16A07EFDFA10C1088E8244085C73CD35EAF2CB2FD7FE20461347C19F452204C0D6E5299D09028240BA0814460050FB7FF8E187BA6ADFAA55ABD4F7DF7F1FD3C33FDD71C8F7BD8100A480A45F6CF8FC3C7DFA74F8ECD9B311A204EEBBEFBE50A74E9D72CC';
wwv_flow_imp.g_varchar2_table(238) := '0984C4174008803756B68C5210083002D8F349E37BE6CC99086ADCA2458B86B66FDFAE55FE6FBFFDB63A74E8503E3AF11CC6020C6310A74ED847A46AD5AA917BEEB927E7F6DB6FCFA953A78E8E1C8876120C3A19100D40101F0F99B320E03204ACD4B2FB';
wwv_flow_imp.g_varchar2_table(239) := 'F6ED8B2C5AB428B265CB16B4BAA192254BE6E0F54FAC3F260073263F21002E1368968613C3DC138100B0E1376AD428D4B66DDB10E985F10FB8ECB2CB0A8C4C088078CB6469A9CA6D040141201602560460D9B265E1E1C38787972C59824D370702909797';
wwv_flow_imp.g_varchar2_table(240) := '17422B40911F89EF97F514030108806EC58B170F515A989C010F3DF490EAD4A99310001302A2019067481010045C83004400BB3E99FD3EF8E083F0983163C29B376FE6859E73EE931FDF2FA77ED788CD5503B1D20A54AF5E5DDD7FFFFD3AA5708D1A35C8';
wwv_flow_imp.g_varchar2_table(241) := '145968CE00574D2883831102904170A56B414010888D80D5A99FF4BD73E7CE551F7DF4518430BF75EBD6454E9E3C69108002C97DFC44009C9A8B1F2326ACE6847320C9825AB468A12B0B76E8D0A140CE80A0460608019037B4202008388240F44B97CA6F';
wwv_flow_imp.g_varchar2_table(242) := '5BB66C512FBEF86264E2C489EAE8D1A3C6B8CECBEAE7C88033785373789B51E1CEEECDD9E8CF48A76BD8BF8364052E57AE9C0E177CECB1C7D475D75DA7F30398710E5ABE002100197CA8A56B414010888F00B67CD4FE78F87FF2C92778F8473EFDF453BE';
wwv_flow_imp.g_varchar2_table(243) := 'A8377EA74EC7F1476EFF15A8A6515713D246C11BF21ED8E1EB00A9C0033E2F2F4F474F7CFDF5D73AC2C2CFCD6ADD188585060E1CA8FD016AD5AAA5F01188955FC0CFF8E8670BF75A2F4C32A82A1A2FC846C6681F027E5FE7B152FA92CB9FB2BDA8FD77EC';
wwv_flow_imp.g_varchar2_table(244) := 'D8A10981D75BB2277836E92A55AAE894B637DC7083AE7C47463B48403ADEEA7C173281573C2616C8D5E4C993D5A64D9B9282D88B44CC4A06E070C51557A8ABAFBE5AF5ECD953DD7AEBADAA64C992F958F8FD19340BDD3304C03C680464A8B1CC2784A456';
wwv_flow_imp.g_varchar2_table(245) := 'B35C2C08388C80F945C38B8A0D20888D72BD23478E54AFBFFEBA3A70E08086C023E79284C465AE6667B521712AA7713AC53E3D74E8505DE18EF560270EF477E6CC19B572E54AF5FCF3CF2B2A271AFDC72BA26387162221B0B274115894285142DD7BEFBD';
wwv_flow_imp.g_varchar2_table(246) := '3A8530190483D85C45001265B9D806A900B673E74E5DFC03761BD497671017AD5FE68CCD9B176B850A15B48312C94AAC5EC47E3891583DDB6CF69C42972D5BA6A64F9FAEE3FB0B9C4E42215B37403BD74DA2A761AE43BE8D1B375654AFE35D65C8DD180F';
wwv_flow_imp.g_varchar2_table(247) := '277C36664EA664AFBBE5965B54DDBA75ED1C6E81BEF6ECD9A3B52DA45246C3C0E9D7C8978F9C588386F961DFBE7D5A46145A4AA425ABD9E551FC0000200049444154F548A44FBBAEB192D9B5D75EAB7D02F00768D4A89136BD04296DB02709008E42FFFE';
wwv_flow_imp.g_varchar2_table(248) := 'F7BFD59C3973B4A3101E9EB039698280571060E337D4BB6CFC7DFBF6D5214A65CA94396F0A7E24006C821F7DF4914EE9BB78F162BDC19813FBB85D8E891200E6D1A4491352D2EAD33DEF2AD4F0CCDF68C8172D001B4FF9F2E5B519C06A1DD8850979F2D9';
wwv_flow_imp.g_varchar2_table(249) := 'D8F105E0BE1C9E8C031463A180CEB994BA9A9CA1998926675663490613BBE6926E3FEC1B54102449107E0137DD74939EBB5936FCDBAFCE81AE220000CD02E44570EAD4A908A77B3280013E8B1261B178172C58A05E79E515FD02A1190E2EE92E06F9BE20';
wwv_flow_imp.g_varchar2_table(250) := '902D048C973E3F29694A5DF3418306692D80712264BDB311F8AD9A19F3DBBE7D7BE4ADB7DE0ABDF9E69BDAF9CF685EDC4438B9E3BCC7A999F143EE0C19223F3695C71F7F5C9FEEB9864D37964A9DEF43048C93B49D1B8FD99CC0FD638DC1FC3EDDB871A3';
wwv_flow_imp.g_varchar2_table(251) := '1A3E7CB82EB98C5F06DA02639E8C0D2203914583E1253341B4A6A252A54AEA9E7BEED12480C242EC3741688E138068D5200FC7CE9D3B23CB972F8FE0A90AF92A56AC588897218B8FC546ED6F367F4C00D20401AF23C006824352FBF6EDB59A1892CB0602';
wwv_flow_imp.g_varchar2_table(252) := '1968DDBAB53EA1984D5C899ACA9CC6C54A7381DA7FCD9A3591A54B9746E6CF9F1F5AB3664D8867DACD04201E29C17EDCBC79737D72A77180E1F0C2A6C869928DBF73E7CE5ABD9C4CB35BCEA968928E1C39A2E6CD9BA71D07891AE03D6C1CC6202A686E28';
wwv_flow_imp.g_varchar2_table(253) := 'CAF4E5975FEAF9C6D20CD8E9CB900C86B1AE8D26003C5FCD9A35D3F901AEBFFE7A2D4F88B9B9D92D0F3BE6916E1FAE2300B0C819336684478D1A15C6CE4FEACF62C58A1531D45446C8100B33D6824B1714F9BE20904D0458DB787C632BE6E5CAA98A1714';
wwv_flow_imp.g_varchar2_table(254) := '9EE00F3FFCB0564F468729D97932CCD45CAD5E9868EFC68E1D1B5EBC7871E4DB6FBF0D91E2D76D9B43341E85D9B53994F4EEDD5BABF821021C600C1B3FEF2A3649647BD14517E993B3932D950D0C227AF8F061BDF93337C35995B9A099DABA75AB36E3A0';
wwv_flow_imp.g_varchar2_table(255) := '2130E56D70729A29DF1B227EC10517E8B4C10F3CF0800E138CF607F0C273970C008E130006CBC28431631BDBBF7F7FE4EDB7DFD6294029FC712EFDE7CFC59C93999D5C2B08781881060D1AA8C18307ABAE5DBBEAD3A557D397529AF5F4E9D39183070F12';
wwv_flow_imp.g_varchar2_table(256) := '7E16193162840EF53B17E7EF99D007363C62C651EBB3B9F3CE4263D3AF5F3F75D75D7729D4C8F15A2A9B70BC3E33F1F744C7C9A63F61C2044D02BEFAEA2BAD216093448BC521CD4B7E1D068E975F7EB93607E093439E009E3B64EFC7E60A020063FEFAEB';
wwv_flow_imp.g_varchar2_table(257) := 'AFB5DA9FCF8A152B74B5AFDCDC5C230358CC97443CF59C1F8526730A06029C1CAFB9E61AEDA1DCAE5D3B6D0EE084E225B5241BC9DEBD7BC3AB57AF3E4B719F254B96E4AC5AB5AAC8E9D3A70D529F9FECC74D9A00ABF74AC58A15B52A1F99B021509008AD';
wwv_flow_imp.g_varchar2_table(258) := '0DAA633CC8CDCE63562B341515BC532B3D5102C0BB1B932CA185DF7DF79DDE2C2147686F3FFEF8E398665AB7BCB7ADC6811CF103E079431B8049C05C45D04B728CB77E5C4100B0012E59B244ABFDE7CD9B173976EC18E362D3E7E5E0FB34A0F184247F0F';
wwv_flow_imp.g_varchar2_table(259) := '2E02BCA03859721A79F4D14755C3860D3D4500501BAF5AB52A6FF4E8D13FCC983123F79B6FBE291A894408D971BD56CFACFA47E54D281F31E3C4E8B3D171CAA5A13AB6AA351F8455CB66C8FBDBF0E300077021A3238EDA9000088171822ECCF9D06D78E1';
wwv_flow_imp.g_varchar2_table(260) := '7B834F006638FC738C2604C06649C1A467CD9A15F9BFFFFBBFF08A152BC246E52FEDFEEFB3A420364327DDF910012B9B33F1CAA825B14BA276F68A390002B074E9D2DC3FFDE94F673FFEF8E3BCBCBC3C36FEE2A150289F00B8E9E41FBD9C900527422AC8';
wwv_flow_imp.g_varchar2_table(261) := 'E1CD4FE218C2FABC7EC24FF7B189B709E21B3076EC58357BF66CAD2921073FFE049875093FE4DF6E6B56CF5DAD5AB522F7DF7F7FA457AF5E91EAD5AB874A952A95E3B42F879DB8B9420380ED9F85F2DC73CFA12234E697E31635919D804B5F82403C04AC';
wwv_flow_imp.g_varchar2_table(262) := '5E44D89EAFBCF24AAD6E269E1CD564B49772BC7EB3F1F7E88D8113DFDAB56BC37FF8C31FC2B367CF26B41752CFB3ADCD7A4E6FFE85BC63748A744C2E9C02BB76ED1A42F54F821E36B3582D51D579366491C97BC42300C78F1FA792A3F6F5C0C915C24A89';
wwv_flow_imp.g_varchar2_table(263) := 'E759B366E9306E73AA67B7BCE7AD9EBB52A54A85EBD7AF9FDBAC59B3BC366DDA1469D7AE5DD1AA55ABE6EF4D99C4381B7DBB8600CC9F3F5FBDF0C20BF9B1FDD998BCDC4310F01A026CFA389D3DF8E0839E485FCA498F6432CF3DF71CD13DDA71CECD8D4D';
wwv_flow_imp.g_varchar2_table(264) := '2014D2AF455D26850DFFC9279F0C0D18302044921E69892100767CCCEA7F08C06BAFBDA6F30A908DD0230D55C5D952A54AE5F5EBD7AFC8134F3C51BC4993263A2ACD0FCD110210CD92F114C566346CD8305D0B5C9A2020085857C1E3F479DB6DB7A9A79E';
wwv_flow_imp.g_varchar2_table(265) := '7A4ADBA4DDD0AC4EBD6CFCC4886FDEBC59679123D5EFDAB56B5DA3FAB53AED41AED0B2B0D19F397346130042FB48D2D4A64D9B02BE484139E927BBBEE26906C8DF421AE2E5CB972B6A4044870E16167299EC5852BD3E2AE496420DB9254A9408F7E8D123';
wwv_flow_imp.g_varchar2_table(266) := 'E7F7BFFF7DB1468D1A15D04E7B3934D01504C03825FCE52F7FD12A2269828020608D00F1E477DC7187AE671EED10E81466562F7DECBE93264DD255E7F0082701108E624EABFC0D8CAC361A4C2BFDFBF7D7C4CA086523E48FF2BC8984F83985BF97EE8BEA';
wwv_flow_imp.g_varchar2_table(267) := '9F046F987A091F841C9A4305DD620E30618A29285CAA54A948DFBE7D737EF7BBDF856AD5AA65B8A7E5AF67AF9200470840F482C55EC4C68F6A88B2A0D2040141C01A013622CAC50E1932C4D52600CAFAF23C93EAD75CFCC60D273C2B6409F123961F6265';
wwv_flow_imp.g_varchar2_table(268) := 'A463467DCD78490663AECCE7D597BD53CF941541247320F55C581FE732BE323CA334BDEB22BF886EA048139138840716563DD1299C53B9AFA304800C5314F6D9B0618366828B162D2A90173C9509C97704013F23403A590800A1496E2B614AF8172F734E';
wwv_flow_imp.g_varchar2_table(269) := 'FCA87871EC2546DCDC9C240056A74B9CFCD0A4106581973FD917C9BF60D5E2A9B7FDBCEED2995B2C0D11F95E30F9F273E3C68DE143870E41008CD0EF7C12E006AD009EFFAC13F27190991387D09A356B164810E445B390A3048097C3C48913F5E91F6F51';
wwv_flow_imp.g_varchar2_table(270) := '54845ECC1C95CEC321DF15049241C0CD0480102F6CFDEFBEFBAE5ABD7AB5F6F47653BA6EAB8D841A0C146122DB223E005E09AF4C66CDB8F15AB42B1046FC44162E5C181E376E1CE9A1090167E3274434DFCBCE0D048031A005801C9224E8EEBBEFD6CEB8';
wwv_flow_imp.g_varchar2_table(271) := 'AC17A37991203A4A0038F1FFFDEF7FD72F0DB79C12DCF8B0C89804010301371180E813CFEEDDBBD5ABAFBEAA468E1CA943BE8CE68617B86905E953262F7312BD90D407730A44C0DCBC789AF3C2536285EBE6CD9B23A3478FCE9D3A756AF8E4C99339254A';
wwv_flow_imp.g_varchar2_table(272) := '9428429828A6616A10B8C56FC4C09774C7988BA81770D55557E9D4D04685442FC8A0C05EAB5D5D1D6A6489FAE31FFF789EDD1F7B9B974A4B3A049FDC368008B89900B0E98F193346DBFE39D9B9810044910FDE759112254A845AB66C1932D2BC92EAD51C';
wwv_flow_imp.g_varchar2_table(273) := 'DB9FAD935CB6EE93EC6392C97159118063C78E45C804BB7AF5EAC8C993274365CB96CDF9FEFBEF43A417263A0C1F1227D79295D9AA7EFDFA91366DDA445AB56A85F9483B06422ABDD64403E03589C978038D805B0880D526810960DCB8718A623FE652DD';
wwv_flow_imp.g_varchar2_table(274) := '4EDAFDA3160B2AE648CD9A354343860C09DD76DB6D21F08C97C33F530B2E885A865821A3C78F1F8F1039C25AA12226E9E0DF7AEBADF3B449999245B2FD162B562C5CB66CD948D3A64D2303070ECCE9DEBD7B0E8EA45E6B8E12007C000805993973A67E61';
wwv_flow_imp.g_varchar2_table(275) := 'E003E0F644215E13B08CD75F08B8850018A8A2A9C3CECFCB7BE3C68D3AEC6FDAB4691400720BF05AC3999393132959B26404FC6EBCF1C6D0A04183D000B822B69F132E0ED154CFE3FD8706345B910646B21ED4DA84989203215B95EFE2691A481C45E220';
wwv_flow_imp.g_varchar2_table(276) := '9C04A924897F98830A6BBD9E4D64568707523970E8D0A12148801743451D2500548F220A002240B6307C022829294D101004AC11701B0160F3278A07552D2A5B220070E825BDB753CDA4F6D72F693E9CF29B376F1EEADCB97311BCB8A9DE77F1C517E713';
wwv_flow_imp.g_varchar2_table(277) := '80789B512A7349F4844F321C12E4F0FE63A3E304CC869C8D86FC2020952B57D6298F318714160561173149046F48A4B13718112566A7D26CFB9658989354EDDAB5234F3FFD74E8CE3BEF0C5119D26889CC2F1BF28D770F47098031381C3D10B0E4018827';
wwv_flow_imp.g_varchar2_table(278) := '2EF97BD011E09481F7B15BC200F1F49F32658A1A356A940EFD7383EF4ED48B5A6772A3A8CB7DF7DD57E4EEBBEF2E4A51976CAC238300F093A248666CCEA51CD6A76D0E4154CE43E54DC2241CCA4A962C998D216AAD2B63E3247BDF7DF7E98808121F919C';
wwv_flow_imp.g_varchar2_table(279) := 'CD183F1A09230F825D042099C97DF1C517DAB7848831B36629DB04C06ACC84E2923B82EC9C907321000948369A194B26C00440934B0401A5B49AB66FDFBE96A5819D00880D64FCF8F1EA1FFFF8874EED6A3437BC9CB1F7972E5D3AAF7AF5EA6192B7DC79';
wwv_flow_imp.g_varchar2_table(280) := 'E79D453A76EC58208F7BA2A7F454B1A57F48D2AE5DBBF2ABE0914486533E21646CBEA4487EFBEDB775E95CA71AF2EAD1A3875E5BD43F605CA8DCC9930039A01855369AD5C99953FF871F7EA8334B92600A675383B864634C85DD036C8824E1835609828E';
wwv_flow_imp.g_varchar2_table(281) := '5CBD522BC0110D40F443C74243FD452D803973E6382D53B9BF20E00A04AC3651BCD5FBF4E9A37EF9CB5F3A520B20FAD9E5FF9C5C49E3BD69D3A602B865DBF92FDA3ECB4BB84D9B361A2F0840AD5AB5722EBCF042DBEDFE8591084EFD9CF039BD622261E3';
wwv_flow_imp.g_varchar2_table(282) := 'C25B1C02C0499FBF531E97F2B9FBF6ED7374DDB199910511130031FA10154A1F831F8992AC5A2654DD5678E2600A8E988AF119034B27CD4C0616C892FC112405628D75EBD64D356DDA54CBD70BCD1102100D0C82C406F6FCF3CF4B35402FAC1A19A36308';
wwv_flow_imp.g_varchar2_table(283) := 'A066245FBD5BAA0162BE63737BE9A597B42F804B9AB6FBF362BEFBEEBB731E7CF0C11C36B66C9CF68D0DD13801F27F9C22FFF9CF7F6A67369CFC0C626726485CE706073733E98400901F61E8D0A1BAFE84E197609832B279CA3564874F006B8D6453D185';
wwv_flow_imp.g_varchar2_table(284) := '849C5E7BD75D779D2ED245CAE06C9970D29DB36B08003E00CF3DF75C982211463A4897A811D3C558BE2F08248580D5C91907232AD571BA201D29296BD9E09C6AD8AA71F6C3E98FFAEEA8AF9D28F16AF18E8854A8502152B76EDD08A7D66EDDBA855AB76E';
wwv_flow_imp.g_varchar2_table(285) := '9D832ADB68E99C5A0B23119C9A716226CF3D5111381EB2E1E31B41740427FC789B7CB6DF79F1EE47B2243634D61BF3E1B00611602D62FF8E75D24D07E3C2E4F4E5975F469E7BEEB9BC37DE78238236C5C81AE884B6899B9BE589B6E477BFFB9DAE1E696E';
wwv_flow_imp.g_varchar2_table(286) := '99269EE9BC035C4100785866CD9A1519366C58F8D34F3F35F241537251ABEBE23D34E90020DF1504DC8680D5CB8CCD8CF4A31D3B7654D5AA55D32F63270B9250BB8353189B3FF66DECDCF8F264BB597966E3E57FCF3DF7A8F6EDDB63BF0E6193B5CB79AD';
wwv_flow_imp.g_varchar2_table(287) := 'B09739AAFCF7DE7B4FDBAA2102A887D92C09EFC3790D82E0B5C6064F840031EEF8054000209E38BD8131618356CD0E0260D5EF860D1BF2FEFEF7BFFF3861C284DCDCDC5CD205132E5134DB04C06A6C98009E79E619D5BD7B772100C92C74981C79A0478F';
wwv_flow_imp.g_varchar2_table(288) := '1E1D9E3B776E842410E772411B852192E94EAE15047C85008E45D861A94486A3911B4E17EFBFFFBEF6D9C116EB96FA1DC4FA7362BDFDF6DB4360459A56B39ADACE9318277B364342E850F742C6C8833076EC584D8CD8F4B937BF47656E8E00F0C281C6BC';
wwv_flow_imp.g_varchar2_table(289) := 'A11AD5108D7910B940240A29942990C3B586CF0069713319C2B879F3E6BCD75E7BED87499326E5EEDCB933271C0E43008AB9E18187A43FF4D043AA67CF9E3ACDB493043D513C5CA101E021DAB56B5764F9F2E59165CB96453EFDF453ED197BEE44619001';
wwv_flow_imp.g_varchar2_table(290) := 'CB39C55361250A845C2708B80D019CB1B0C172A245ED8F439B59956D68C7EC3ADDC69ABFD5698E025EA4F15EB56A55FEC93F5BCFA2D5690F8D48B366CD34569CFC49F3CB6664B4744EA456DF45EB816A9F9F6C889C94A9858029044FF558E1906E38A926';
wwv_flow_imp.g_varchar2_table(291) := 'B2CEE3C9927549DE801A356A6812C4A76AD5AA8AD4B838C4658AA41E3A748894C1B9CB962DCB5BBA7469E8B3CF3E2BF6DD77DF513C48B778E34E64EEA95CC37DAB54A9A25AB468A131A05A6083060D1C35D325320F5710001E304E1130EA7DFBF645264C';
wwv_flow_imp.g_varchar2_table(292) := '98101E33664CF8C081039803106EBE801399945C2308F801016CAC83070FD695EA78B93A55A9CEEAE43C7FFE7CF5D7BFFE15CD9D2B34009CF6397D11CA86A3249BBF5D4E6AB1E64FEE03AA1EB2F9E1D18F5680933FE610BF370817A1819CF6993F18B1E9';
wwv_flow_imp.g_varchar2_table(293) := 'E19C8A277CA648695E5E5EE4F4E9D311A202701C1F3D7A345A2823B2232BF91D62C9D608EDC4640209C56407217573739C00443F5C30E7193366E48D1A352A8C4A2D2F2F2FA768D1A2450C351476287C06F0007553A951370B59C6E66E04D8A8D8B0B0A7';
wwv_flow_imp.g_varchar2_table(294) := 'F242353CC56FBCF146AD66E525627EA1DAA9CA4E06195EF4C6B387D32EF1FF6C804E9900C00452C4868F86040210FDC2B5132BDE4D54A8C301123B3F9B8FB9E681194BAF9CF493917FBC6B09231C3870A07682BBE28A2BF49ACE645A611C50478D1A15C1';
wwv_flow_imp.g_varchar2_table(295) := '1C452AE5E3C78F3B4200A265CD5E8576E437BFF98DFE99296D483C7924F277D7110036F81D3B764456AC581146BD16894442C58A15A344A4B6B5E12F402808AA36FE1EF4872E1121CB35EE41C04A45C9BAC683985303277D23C909A16BA466C5072053B6';
wwv_flow_imp.g_varchar2_table(296) := 'EC449161F3E3D485790ED5371B3F617F6C863CB3996E561B2AB8192A7FD4AECD9B37D724CA0EB264A5F6E7D0B170E142FD21A40F557F2CF2E3942A3A9372883727C858BD7AF5B40A1C130C262B4EC3562D59938C1591838C2203CCC638A32E5AB428742E';
wwv_flow_imp.g_varchar2_table(297) := '3240DF325B242CFA3EAC4B9EE5679F7D566361B464E79C49591A7D3B4E00A227693607F070E1D8030940BD02B0389BB0F9933AD39C392BDEE2CC0698720F41A0100474744B2814D22569CFBD0CB493EB39AFEA08056A08AFC2F78575CE7A374E51FFBFBD';
wwv_flow_imp.g_varchar2_table(298) := '3381B6A2BAD2F0B98FC938A062828008B4480035B48AA80C22A0808C020651401C508921E08C6DDAF4EA4EEC768A098344890C511015941964560603222A0E515980512448CB2CA23C8457BDBE9357AFEB15F55EDD5B73DDB7CF5A772152E33EA7CEF9CF';
wwv_flow_imp.g_varchar2_table(299) := 'DEFFFE77582ED56C7B8C6742E807B73779ED8001532E36DB6BF839CE693227FE4C8884DAECC45F71C307D5EC9335DE0F000F39E814A941B33F09B2C741BD6F50D7A19FC818C02383F78A3F01AF80446C6ACA0A07753FAE4B7A25D91748C9231664F64B54';
wwv_flow_imp.g_varchar2_table(300) := '00C0FE2E84473A76ECA8EEBDF75E0D82040064D9DBD9BAEB901CC5FD386FDE3CB565CB16CA481AC59D2E590359DA5A0E8BCD02879452DF2AA57EA85CB9F271356BD63CB179F3E655FAF5EBA77AF5EAE5589A36093B07167B16C0871F7E586BFF97EC20FE';
wwv_flow_imp.g_varchar2_table(301) := '99A91B59AA2E0B88A9BE86778438EB95575E59AA33B39D47B219015C8B9D26AEFE254B96E872C756C123D97838EFB41B366CA8060F1EACF92B279D745211E57EAB54A9423546D41809EB6663FE638EB16650586D8F4786BEC113002088532A98F1494600';
wwv_flow_imp.g_varchar2_table(302) := 'B2CAA6570FEF489000D593F11C4E4A940720DB0F17B220D299B821972D5B7674D1A24545BB77EF360983A21F10D4E890EB046601CB6E04BDD74D4AA903175F7CF1E9DDBA753BFBA28B2E3A95742AF2FB9D76FA710000FB3DF93BC0FBB7BFFDADD6AD37DD';
wwv_flow_imp.g_varchar2_table(303) := 'FE512F800822A1B8466C15973FE43F6B1116138C78F19838D919A5433C8DC8CFBEF7DE7BEAD34F3F2D45F28BFAFD031B90015EC869A78DE78A4C01B80086611C292C2C3C8CA7AB4B972E95DBB66D5BE584134EF05C89D1696C42BEC44345F6180455AA53';
wwv_flow_imp.g_varchar2_table(304) := 'C20B88A3C101C00B0208E2BBC60B0210B087F2E27836FB3D1305007235084060E6CC99479F7AEAA9A3EBD6AD43FEB392611840CB58C820B93EBF1C5FF12C90C964361B86F1CE19679CB167E8D0A1F5AFBFFEFA0B1B3468109FA45F965D003111D21572DD';
wwv_flow_imp.g_varchar2_table(305) := '68FFC721FAC3A3029210A06177C9E2127663C1C7ED3F65CA14051890969D050005266FE5E8D1A387955285B56AD5326EBDF5D62A43860CA956B76E5D62BB81670BC049993061827AE69967D4D6AD5BB37BD8108F226D1762E4B061C3749D85A03253827A';
wwv_flow_imp.g_varchar2_table(306) := 'E4D400002774CE24B469D3A6A3D3A64D2B5AB16285B169D3A6829D3B77562A2C2C140010D40891EB046A81534F3D755BE3C68D3776EAD4E99BDEBD7BD73AE79C731A57AD5AB5A4D45A1CBBFDF25E101E0E93EA962D5B340190B01B2A805110FF782EFBEE';
wwv_flow_imp.g_varchar2_table(307) := '1292246C7F7E41955FB52F44FC7DF7EEDD3A9E8C3439210F888FD616577C39D0C118C2C5CAF0882011090828EAD4A953A64F9F3E955BB4685170E69967563AE594530AFCB8C6ED7DC79A00607BECB1C774D5C0A8FBCCFEFE843AFAF7EFAF468C18A1BD55';
wwv_flow_imp.g_varchar2_table(308) := '4913074A0D00286BAC1616161AFFF8C73F8CF7DF7F9FC929C30F828E355614C238974B8A053C59E0924B2EF96EE0C081FBBB75EB76B85EBD7AC757AA540991FAC4960E63F1A7142B3F62DF4CAAA4C245D19C1613DCA837DE78A3AEC14EDD7AB379DD4D3A';
wwv_flow_imp.g_varchar2_table(309) := '012E62FEB8FDA74D9BA6D9FEC8F85AD9E551BC7B9EDD43135F9552474E3EF9E41FEAD5AB77B455AB56999E3D7B566DDDBA7595934F3E1949DF401A5E9A3163C61878AA0071A63738AE500DE0E6A69B6ED2D53B21F80A0008A49BFF493A323B1502201F28';
wwv_flow_imp.g_varchar2_table(310) := '0CE5D1A3476B452E61E8066468B94CA016E8DEBDBB3162C40883F4B5E2422A7AF2F3BA8005FA700E1783FCC68E6AD2A4495AE4C6FAAC71806CDCA8840020FF5901409076A0980FEF0BD7C1EA46965DBF772B17DBAE2893C9141A865188C815A180EBAEBB';
wwv_flow_imp.g_varchar2_table(311) := 'AE5ACD9A35030300C4FD9F7BEE39038D864F3EF9A40400787F727F6742FE03000C1F3E5C4200FE4C59FA6C27220869204F3EF9A4D607100010A4B5E55A5E2CE0B4EB80154D7E3044B6B873FBB379278ADAB09B025C5B73DEA35C0CD945E1FA27C71CB95F';
wwv_flow_imp.g_varchar2_table(312) := '52AB6059A344E7B53901AEAFBEFA4A7B3908712C5EBCF81891A3B876915EDF3129E7D9EC4628E007E482EFBAEBAE2A03060CA852A3460DCF8440FB3B9ADA00AB56AD424B260371937EB5AE0751F6236448D41149094413C17A6F2F44D5A0FB34F52100D3';
wwv_flow_imp.g_varchar2_table(313) := '20C86F82FAC68C19A351BB0080A0878A5C2F570B384D34B0811F7CF0415D5E35CCA229B93E6B59C753F277ECD8B17A471C17AB9A49B453A74EBA000D5AEB30ACCD023C5EDFD3090090E6C77B12F727F401E089C3CBE1F59D52721E646D033077D75D7765';
wwv_flow_imp.g_varchar2_table(314) := 'AEBBEEBA82EAD5AB973CBA5F4F18F33E1A1AAC076BD6ACD1C599C80AB056628C12BC3276E1ABC001088AB312643FE70D00607282FDC9640500900F37C86122D7F26301E27E2CF6A4B075EEDC59DD7CF3CD3A852D0D0060DBB66D5A60858914F19F381AC2';
wwv_flow_imp.g_varchar2_table(315) := '2AB8FCEFBAEB2ED5B871E3528B85F6F1166B117879364863488A13E77FE9A597742EB955DE37CAC5C2CBF3A7F51C52E420C7F5EEDD5BBBC6C99DB7C7C77301034E5C0E42C12FBCF082AECE08A1937E360589A2B21BEF853432DF3CC581C80A20F4E767CC';
wwv_flow_imp.g_varchar2_table(316) := '06F9EC790500C68F1FAF272BE100043944E45A7E2CC0874E6950A47E59F4D9C15E78E185AA76EDDAA1EAA47B7D66FBA4CBA24F4A153F3BABDAEB3DDCCEB32FBAFC9D0914CFC9D9679F1D1800E05D0917A22702D98FC246B88CEDBB456E281B0AB75ECBED';
wwv_flow_imp.g_varchar2_table(317) := 'DF01C32C887C13AD5AB5D22131C23C66CB351BC6E978167CEAC9D0AF7803E867C05D9429AC6401E0ED2064C58FEF9FF7061824A1E51500303D0002009230B4E419B000717E084F2C6054AA430C858F9F892129BB006B4FD90100AA6AE3C68DD3BFA83C00';
wwv_flow_imp.g_varchar2_table(318) := '7600C0CE905CEAFBEFBF5F4F9EE53D6F2EA38E77C53DCCBC41DC9FEC21160D59EC73B1A2B763F92EF08051BB0100809B9C308F5700608234FB37451807F22AFD4B78076E079A1651359E871D3F5E2CB20018C784B24E3BEDB4A81EA1DCFB0800484437C8';
wwv_flow_imp.g_varchar2_table(319) := '43E4AB0598E840FEEC5E7BF6EC9938211027BBE32665174CF11B48712FBFFCB29A3B776EE41C008012315408638027E492711707D58817F35EC81BAF5FBFBEE4B25192C4827A97345F872A820064A4B0117AA2CFFD84C79CBC0164043CFAE8A37A2C4755';
wwv_flow_imp.g_varchar2_table(320) := 'BDD20E6471FFFFEA57BFD23F36024968020092D00BF20C796B010000CCF5071E78402F62E6C496AB8B334A0341A0A2E22672AA88FF20B10AAF26EAF2DBB84E214B9232D9AC5933EDFE6712F5DA9C6C0EF1EF3FFFF33FA929AFEBDA4B0BD7024E9C0A52E5';
wwv_flow_imp.g_varchar2_table(321) := '10C90128E30D20CB038E80D7E6D4CF84021E7FFC71CD07886A1CDBDF955DFF2F7FF94BFD1300E0B577CB38CF4A02941040C0C695CB79B60000004D74086C7DFBF6D5ECF5A437B3DE3DC43FCAADC6D5BA74E9A2057F2EBFFC72BD2BA4E5420CB33FB77561';
wwv_flow_imp.g_varchar2_table(322) := 'E0BF71052F5DBA54FDE10F7FD071E2285DC371D934C9F705DC91264B9F534E38A8465FC3F1209D95AA81517900ECCF8FA763C89021BA822582564968E20148422FC833E4AD050000175C70811602A13A581A000079D3C44BC9FD872467B6A85DE3844CFE';
wwv_flow_imp.g_varchar2_table(323) := 'E33FFE43032893216E8DCF7BE150703E0B002A71681C2C5FBE9C7A22BACE4194E4B0BC1DF059BE98B5EFCC3E45EF810A8FF439E9B24135423D9000017AF4755C1C0F010041F5A8C375C40310A271E5D29E2D90560040F11B00001500AD0020ACC9D3095C';
wwv_flow_imp.g_varchar2_table(324) := '5C71C5157A3180215EAC9A5832797B59FC790FF80D801AAAFB4100243D8C5447E48DC37A37CF8327CF4FB4F739E098D2CEF439D90166F31B2E0300A0ED000760C18205A5AC1A659AA700801007B40080108D2B97F66C81340200D8FEE4C4C3FC2F9653F5';
wwv_flow_imp.g_varchar2_table(325) := 'FCFE7E4EBCFAEAABD59D77DEA9E3C27E4861D66720CE4FDD903FFEF18F5AEA57167D3F3D14ECB9903E0100F439E02FA86686001089C303604DF30CEA1ED95C07E96AB21D2404908DB5723C0600800680A50884BE4294082FC74796C32B8005040064DFC9';
wwv_flow_imp.g_varchar2_table(326) := '7CAB279D74922EF30B290C32180B02E43FD226BD34FBEE91DD20EEFEDFFDEE779A1066F56EF0DF0208BC5839987308019032DBB16347D5B2654B2DFAC4A2490A9D578F8FD9A7285AE2F159B56A9526B5F2F7A8952D19D7640050CCCA9A06E8D7C3E1C7FA';
wwv_flow_imp.g_varchar2_table(327) := '79C30120A607C223CE038B593E6C3FC342CE0DCA020200B2B724717ED8DF7025BA76EDAA177E6462FD28A7394DAE943626F50FD53F69C9B1008BBCA90DC0E2DFA3470FADA2476AA0B56E869727C6F3439807DE074000F0873050940D000019986256E81F';
wwv_flow_imp.g_varchar2_table(328) := '984D004000BD40CE32714B98CBB82DA34AF508E0D1E512796C81340200B2000801A0FE176508805D3E84490AA720111B54DCDF3ABC58046084C36FC01D0C27405AFC16B0F301E87B76CAF7DC738F16D0F102009C1656AAC692DE4AD1383240A26C281DB2';
wwv_flow_imp.g_varchar2_table(329) := 'F85F7FFDF5DABB81C723EE96371E00E23AC4F6607B22EAB161C30605D28F2BE523EE8E95FB27C3024907004E932435D5A74D9BA6468D1AA5DDE52226DD970000200049444154513526446492299CD2A74F9F40774878053FFDF4532DF54BCEFFDAB56BB5';
wwv_flow_imp.g_varchar2_table(330) := '2B588A8645D5BBE5DFC729544BBCFCA1871ED21E006BCB2515D43EBE49F5340981A80246D9487324A385F006DA20C883430C0C8ADFE2E55DF206009855A00E1E3CA83F728A40CC9B37AFA486B917E3C8396201BF16483A00707A3F4AAA42908B03003029';
wwv_flow_imp.g_varchar2_table(331) := 'DE7DF7DD5A2ED5CBAEAFACFE421B04AFC6ABAFBEAA331B9827C44BE8777487773E8B22000001AD33CE3823B01BB1517CFDF5D775A8985040948D10174447380D80000A5C4176F4236EE5F7F9530F009C763054F61A3D7AB4CE6546DF5B9A58202E0BA405';
wwv_flow_imp.g_varchar2_table(332) := '0098F9F12CFE9B366D5273E6CCD15E0062A651354200000058E0B849BD12FF785EFB2E91F700D01022E41DCD2624E1A87A37B7FBB05092058276FECF7EF63355A3460DC78A81B95D552942008B162DD259201002A3684E29AE905C19E7F05D78B7B85A5E';
wwv_flow_imp.g_varchar2_table(333) := '0200F27A9F7AEA29FDB10B00886B68C97DB1405A0000B1F08D1B37EA101AF2BF78D1C891271C105533010044290080BD3C6CB6CFE1B429C003004998D8BFF59D0400646BD5688F632C40084502DA9408061C9225E2A7E1F9410B0059E0A8EA3F380100B2';
wwv_flow_imp.g_varchar2_table(334) := '1DC808A0BE8500003F3DEA702E3B1852022105EEDAB52BE0ABCBE5C402D95B202D000096F4FCF9F3F50209490EB25CD4B5D3C3040078009E7DF659ED158CAAAA61F6A3448EB45B8045D3CC0A60B78CBB1C50E85743DFF4004002A442A05D5932AA3450B8';
wwv_flow_imp.g_varchar2_table(335) := '000000B82E94468EABA5DE03E06438C83E3098E1010800886B68C97DD3E40100004C9D3A553DF2C823DA13606D51ED92D9F1B333220B00D7AF570F80F9EC0018E2FC780121FECD98314397838D3AFF5BBE84DC2C601F6F2C9068E85344C74E08CCEDCA4A';
wwv_flow_imp.g_varchar2_table(336) := '8F07EA5B5015102E00E16208A251CB40437605005001510040AEBDE872BC0080800D2A97F36C81B47800604733293EF1C413BA04701400C0C9354AE95F4A27531ED62F00C08B413803B217933EE4BFEDDBB74B6690E7D11CCD89760040E11C0881800052';
wwv_flow_imp.g_varchar2_table(337) := 'E9FC3440219B4232C4C8020104500F82D4D72833420400F8E9450100215A4F2E1DA405CC6A8026E127A9C580F000C0908728C76E39EAFC78267D72BFF1009005D0BF7F7FDF0080491DAF0692C66C0AA4A5D3020D1A345083070F56B7DC728BAA53A74E60';
wwv_flow_imp.g_varchar2_table(338) := '2F011764F2E4C99A2F06388C72CC0B0008AC1B8FBD9078004234AE5CDAD502D61D0C008018E67DF7DDA7639869000090A3A2748992F2C52E0FD2D725975CA2BA75EBA6ABC2F94D03A4AAE1F8F1E3F56FEBD6AD25FD16755543D7012307946B011300E015';
wwv_flow_imp.g_varchar2_table(339) := 'F29312E8240B4D98F8B1C71ED3005100409E0C44010079D291297D0D2B00E0BF99C0706B13D726BD2989CDEA01881A009C7EFAE95AFAB77BF7EE3AE58BBFC3F6F6A3FF8E8D77ECD8A19E7FFE79ED0188329D3189FD9BE6670A0A00D86DC0820F29144D00';
wwv_flow_imp.g_varchar2_table(340) := '325E0400A47994589E5D00409E74649EBC06BB59084C307EC503706CA7DA8BA49839FCB928BE390D150000210008C16406494BA705C20A019011F0DC73CF69CD18C6870080748E8F639E3AED00C08B8BD2CB395176B7172679D2DFA93CFB1D7FFCF1BA98';
wwv_flow_imp.g_varchar2_table(341) := 'CDB9E79EABF398DBB56BA7739AFD88DB84D95F717A0070FD93FB4F9CD7EA21090200A068F8F4D34F0B000873F0847C6D88A100685201091599CD6F111D000005A1D08710001072274679790100515A3BBB7B79050051E5E566F716D91F45BE3295CC50FA';
wwv_flow_imp.g_varchar2_table(342) := '020400088875FB756B67FF04B91D192700C0033074E85075D34D37952A939ADB1B1C7B341E0001007EAD18FFF90000B38CAE553427ED0080314F1AA00801053CC6D20E004C73B058A0134D3C9442290C787357C4BF41D4228715366B94292C7EBA8BF7A0';
wwv_flow_imp.g_varchar2_table(343) := 'C4EB89279EA877C33CB7F59D4847E37DAC259DFDDC2FAE73A9633E7CF870F58B5FFC422FFED65D4B1241409C000017EF1D77DCA1ABBF11FF0FAA090008CA92F15E87D43F8034BFA64D9B964802FB2589C6ED01203308B9636B2D00BF5EAF5C7B4A848072';
wwv_flow_imp.g_varchar2_table(344) := 'B55888C7DB77C92C966DDAB451175F7CB1FAC94F7EA298A4F9F1FFF9EDDEBD5BE739A36845910B2B70E0BFE3DE3D3BB9F07FFCE31FEB7742D6132040B546808CB93B264F7BF5EAD5A5643A43347968970600E0D6C6756996B535FB44004069B30B00086D';
wwv_flow_imp.g_varchar2_table(345) := '18E6C5859927C8A42194C65CC89F84D7FC56D18B1300B468D142DD7FFFFDAA478F1EA578417EBD1AB976B800805C2D16E1F1B8916FBDF556AD17CDCE88C51FA20A02290000244DC9DD26CD89FA07D6E6C5E51EF4AB393D030B3FA21E1D3B7654A79C728A';
wwv_flow_imp.g_varchar2_table(346) := '62C78F17C0AC8D8D663BEF037B3BCDD5DA28F3898BEFB6DB6E8B55E92BDB3ECD570F809000B31D01C93D8E9D3E8B3DFC1000009EA22E5DBAF8AEA217270000C4DC73CF3DAA77EFDE0200821E7A690E01B06832D04F3BED343DD8898B76EEDCB96481B4DA';
wwv_flow_imp.g_varchar2_table(347) := '8AC513152B525928E2B267CF9EA2EFBEFBAEA8184516508B2668DB7ABD1E6E2EDEA953A74E9AEC453D6CA79D309E0CCAB652C7817EC4CB8197206D0DC952DCDABCAB95B894D4F7C84700C0D8010020F4429A97B4F45B809D3FAE7384A2FCC6CEE304008D';
wwv_flow_imp.g_varchar2_table(348) := '1B37D6210DD25F21C112128D2345583C00317E13D605D074FD80765189BAEAAAAB74CD6876CC78029C6451F106A073BE61C3060AB8142D5AB4E8F0DAB56B7F300C23A394AAAA94AA9229BE4994E100A75046FBF6EDF5E20FA821D79BDDBF53C31B40CE36';
wwv_flow_imp.g_varchar2_table(349) := 'D5E80805BCF6DA6B06B29DC51C07DEAB043844F94EB90E133C00C4FF0500B85B2EA810803D7E4AE537845E28FD2A4A80EEFD90B4239C4288840220040200FC6AE8C70900D8100166980B99E7DBB66DABC31C51B7BC0500A4FEF0F1B30B4872B38BC630A8';
wwv_flow_imp.g_varchar2_table(350) := '070C18A0778F0C886CE3C59B376F2E1A3F7EFCF7CF3EFB6CE1DEBD7BE9571467AAB15E46FDFED67782E807898758381F6DB64A5EEC48D7AE5DCBEECD58BC78B1B16FDF3EDEA304002479F1C7DE0200B21F75610100A480C902A032A87800B2EF8F241FC9';
wwv_flow_imp.g_varchar2_table(351) := '8209B9960C9BB23611D93E7F9C00C07C4676FE6C8E981FD9F445DDF212007CF2C9273AB793E22669A8FCC5AEFF84134ED0717ECA4432B8AFB9E69A5239E3D6DD4D194491A2F9F3E71F7AF9E597F102147CF9E597D50E1D3A8417207200C020E69D40B92C';
wwv_flow_imp.g_varchar2_table(352) := 'F8205C400DE43FD3935156194E2BE0A168C7F4E9D38D79F3E6191F7DF45166D7AE5D194204495FFC0500E4368D050500B82B63E3DB6FBFD5C55D3EF8E0035DFB9D1FE45269E9B7001E513C00CC8F69F40038F1A20887FEFAD7BFD6426151B7BC04005479';
wwv_flow_imp.g_varchar2_table(353) := 'A2DE33043952CACC96546119D2C470FB130F62B1FCE94F7F7A4CD10BBB7BD3E1EFC6EEDDBB8F6EDAB4E9E8CA952B013F953FFAE8A34AECA4E3787F521741B690752EB8E002D5A85123FDC13AF581F5FF590100D901DBB66D33284F4BD5AE050B166470E5';
wwv_flow_imp.g_varchar2_table(354) := '5ADF29EA0F26DBFB8907205B4B292D951C541A20A122F8302CFA64C8103EA226409A09A5D95B32FF8FCC3700C04689399F8C005202A36E7909005830D0FF2604C04E20E98D9D72CF9E3DD5B061C314E9217E1B9C00884F3367CE8CCD0342BA1F0C782676';
wwv_flow_imp.g_varchar2_table(355) := 'BF35BCB1C7A2458B742CF78D37DE480529500040F6A3384800002F0612296385EF204A79D7ECDF588EF46A81B40300FB7B93DD40FC1F622345B0A26E790900488F5BB162855E2C7003B20BC09D1C6585B35C3A9258166E7FCAA0520ED56CD9E4843A1DB3';
wwv_flow_imp.g_varchar2_table(356) := '77EF5EB578F162B574E952F5FEFBEF6B521DFF2F4AB120740B70D531B07315BA707AA755AB56A9C71F7F5CBF531A76730200B2FF028204007CE394787DE491478E91FF4D426A6CF65691239D2C908F00E0B2CB2ED39A210200021AF34C02308089FBE10E';
wwv_flow_imp.g_varchar2_table(357) := '9F3E7DFA31623901DD2A90CBB040E2FE81DC423C2888F6CD37DFA8BFFFFDEF6AD9B2656ADAB469EA9D77DE891400E10120DF1F724BB6C4BFF2DE7BC992257A5747284000401023A4F435F2250D901D3FC43F2ABC01FEC50310FC5889F38A020082B57E5E';
wwv_flow_imp.g_varchar2_table(358) := '79009C768EC401A9F6347BF66C4D0E4A620300A0084508803439AFCDE9FDF182C087C023806E40548D9C7F448C0801A08AE7B7BDF6DA6B6AE4C891DAB393065D00F10064DFE3417A0058F021FF8E1A354AA792A6812F92BDA5E4480100C18E81BC0700C4';
wwv_flow_imp.g_varchar2_table(359) := '01D939120F4FAABE7C9000C09E360821EAD1471F550B172E8C0500900BCF04EFB70900F06BC1F2CFCF270F80008070C74A9C57170010ACF5F30A003899E6ADB7DED2BB81B973E7E6BD07C0E9FD0901E00E25761E87074000802801BA4D59417B000879F1';
wwv_flow_imp.g_varchar2_table(360) := 'CDBFFBEEBBE20170337ECAFE5D0040B01D96F7008042398400E6CF9F5FE10000A43F62E74C8600010100C17E3CE55D4D4200D9DB3A6800201C80EC6D9FB623050004DB63020082B5A7A7AB051502B0DF5C0080A7EE08E4240100D99B31480060660110F6';
wwv_flow_imp.g_varchar2_table(361) := 'B2ABFF491640F67D92D423050004DB33020082B5A7A7AB090070375BDA38006631208890A44426BDE50B070000800700E22B29B0D2F2CB02020082ED4F0100C1DAD3D3D50400B89B2D6D0080024EA4400E193244AA01BA746F901E00B200C87C21F5F7CD';
wwv_flow_imp.g_varchar2_table(362) := '37DFD465B2C9FE49AA0688FBC89723AC16C8370040AD9456AD5AA9FBEEBB4F678245DD0400446D7187FB090070EF84240300277963C49D104222B553CA0197DFBF410200C25E0881A18181078072D96881A44111D4FD2B9023D20E009CC250A8BF3EF8E0';
wwv_flow_imp.g_varchar2_table(363) := '83AA77EFDE9177B00080C84D7EEC0D0500B87742D20180B59C336F83F8111910C8214B08203A0060BD13400055C03FFFF9CFC7A802BA8F383922891668D6AC9906D5692F06646E1A8E3BEE38ED0140055694004318719205205900210C2BC74B56A95245';
wwv_flow_imp.g_varchar2_table(364) := 'D5A851430B1F51DC89F29E1444AA5EBD7A548FE0F93E69E70038896051EE957A20A4C152444A5AFA2D80543A00A05FBF7EA9AC0668F60005E0081352F88D2AA91482A3685AD44D3C00515B5C42009E2C9E640F80F942B8FDD1F546D619B71E5E00BC3BC4';
wwv_flow_imp.g_varchar2_table(365) := 'F992DED20E00B0AFBD4226A5C0A74E9DAA4B83DB330292DE1FF27CCAB172280B26A135CA8B03B6FD3400E25FFEF2173D3E366DDA14A96C74C3860D7501B88E1D3BAA264D9A682FE189279EE8E7753C9D2B00C093D9823D494200EEF64C030038FDF4D355';
wwv_flow_imp.g_varchar2_table(366) := 'FFFEFD35F1AF71E3C6250B927D61727FDBE88FC8070060B71A210000C0D34F3F2D2180E88754E077C46D7EC92597E8D05AAF5EBD4A1519F372B3380100355F28000408B07A08A39E2B0400781939019F2300C0DDA0690000B8F4060D1AA4EB1F58E58FB3';
wwv_flow_imp.g_varchar2_table(367) := 'A9EAE86E81708FC84700B063C70E9D12280020DCB113F6D54F38E10475D65967E94AA9D44AC1CB76DE79E7A91FFDE847BE6E1D2700C0433862C408D5BD7B77050FC06C02007C75E9B1270B07403800010FA9322F8707E0BAEBAED33B14DC7A696A710300';
wwv_flow_imp.g_varchar2_table(368) := '6C76E38D37EAB868504D004050968CF73A75EAD4D13B7E4AA6430264C74C58CD5EF724D7A78C1300C011A2543AE1426BB9F45CDFC1EFF1E201F06BC100CE170F80BB11D3E00120DD0F7212218073CF3DD7FDA51274449C00E05FFEE55FB466C24D37DDA4';
wwv_flow_imp.g_varchar2_table(369) := '28231D541300109425E3BD0EBB7FBC6A03070E2C0510FD7AD6E2060070190036A79E7A6A6C061600109BE9FFFFC60200DC3B410080BB8DFC1C1127008010451AD4CD37DFAC604707E50E1500E0674424E75C00C0D0A143D50D37DC502AA5560080FF3EAA';
wwv_flow_imp.g_varchar2_table(370) := '10000096E7BC79F3A418D0E1C3FE474C965738EDB4D31432B815A91AA07800B21C1CB6C398E07187DE72CB2D8132A18504E8AD3F9276167C9ADB6FBF5D7B886AD7AE1DD8E31D3C78503DF7DC73BA58DCE6CD9B23CD022004201E80C0BAB2EC0BAD5EBD5A';
wwv_flow_imp.g_varchar2_table(371) := 'FDF18F7F540B162C50870E1D8AE08EB9DF423C00EE36130F80BB8DFC1C11A70780182FC22EB843C99EE07B0822250A0F004240E3C68D535BB66CF1631E3937460B904ECB6602512DFEDB6BB313ECA88E4A1AE0C89123759A2832D25135010011591A1950';
wwv_flow_imp.g_varchar2_table(372) := '2A832D5CB850A765992D4995C10400B80F060100EE36F273449C0000B73F3C0098DDB0BCDBB56BA7CE3FFF7C555050E0E795D4575F7DA5264C98A09500BFFCF2CB52DF3E7FB1CE07BE6E2427076A01FBDC4CBE3FBC1A780014D9F2DA9C420678009E78E2';
wwv_flow_imp.g_varchar2_table(373) := '092D142500C0AB65137C1E0541F000B08040FA1000104D674908209D24407643EBD7AF8F7432344724695DE44713EF85F1ED5740C9F4004C9C38B19412A053ED8668BE0AB94B3616B003004A6B131EC20BE0D703C0FDCDEB1302402992311FB510907800';
wwv_flow_imp.g_varchar2_table(374) := 'B21909011CF3C9279FA83973E6A865CB96E94960D7AE5DEAFBEFBF0FE0CAC15D423C00EEB6140F80BB8DFC1C810760DAB469BA8CEE7BEFBDE7E752599FEBB41013EFFDF5AF7FAD27FC4A952A657D2DA703F7EDDBA72B03CE9D3B57BDFDF6DBEA1FFFF887';
wwv_flow_imp.g_varchar2_table(375) := 'FAE69B6FA432A02FAB467332DE9F934E3A49111E62B1A4521EAA797ED5FF2816C5C2BF73E74EF5F1C71FEBD030E363FBF6ED8A7F8BAA090088C8D2070E1CD09DBB71E346B56AD52AED09F8DBDFFE16D1DDB3BB8D0000773B090070B7919F238887A29A47';
wwv_flow_imp.g_varchar2_table(376) := 'B88C6FC5DAA20A9731E9C301B8FFFEFBB5A0925F00C03B01F8B76EDDAADE7DF75DFDED3307ECDFBFDF8FA9E4DC082C50AD5A352DF843811C164B4244E86C54AD5AD5D7DD0B0B0BD5871F7EA8E6CF9FAFCB457FF6D9677A7D801F166548480080AF6ECCFD';
wwv_flow_imp.g_varchar2_table(377) := '643A182F00854128119AA42600C0BD370400B8DBC8CF11780066CC98A175D10901305146DD28A644B9573202AEBFFE7ADF00C0FAFC5F7CF185FAD39FFEA459DF6407484BB60550FF83F53F7CF8705D3027A8461878F1E2C53A2C0C3F2CAE26002064CBDB';
wwv_flow_imp.g_varchar2_table(378) := '199F478E1CD188EF91471E518B162D0AF9EEB95D5E0080BBBD0400B8DBC8CF117C1F1B366C504B972E556FBDF5960E97419CC35D1A5523E64F45343C007DFBF62DB96DAEF9DE4EC7F32E0080679E7946111A305B54DE8DA86C982FF7210B84D43FE472D9';
wwv_flow_imp.g_varchar2_table(379) := 'F99B2DD7B160B707E319B7FF638F3DA6DE79E79D52E380BF84E105700A754178250D9071EE37ACE1A7CFF35E07C0340E71FFD75F7F5D7B00F00424A9090070EF0D0100EE36F27304131FBBFEBD7BF7EA101971D1D9B3672B76CE51353C00EC8C1E78E001';
wwv_flow_imp.g_varchar2_table(380) := 'D5BB77EFC0267D2E84AB975DDFA449934A811A010051F56E6EF7C103000F046F10EE7FBF1921E6DDF100B001641D20453C8AE60400900AA7AC31D2E1020022E805901FBB9B51A346692090A42600C0BD370400B8DBC8EB11766FD9EEDDBBD5F4E9D37538';
wwv_flow_imp.g_varchar2_table(381) := '00A254540D0F0012CAECFCFAF4E913685D00800CEE7F780E768E4354EF27F7C9DE0214C82104000068D4A85160E12000001B40C0605CEB00EFD6BA756B3578F060D5A54B174519F1B85A85F100080058A6204545D5240D303D6980760000539E8C00C0F2';
wwv_flow_imp.g_varchar2_table(382) := '471F7D14D590D1BB3CD414A99476E9A5976A6F00C55F7001FB250442FC8308B866CD1AFDE7FBEFBFAFBD025132BF2333640A6F64DF25F37788A0F7DD779F6ADAB4A9A7FE770A17E0E522140CD975C99225915A8AAC0648AE685C98631C7E83B51A60A40F';
wwv_flow_imp.g_varchar2_table(383) := '444AA41146D023EAB7C8E27E0200040064314C7C1DC24275EDB5D7A6B21890F5C549917AE9A59774195DD268A36C7801D003C02BD6B56B575D1F0020E097FDCD420F119810C7BA75EBB4021C4CF028C55FA2B4633EDC8BEA90F0417097FB0580A63DE8EF';
wwv_flow_imp.g_varchar2_table(384) := '152B56C402004869A458186E7FBC1A086031AEFD5635F4D3D70200FC582FA0732504E06EC8248600ECF1632AD941EAA1B21D249FB4360474000048E842068CA239C5E23B74E8A0F9006DDBB60D749784EC2B24B0E79F7F5E3401A2E8DC1CEEC1424F75BC';
wwv_flow_imp.g_varchar2_table(385) := 'BA75EB6A79E8010306A8FAF5EBFBE60090E5C22670DBB66DDAF53F65CA140D04A36C7019C86A00D8582B00FA2536FA790701007EAC17D0B90200DC0D990600403F425EA3B21DAEEBB436D2E44C00109507C009005C71C5159A05EE0700D82757FE8EEA9B';
wwv_flow_imp.g_varchar2_table(386) := '0080F847A793DB1F2FDA95575EA935007095E332AF5EBDBAAF5D327D8E08D4DAB56B750808A12BB82D51A783020020FE0100ACC43F7B082ECA9E110010A5B5CBB8970000F74E481A007062F6F251E30120BD27CD1E80380080D3084004E69E7BEED18429';
wwv_flow_imp.g_varchar2_table(387) := '84618268A43B22040309ECC5175F140F401046F5780D3BE8230BA44D9B365A0A9A7A10C4CC0909719C1F3739E11F781FD484A02AEC9E3D7B141E81A8F91F7832A88E0AF9EF273FF98947AB057B9A008060EDE9E96A0200DCCD963400603E311313B13C5C';
wwv_flow_imp.g_varchar2_table(388) := '7A30D859B4902D45D236AD8D10001AE98400D82DC7D5AEBEFA6A1D038630E5970360BE03133F0440088E78390004D2E2B500E00E263CDF0CBC8F8103072A4A449B2D081739DA160F3FFCB00600D616651A28350D286A444D03C8AE4968020012D00B0200';
wwv_flow_imp.g_varchar2_table(389) := 'DC3B21A900801D0AEA75E894C35CC76549FC328872B6EE5609E708AAE841920300587500A22EA2430C98BA00D8D72481F95D0C0400843366BC5E95CC0F76C6847BD8F5133A3BFBECB33511D42B007072A993CDF2BBDFFD4E67B70800F87F0B0800F03A72';
wwv_flow_imp.g_varchar2_table(390) := '033C4F0080BB31930A00D899F6ECD953C7F6885BFA7155BA5B219A23CC10C0F8F1E3B5289075971465D2109E94BBEEBA4B9708C6CB62B5AD573B0B0088660C657B170000152021C75101328894381300F0273F5CFD1483C2EB336BD6AC5864AEB1071E00';
wwv_flow_imp.g_varchar2_table(391) := '342E6EBBED36F100643B40823A4ED200250D30A8B164BD0EEE4B52FFFEEDDFFE4D9D73CE399E772D613C9BD76B92330F590AD0C5C4F9F7BFFF5D210EC4E2196523FD0F97301C00F2A56BD7AE5D6A67E8E559040078B15AB8E700007EF39BDF28423E5E77';
wwv_flow_imp.g_varchar2_table(392) := 'FD4E4F88FA2B29AD9B376FD6B9FF8C67EA5C443D8ECD6783E00807E08E3BEE28256F1CAE75CBBFBA7800E2B47EF1BDC503E0DE0949F500000050ADBBF7DE7BF54EC6DAE264F7BA5BB4EC23888B230644953418D3C802239A62D5D0F773FD6CCF258C42AC';
wwv_flow_imp.g_varchar2_table(393) := '943CF0CE9D3B6B6E054C6A3F4D00801FEBF93FD729E68ED0CF430F3DA4FAF7EF1FE8F743FD0774FF91FE250480678BEAB05179B1ECEFCA3C0F41985FAD5AB5FC1B33802B080008C0887E2F2100C0DD82490600EC5C7061B66CD9D277BEB2BB25A23D0210';
wwv_flow_imp.g_varchar2_table(394) := '40111DC20151A74D996F0AC8A23A20E100F8007E1AE00612E0C891238504E8C790019D4BDFB66AD54AEF8AF98E82227BF27884AF18BBC4FD290B1D77831F44060012C7920510716F4808404200610C3926B07C01004E043B167DC880A802921D104573DA';
wwv_flow_imp.g_varchar2_table(395) := '25923B0D21D05A1A361B42A0E80044D163E5DFC3893CCA42DFB06143ED35833C4BFA1F5934906ABD34A7B140060B408F744F1420CD16259915F22A5E2BDE0D5D83CB2FBF5C67B52485242C1E002FA32DE073C403E06E50F100B8DB288C23504E63173571';
wwv_flow_imp.g_varchar2_table(396) := 'E2C4D83C005486336561ADE9955E000036DAB2658B968225D341D200C31835A5AFE9B4E0120F87F48767E7673FFB992679B2587A25773A8D053258C68E1DAB151FE3F25E91CD0049184543167ED285E396FFB5F64E850200C4314184684127A9090070EF';
wwv_flow_imp.g_varchar2_table(397) := '0D0100EE360AE388CF3FFF5C0300CAE8C6E54665B7D4BD7B770D029844C9192F4F1BBE2CEE058B3D644624600134701BA4164018A3A6EC6BB2C023F0436607E57E217932FF992D1B5057DE13733E7DFAEDB7DFAA77DE79474BFE92FB1FD7D865B187F847';
wwv_flow_imp.g_varchar2_table(398) := '51A333CF3CB3D47B7A053B41F6588501000C081691279F7C52210A11873BA8AC8E1300E03EA40500B8DB288C23A898876A1E1C008AE958BF9BA8C8544CA208C35C70C105DA5D8C3430191765C58B49FBB2ABC7C108FFF8E38F0DC03FDF3FCA709F7DF659';
wwv_flow_imp.g_varchar2_table(399) := '266A3538AF7DE445B0264A57B7D37B9545F8235D16973FD91D78744805B402003F0B23E57E89FD93BDC20F1080C787FF1F45B3DB9C900640872C8733CE38A3C4C3E117E804F52E150A00C006050090E294A42600C0BD370400B8DB288C234801247F1A00';
wwv_flow_imp.g_varchar2_table(400) := '008F268EC6A48A4C2C7C0B18E328C5E13AA6F892532B8BCB3065CA14831FA0E6D0A14399C3870F67E2789F8A7A4F001B4C7FF2E001708476E8D7201B1E9E975F7E59BBFDE100306629831E1558B5BF0B0000CF15352D1038B2829D20DFDBEBB52A0C0060';
wwv_flow_imp.g_varchar2_table(401) := '07400EE8D4A953753528060AA94E0C8EB89B0000F71E1000E06EA3308E401570C68C196AE6CC998A2A7A90A9F0A645D19C76B01486211CC042022190EF17D73EFF9FB8323157EB0E9205806F9D9DE0F3CF3F6FCC9F3FDF28CE0367F1CF78D95947F1EE65';
wwv_flow_imp.g_varchar2_table(402) := '795A5850A839018B1CD11CD3E5CDC2C20F7BECDAB5CB20FFDDC26F880CE838D913E00658239D937E23F64F7F05B5EBB7F607A9AA63C68CD1A15E34FFCBB263987D880D1887F413E23F9084D10AE1BF05008469F972AE4D5C888F62E3C68D6AC3860D6AD5';
wwv_flow_imp.g_varchar2_table(403) := 'AA555A1C222A667379AF2D00C07D50080070B7511847E03A8507805B15D7F91B6FBCA1B501A2709D97C51E271C403A20842A9E8FE3080F000C60965B17169E75E1C2856AF5EAD5A4FF19DBB76F6731348A8F493400280B00E13EA7621E2E6516796CC022';
wwv_flow_imp.g_varchar2_table(404) := 'CB8F39EE8D37DE38BA60C182A262B737FEF54ABC6F1460C7E9991B356AA4BA74E9A29532117722166EDDF9FBD1CBB09F0BB81B3D7AB4FAFDEF7F5F6A6E8FE2DDCD7187A7837746DA9814470A8391090097C54F78238CEFBBC27800AC9302A5215F7DF555';
wwv_flow_imp.g_varchar2_table(405) := 'F5CC33CF684010977BC87C260100EE435B0080BB8D823EC23AB9B298B08B8610387DFAF4D8C8734CA04CB06675407809FC37F164B41848B382514E6331E45921FC45055A82EC03A7C514AFC7A04183F44E9A1D250B1E366041C52EFBF6ED335E7CF1C5A3';
wwv_flow_imp.g_varchar2_table(406) := '63C78E3D8AC7A678F1070044E205B02FB4B8F921FA217E0381D3AAF11F84ADEC00000FD5B3CF3EABD9FF5BB76E0DE216395F83F1D7A14307AD6D000830C763CE178AE084BC0700D6C5DDFCA00A0B0B3500A02638A5410500043FD24E3BED345DF50A066C';
wwv_flow_imp.g_varchar2_table(407) := '1095F1040004DF47E55DD1298E0E998A822A30ABA366CFBBEDE0282803378089B74E9D3A7A67CC0248E8023538BB3B98778FFBBBCFB247F15618279C7042A67EFDFA19800EEE64804E19F173E3CD37DF2C9A3E7DFAD1952B571A5BB66CC91C387080791E';
wwv_flow_imp.g_varchar2_table(408) := '4F00BF488000A10A4232E4BF930677DD75D729E604EB46CCF44A646987720F030491B28A7717D63FF3C5D75F7F1DC4A573BE063B7DAA8252C9D2AA0E9A14E29FF5852A0C00B0BA5ED8CDA00E052110D766DC13817800DCBF310100EE360AFA08EBEE8A05';
wwv_flow_imp.g_varchar2_table(409) := 'FFE38F3F56BFFDED6F35787612D809FAFEA526AA4CA6DCEF949D26BB632A31B2E3224401C707D082242CA0DF6C71B3E3DDEC64013B7AF1E7D7BE7DFB4CAF5EBD0AC88220CC615D4CEDD76317FCC5175F14AD5BB7AE68D6AC594756AE5C79F4E0C1832CFC';
wwv_flow_imp.g_varchar2_table(410) := '30EE2AEBB8478000C8099C119E20D67FD55557E97E0992ED6F1F7BF4351B39BC3D8475217992F76FED73379B07F9EF0000A4AB9107471D342CD013C433E73D0070321224A6C993276B3711939A0080208652E96B880720789BC6794576D41F7CF0812658';
wwv_flow_imp.g_varchar2_table(411) := '019E995C9978E3FE76E2B449D8F7CE643245FC288274E38D3766860C195250AF5EBDAC77F0DBB76F2F9A3C7972E1C489137FC01B52505050ADA8A8A86A98D06063F800002000494441545E00C0000B200B1FD2CDC4FEC36C8C41889E8052887FC83CC7DD';
wwv_flow_imp.g_varchar2_table(412) := '00A39437E6FDDBB76F1FF7E3947BFF0A0B0070633EF5D4530200421A9E020042326C4C9765A2C5C5BA6CD932B572E54A5D5C851441769B511002CB7AED5C76F36E6184984CAB6F6B7B0FBDEB47F0A849932606A239DDBA75CBB46CD9B200111DA71DA593';
wwv_flow_imp.g_varchar2_table(413) := '7BB9B0B0D058B76EDD91D75E7BED87B56BD792165765C78E1D55FCA81F3AD8B0C44B0117A35EBD7A05E79F7F7E861005B17F6BF1263F2E7027A2206E7F385CF03B162F5EACE6CF9FAFBD3E564F4F1400D56E13B233D0AA2004005933C94D008078004219';
wwv_flow_imp.g_varchar2_table(414) := '9F020042316B6C176522857086F70C72D5D2A54B75311D5CAF4948A58DCD3001DDD806008A945245AD5BB7CE0C1A34A880C5F4CC33CFCCD8531CB3B8B50108D8BE7DBBF1D7BFFE15CF4DC1F2E5CB335ED338CB015B4778DEBA75EB66FAF4E95370CD35D7';
wwv_flow_imp.g_varchar2_table(415) := '5422F6EFA6D898C5F397023B76063DE11D142A89F90346AD8B7F2ED7F6736C59992A70351E7CF041D5B163473F970FFD5C0100020042196415050040C4EAD5AB97BAF3CE3BF3B21A2083C3BA7333FF9B1D17A956A4D759150243194C15EBA2ECA88B4E3F';
wwv_flow_imp.g_varchar2_table(416) := 'FD74E3DA6BAF2D183A746801317FB3484E36BB68A7630801901EF7C20B2F0452D699DD3E5C8B4C26631C3C78F0684141C1D156AD5A11A6A8D4A3478F4AEC82AD9E8AA0D3DFC8F7670C52A48AD454EBAEDF3A66A31A3A562F0025AC097D4082266533C94D';
wwv_flow_imp.g_varchar2_table(417) := '0080008050C667BE0200273732AE4E94BEC8734E9AD047109DEBB4A0A0AAF95FFFF55F5A6ED5EA524EB29B3D085B84780D93ED6F5C7AE9A59962C9E34C9B366D32D63432AF0000621C8A8E28E4B178BA35B7D00AA23EC4F9EBD4A983B0525151519181BB';
wwv_flow_imp.g_varchar2_table(418) := 'BF43870E054D9A34D1224B7E0180D3BB12EF87B7854703F0C9CFAAE5E2F6DC6EEFEDE7DFC97AA0B0115A07A43C12BA215533C94D0080008050C667BE0200276301001E78E0018DF6F3110038BDF3ECD9B3D5FFFCCFFF680010754640280336868B5A162B';
wwv_flow_imp.g_varchar2_table(419) := '338E5E8444EE1D77DC5100E31F25390F6E7FC73721DB09CE13A571F7EFDFEFFB6DAFB9E61ABDC34590092FD8A143870CBC14D5AB572F05587CDFC87601C24FCF3DF79C26A2120220FC14754AAAD33BD1978851A1D1400A20A9A8E832782D6F1CB4DDCABA';
wwv_flow_imp.g_varchar2_table(420) := '9E00000100A18CB57C07007CDCB07D6168E3EE2307BD59B3661506005054874C1AD2AE900B6667E6875C16CA204CE0459D4874FCBFE38F3FDEA85BB76E51BB76ED3283070F2E68D1A245A91D34AFE2C78D0E570300804E7E2E0080C51D195F5295017A84';
wwv_flow_imp.g_varchar2_table(421) := '7B5060448B60F0E0C10A77B753CBC6535156F79445F8DBB3670F1A076AC28409193828D6853F6ACF93533FB66CD93243DCBF478F1EA55ECD8FD261D843580080008050C658BE0300F29A71D3F2C3E547911ADED9CF241D4A47847451D43471C552550F77';
wwv_flow_imp.g_varchar2_table(422) := '2C32C171D55C0FE91543B9AC13DB1F20C93882318E5BBD59B366052CB24136B2364C00904D08C0BC3744BE4E9D3AA94B2EB944A7F741B42324C1CE1F3777591519BD3EBB137060A17FF7DD778D65CB966900B07EFDFACC8E1D3BB24E87F4FA2CE59DE7D0';
wwv_flow_imp.g_varchar2_table(423) := '8FEAFCF3CF570F3DF45006EF88B5090008A3077C5C1316ACA401FA306016A7E63B0040E37BC890215A798EC22CEC942A82FBDF9CCC9894C90A60D1476D0FF955008134770B58768FB0FD8D468D1A19ECFAFBF5EB5780478945356820E90400CA1AAFD6B4';
wwv_flow_imp.g_varchar2_table(424) := '4ED8FC43870E557DFAF4D192CB66C607A109804BD063DE69B144D16FF2E4C9452FBCF082F1C9279FA04151601846AC00C0F4C81403161DC20110DD7BEFBD99DEBD7B67820646EEA3CADB11E201100F80B791E37256BE0300D27B70F741FCCB85A11D8AB1';
wwv_flow_imp.g_varchar2_table(425) := '23BCA8D3040DB3DC94D58EF051D27C2BA3583007B7BF017764E0C081056DDBB62DB5A805B9734422F70F7FF8830E0100DC001A78B12A55AAA45DE9D69D378B3C6AA930F9D9F913DE02F03A353FAE7EB70E24ACB46BD72EB56EDD3A63EAD4A9C692254BC8';
wwv_flow_imp.g_varchar2_table(426) := '383009868928E404003AF9E4938D7AF5EA19975D765906F543489C66AD0AB7778CFBDF0500080008650CE63B0040E90BA10F72B4ED294FE6EE2014C3C67C51FBA28422205C0000C0E6CD9B4B9E2E4E3676CC263AE6F60EEEE222C60C8B6AF7EEDD61FC67';
wwv_flow_imp.g_varchar2_table(427) := '1A356A9421D61E96EB18B2E67FFFF77F2BC89B8809F5EDDB57CBF4B28B67B1B7F237F000001200B60005C25BFC192600700212B8FDE7CC99A3DDFE9018BFFEFAEB4C71DC5F03A5A8C798D3FDB0256A7F5DBB7635200152AF817E0458A5A10900100010CA';
wwv_flow_imp.g_varchar2_table(428) := '38CD7700C0C28FD4279E0026D18ADA8809C3C8A64A20BB4C9A936E4045B58FF9DE56B73FF2BEE4F6B3EB47E2B7418306A1BBB3A9E4F8F8E38FAB3973E6E852B564AD40E42374C5A20A0030C19DB5FF786E16B3B017342BB0E479BEFFFE7BC2B4C6D8B163';
wwv_flow_imp.g_varchar2_table(429) := '8B085F14A71552CC28D6660DCDB0FB071C4186A4D851AD5AB5627D362F3717002000C0CBB8713D470080AB89F2E200768FEBD6ADD3D5D7D6AC59A3A55929C31B85046BCA0C489C983439BDF843FAEBD3A74FA655AB5605B9E6F97B796FBC33E8E5E30920';
wwv_flow_imp.g_varchar2_table(430) := '5F9F72C2EC58736941BBFB9DAE479601AA7E80C9D9B3671BB366CD42CDD00400661DA358C717A089F98D100A8A7F90FE20025BDDFE41DB2A977ECAE5580100020072192F591F2B00206B53A5FA40766B070E1CD0644076993366CC50880459E566A376D5';
wwv_flow_imp.g_varchar2_table(431) := '26C5A0965D7F895E3E9EA37EFDFAB1F0EB9D7FF5EAD54B11FE828CFB5BED80A7861CFADDBB776B36FF59679DA5D3F97269413E9B15209AE383B18462219C92E5CB9713523278DE625262899724EA943FBB8D488924338232C78028C47EB0A9D53B10A4AD';
wwv_flow_imp.g_varchar2_table(432) := '72E9A35C8FADD00080CA66B04AE3DEAD483960F7619BB472C0120238B6CF5064436866FCF8F13A2320EE89DA7D5445768496F7AD59B3A671C30D3768795F6B919CC89E22E1370248A2EB8F622169A5496D6C6E7EF18B5FA861C38629D4FFD2DC2A2C0098';
wwv_flow_imp.g_varchar2_table(433) := '3871A27AF2C92775ADF0B863960200DC3F210100EE368AF288B2DCB794635DB264890E0B0002BEF8E28B0A25106427FCF1F7EAD5AB4310339A376F9EE9D4A993DEFDB363345B98EE62B76B47BD5375BA1F612436628C1904A6D8FD1346325BDC1E243B90';
wwv_flow_imp.g_varchar2_table(434) := '85C079F7DD776B12B0E94571F26844F93D7ABD5785050013264C504F3CF18442D0C43AD0E2F0060800701FBE0200DC6D948423209391BAC50E0E6FC0DCB97335CBBCA234DB62A5F3FC2FBCF0C2CCEDB7DFAE177F2462D3922216469F3901004213CCC7AF';
wwv_flow_imp.g_varchar2_table(435) := 'BCF24A89BC6F1CF37059EF6B07001022D9FDDF73CF3D54690CC34C915DB342020026A459B366E952922899111FB3E6C24666FDE21B090070B7B80000771BC57584D3A48E678D6A810804C1E8AE680D8678E5CA958B6AD5AA6574EDDA3583BE3F3AFF76CD';
wwv_flow_imp.g_varchar2_table(436) := '08EC12B4E84F5A6C4D6C1FB0C8AE9F7182E7C8DA92184222E3E7ECB3CFD6244AF4110074696E15120090E3BA69D326BDF8AF5FBF5EEF563EF8E083D8762A0200DC3F210100EE368AEB0827373300E0E1871F567FFEF39F13E3CA8DCA3E2CFEA843366FDE';
wwv_flow_imp.g_varchar2_table(437) := 'DC68D9B2A5AEEE77F1C5176BC29FD9DC5CF3513D6B98F7292FBC002864CE5DB972A5AE274176C2F6EDDB130300ECE0833E65B16FD7AE9D966B6EDEBCB94225D11ACA09D396615DBB42020006A6A97645CA09D5A5609EC2388DA3090070B7BA0000771B25';
wwv_flow_imp.g_varchar2_table(438) := 'E508BE2FD8DC7800200456B4C62E9FDD3EF9E1A488A1A78F746ED0B2B969B62BA1574A13A34CC8668C54BF2454F52BCBA60082CE9D3B6B5964B32E02A19CB4F76985030076544ABAD2E8D1A3151901D6BAD2517E5C0200DCAD2D00C0DD46493902D72E71';
wwv_flow_imp.g_varchar2_table(439) := 'DDE9D3A76BE1194036A42E53473E29CF19D6739027CE0E11B19D5EBD7A55A85DBFDDA6CCB7CCB1CCADFC896DF821EE8382E4E2C58B4B8588E226FCD9431010FE0070A4FA5D7DF5D5BADCEF19679C51EA35A3265206396E2B1C00B01B8FCA582CFE63C78E';
wwv_flow_imp.g_varchar2_table(440) := '8DAD9A990000F7212D00C0DD4649398209111D77167E267A62BC0B162CD01937664BD2441FB4DD58E0108681256EAD0C97AF6E7FB7F7620C90DE879C2F3B66BC210042C47EC81289B3AC6F797D8F2787744D527EA9F941CE7F93264D3480B1360100417F';
wwv_flow_imp.g_varchar2_table(441) := '41115D8F8EA396F9D34F3FAD6395549D8AA3090070B7BA0000771B25F10872BB57AF5EAD413640C09A119044925710366481A0342C52D148C4A6DD4D9CAD4D984F59CCF9F1CED80120387FFE7C5D8AF8BDF7DED329A1B8CE3916D53FF8584962FC5BDFB5';
wwv_flow_imp.g_varchar2_table(442) := '5AB56A70382070A2F59FFA78BF533F56680F00038F58D433CF3CA359A80200B2FDD4DD8F132540771BE5DB1165E5426FDBB64DC77AF102A00DC0EE2FC9F15EBFFDC2CE110070E79D776A006032FFFD5E37E9E743ECA3AF9953E95F0AE5ECDDBB572D5CB8';
wwv_flow_imp.g_varchar2_table(443) := '504D9D3AB5CCF93581DE202DDC54A54A15830A8DFFFEEFFF5ED0BE7DFB122542378F47D2FBA95498C3482AFC8AC08ABC3ACC533C0002008235B8008060ED9996AB394D8EC4FE71F522F6C26E70E6CC99A5845E78B77CF206E42B00705BF89083C6D58F14';
wwv_flow_imp.g_varchar2_table(444) := '34846A5CFD34F82090428B35FD8F19CA490100D6824D4AA9234AA9A32D5BB62CF8CD6F7E53B94B972E25E5FDDCEC90966F557F7702000400843160F31D00B46DDB56BB78D104AFC8D50073193B4C9C14A481744BDD005CC0FCBF7CDB839800C00C01845D';
wwv_flow_imp.g_varchar2_table(445) := '492F973E08EA5876F8A6FB9E85B36AD5AADAC58FAB1FF227AEFF14B7A30505053F9C74D24947DAB46953306CD8B0AA9D3B77AE9CE2F729F3D1050088072094719D6F00C0BE432515E8DE7BEFD5B1410100CE43C869A7F4E9A79FEA50C0AA55AB74380097';
wwv_flow_imp.g_varchar2_table(446) := '71BE290512FB86300609F0E73FFF7929E324993096CBB37DFEF9E79AD467EEF4F93EE84F941FD156718C3767FEE9454F12E073F03E18D5AA552B6AD0A0C1D10B2FBCB0A875EBD6990E1D3A546EDAB469890720940933A68B0A00100010CAD0CB2700E0E4';
wwv_flow_imp.g_varchar2_table(447) := 'A284E53D62C408D5AD5BB7BC240785322894D2BB46160D98E1A408CE9E3D5BBB88F3A9A5350D3017000088238DEFC30F3FD45D87BB1F2007A99AB87F5A9ABD7603B17FE47DC9DEE0D7A44913049C3255AB562DE100A4E5DDB2794E01000200B21927391F';
wwv_flow_imp.g_varchar2_table(448) := '934F00C0FEF2ECF8AFB8E20A5D118C14216B3DF79C0D55414EB02F2E2C12D40A1833668C8157A0B8E5C5244B08E0BCF3CE53B7DD769BF600D4AC593355BD8C8E03E1197E265913563F39F12CF490FC104E23751A0F8EBD0C2E2F9B94B87E0E86D7259BAB';
wwv_flow_imp.g_varchar2_table(449) := '56AD6AF04D23DDDCB973E78CF5DBCE0520E570DF580F15002000209401986F0080098D744D267676FF175D74915604234FD89E171C8A41537E51FBE4F9CD37DF18CF3FFFFCD151A3461DDDBC79330B3F2ED64A295C388EE919164B16FD162D5AE831C2EF';
wwv_flow_imp.g_varchar2_table(450) := 'E28B2FD6AC78A7F70BBA16805F921A823DC8F4E2CA47AB1F0E03A97BC4F919EB80B7356BD66819DFB2C23749EF477B482F93C918A83722DDDCA64D1B807DA6418306A500A90080944F42F6C7972C80F03A34DF0000937AFDFAF5B512D8B5D75EABAB80B1';
wwv_flow_imp.g_varchar2_table(451) := '1B62720C7A020FAF579273E5AFBFFEDA983C79F2E13163C6FC40868052AAAA52AA4A8699D8603396EEC6B860C1AC51A386560324971CED78B3F95DA4CBB38EDF858ACC28BC33ECF261EFB3F3C7EBC538E73B20971F7D078AA8E12D4863B30100833A0D03';
wwv_flow_imp.g_varchar2_table(452) := '060C5037DD74936ADAB4A9DEF9E72379D3DE57E201100F4028DF6F3E02809FFEF4A79AD875C30D3794ECFAC39CC843E998845C74CF9E3DC6E2C58B7F78E9A5977E78FBEDB78DDDBB77572E2C2C4462ADC00C07A43135D06167A965810907504806195916';
wwv_flow_imp.g_varchar2_table(453) := '173B68F4BB683B752BE9977BF6ECD13FDCF92C686579AB4C173F7F12D727BE4FCA26DE00B796C67E32DF097B9C7AEAA906BA0D83060DCAC0E941FA370AA0E666D728FE5D0080008050C659BE010026CF468D1AA9FBEEBB4FDD7CF3CDA5D4DD0404E43E84';
wwv_flow_imp.g_varchar2_table(454) := '0A0B0B8D6DDBB6157DF8E187456BD6AC295ABA74A941754E3314001048F3C262B5080B0A0BCCA5975EAAB923AD5AB52AC51B096BFC20B8849B1E0546C87978AC08633196ED5E166C8D9B9F468C9F344D8AF4B8093625DDD56FED07A7676DDAB4A9BAF2CA';
wwv_flow_imp.g_varchar2_table(455) := '2B55EBD6AD759806CF5E45116EC23602000400E43E7B677146BE010076460080E1C387AB5B6EB945BB45A5E56E0173A7CB9FC5B9E4C6C71F7F5C3469D2A41FA64C997264FFFEFD78000807E44DDEB5B9B85222983AF2B7DF7EBB3AEBACB34AED32C30823';
wwv_flow_imp.g_varchar2_table(456) := '115AA1E21ED54EB76CD9A2B355ACDE073B0830258BCD4AA908F7E44338C634B41D500278FAF6EDABC333C4FFE1685404B77F2950244240220494FB34EE7E463E0280B3CF3E5B0D1B364CC709D35E07DCBD07C339C269B77BE0C00163C1820547A64D9BF6';
wwv_flow_imp.g_varchar2_table(457) := '033BCF9D3B7756FAEEBBEF0002E62F95D9014E1E0CC20080006ACA5361CE4A0CC4E241860288E5936AF9CA2BAF68521FE43DE2F7B9B47CF1C258DF196E46AD5AB554E3C68D350040AE997EA8286E7F0100C516304980D402906240B94C0BEEC7E62B00C0';
wwv_flow_imp.g_varchar2_table(458) := '03000010F11FF731E074841300401B60E7CE9D457FFBDBDF8A56AE5C7974CE9C39473FF8E003D8656406E00D281161499BCBD9BE83E6BBC0934438A067CF9EFA4F5332D70400DA355B2C9AE3CDCAFF3C0B863E697A4830FFF5AF7F554B962C51EFBFFF7E';
wwv_flow_imp.g_varchar2_table(459) := '4EC4BDB403007B9E3F1CD3FAF5EB677AF5EA95211C0331B341830681D8DB4F5FC5756E850F0198C580C68D1BA7535EE268520DD0DDEA715703C43D8A074000807B5F793D82C5F2DD77DF3D3276ECD8C2575E79E548616161A5CA952B136BA9CCCE35C995';
wwv_flow_imp.g_varchar2_table(460) := 'E3727D67D247019278031A366C784C7AA05F0060F724C0AFA0E6C9B469D3347BBF023683C59FB9162FCCB061C332EDDAB5CB54944A8D65F5778507002064F4ABF102C4F5610800709F8E0400B8DB286D47387903F6EDDB67CC9831A370D1A2453FECDDBB';
wwv_flow_imp.g_varchar2_table(461) := 'B7F289279E58F5F0E1C395909EFDECB3CF1415E7D2D69CBC16ECFAC93727459070009C00E681209A935DB1DFC89123351F60DFBE7D41DC260DD7D0E23EC5023F646064FEF55FFF95FA1D999E3D7B66C8C8305B5844CCA41BA9C203802FBFFC527F18E3C7';
wwv_flow_imp.g_varchar2_table(462) := '8FD7B9AD668BD2D52800C0FD331100E06EA3B41D51563860EBD6AD47BFFAEAAB22C3300A7EF4A31F15ECDCB9334395B9193366A81D3B76C4F28DFAB5AD932B9DEC00DCCF64051087BEECB2CB4ADDC62B1FC0E93CF2F9478D1AA573FBF7EFDFEFF7751277';
wwv_flow_imp.g_varchar2_table(463) := '7E19F3358BBFAEEA57AF5EBD4CDFBE7D2B75E9D2A532B17F380056B6BF575B27CE10393E50850700A4C74C9830414D9A34490106602647CD7C1500E03E6A0500B8DB285F8F80954E8539A4672109F2F77C6AECFE7FF9CB5F6A219AD34F3F5DBF9ADF1080';
wwv_flow_imp.g_varchar2_table(464) := 'DD3EE4F6E3E97CF9E597F3120058DF97859DFCFEA2A2A2A223478E1CA95AB5EA91CB2EBB2C337CF8F02ADDBA75CB9BEC9220BE810A0D0030206EFFB56BD7AAD5AB57EB729654B8821710E5242300C07D280B0070B7519A8F7073C152696EE9D2A5FA3B25';
wwv_flow_imp.g_varchar2_table(465) := '9E8D4BDB9AA39E16B29AD34E15153AC2001D3B76D4F2C1CD9A350B5C8C265F018053BF93D24735C61A356A18870F1F3E9AC9648ACE3DF7DC4CE7CE9D0B1A356A54AAAA5F45DDF99778BA2B721A204640CA1282116A594C2EB8C85E7FFDF54851B20000F7';
wwv_flow_imp.g_varchar2_table(466) := 'A54B0080BB8DF2F908266AC03AFAF4A8D45145D01ACB8E326417869DD9B1D6AD5B97F8B41A3C78B0060266730347D93C4F4501008C03C229102C61F817151519A820A2DB4106C6F1C71F9FCA94D26CFAD8CB3115D603E0F451B1CB1833668C763752B234';
wwv_flow_imp.g_varchar2_table(467) := 'AA2600C0DDD20200DC6D946F47387DA3A8DBB1F8FFE52F7FD11EBBB28AD1A4C516D61D2CAE6B94E9A832498A60EDDAB50313A6211570F4E8D15AE33F1F3900F4378B7C93264DD48D37DEA8060E1CA87EFCE31FEB70AE751C59ED1D7498252D63CEFA9C02';
wwv_flow_imp.g_varchar2_table(468) := '002CF9B67C24000052650400F81BCEA203E0CF7E72F63F4571ECF170520151B523AFFDCD37DF54AB56AD42B2D6AC1E546A779774AF80D3F3214883242DC4404881640AE4AA13E064373228000069CD02282FC4432A1FDE93B66DDB6ABBF1034821F8E3D4';
wwv_flow_imp.g_varchar2_table(469) := '2ABADB5F004019B3EB860D1B345166E6CC993A241055130F80BBA5C503E06EA38A7204208022357CAFE3C68D3300ECC58B5EEADDBB2C74A6663FAE6CC881E84FF86D8026B29DA64C99929769805DBB76D5B6A2F4329C0A422AB2C3771F3515D603E0641A';
wwv_flow_imp.g_varchar2_table(470) := 'C845008059B36669D9CCA89A0000774B0B0070B7513E1F51563860EAD4A90652B700F66AD5AA690080A017D93DB9CADEC6693F276F00056A7067B3A3A5480DF2D356E11ABB4D9C76B6A436933AF9F6DB6FEB0C80E5CB976755E12F4E5B98F776B209BB7A';
wwv_flow_imp.g_varchar2_table(471) := '6A2AE0DE47B79F7A05A872F6E8D14317E992DCFEDC7A4E0080C55E0000528DF0000800C86D20D98F9610803FFBC9D9C75AC0BEC041EE82B7C30F8120DCE7070F1ED461013B49D00C25449DE29B6D3F3AB9B84F3DF5544D646357DBA54B172D1B6C95A0B6';
wwv_flow_imp.g_varchar2_table(472) := '020027804426D35B6FBDA5162E5C68F0E7C68D1B33FFFBBFFFAB1515D3D09C00000B7F870E1DB49A1F730C9E204011B9FD30FFED45BAC4DD5F7E4F0B00100010CA5C90AF00806240EC34A4164028C326AB8B9A933A7F0202D8059A15F7000200783C79B9';
wwv_flow_imp.g_varchar2_table(473) := 'EADE6775F3880F62974B7C7BD0A041FA670D07581737270080AEC99429530CDCFE1B376ED4699319F4708BB91511BF8AA7DBD981114A7EB7DD769BEADDBBB70600801C3C3D54F663F1AFE8D2BEB91A59008000805CC74C56C7E71B006022C20D7BF7DD77';
wwv_flow_imp.g_varchar2_table(474) := 'AB5B6FBD55AA0166350AC239C82D2D0E4F1E6101D279A9698FBC70B166402A38024EDE000AD750B98EB040FDFAF54B55AFB35B995D318B3FFA26D861C58A15069E11F4854C4F087FA60908A09A48FD0476FEFDFAF5D35E11A7E63636C21991E9BDAA0000';
wwv_flow_imp.g_varchar2_table(475) := '0100A18CDE7C0000F68998D8E3881123749A9694030E65D8647DD1F25CBBE8056CDDBA1592A03167CE1C63E9D2A54671488F059012C3252D8902424ECF54A3460D5D2F00C1A03E7DFA682000D1CDA9911D81170400800430194DE89D982D89D911E53D13';
wwv_flow_imp.g_varchar2_table(476) := '3B7B4492AEBEFA6AD5BC79730D04CAAA9B200020EB4F481F28004000406E2326CBA3F3010098BB25DC8AB8189980870E1DAA6EB8E106090164390EE23C6CEFDEBDC60B2FBC608C1F3F9E52C3A48515E0022F2A2ACAE03AB62A09C6F99CB9DC9B31880B9C';
wwv_flow_imp.g_varchar2_table(477) := '0C813A75EAE87760716701659C12024128092E138B7FDA1AEF00D18FD0078B39EF47BD845B6EB94513224DA9E4B4BD57529F5700800300200B40D200FD0DD97C01004C46308B111861F771E595576A321680405A722CE0B4F343E514BD8079F3E6199B37';
wwv_flow_imp.g_varchar2_table(478) := '6F362A57AE9CA95AB52A44B8CC471F7DA425BF9D5A5276C84ECFC1CEF7F2CB2FD78A8184A420F4B1E8331EF92194B464C912357FFEFC63D8FE49F07694F70CFC1BF30652C8BC1B208D7763C7DFBD7B77EDF62F8B04999C9198AE271100201E8050466CBE';
wwv_flow_imp.g_varchar2_table(479) := '000098D84C3E3FFFF9CF15042458C8E4690BD9289461E3EBA24E61813D7BF618A40442163CFEF8E3218C659013461067C58A1565DE2F2920C0FE80B8FDF9B6D809F33EECFED925B363E6995934BFFEFA6B9DFA97C434C8F20000EF76DE79E7E9DD3EA23E';
wwv_flow_imp.g_varchar2_table(480) := 'FC1D3E032100DE973088B5829FAFC122274B08C03E06A83486EB4C7400FC7F1DF90200281B3A64C81075C71D7794723F4A7A91FF3112D615CA8B03B3606EDEBCB9A4321E9A01EC2A596CC82660C7698D9787F58CB95ED7CBEEDDCB39B93E97D7E301D02C';
wwv_flow_imp.g_varchar2_table(481) := 'ECFC002A2CF42CF0DDBA7553BFFAD5AFD445175DE4786989F17BB5B8F379E201B0D865DDBA75EAC9279F540B162C28E53E0B7B37204240EE833A2E212000000A63000076FF661300E0DE67711DE1B648208EB36CD9322D8E83670042272C79B207D6AF5F';
wwv_flow_imp.g_varchar2_table(482) := '6F1C3870C0355B20EAC5D5CBFDC29EB7FC844FB0F9F9E79FAFC36ACC7FD4740084E1FE6FDFBE7D99B17EB7BE8D6BCCA5F5BE02001C00C0BC79F34A1519F1F2F1E532200400B85B2B2E0080EB91B4BFDB6FBF5DD5AB57CFFD41E588C45B00973999022CFA';
wwv_flow_imp.g_varchar2_table(483) := '703CF0006CDBB60DA53C63DCB8716AFBF6EDBC43B92020EC3921F1462CE701B3B10DBC9AFEFDFBAB010306686D0380182080B006824E65E9F8A7D92E497C760100965EA118D04B2FBDA4586CC81F66A7100553580080FBA711170020F58FD2A278002023';
wwv_flow_imp.g_varchar2_table(484) := '494BAF05DC94F3E6CE9DAB264E9C68980242C71D775CC6D494272CC07C40C820ED1508A3E84153B297B98DB8BD99AD80EDE80776FA081B5D75D555259A066EFD13C57357B47B0800B0F438B9C2C4072933BA72E54AF5C61B6F94620A87E5521300E0FED9';
wwv_flow_imp.g_varchar2_table(485) := '4501009CFA97B824BB943BEFBC53356CD8D0FD41E588C45AC0CD7DCCB74F1800111D167C16317EC4A9D9A17EF8E1877A73F0F9E79FBBBE63587385EB8D433C209777C273867C31B17CDCFD2CFC642CC0B3A0E101C0FDCF375516B14FC26C217666F1A505';
wwv_flow_imp.g_varchar2_table(486) := '00142B6231B8F9E84D420A31C23FFDE94F1A0484DD0400B85B380A00E0F414C4FDC93F26FF5F3C00EEFD94C623CC8586C5C95CA8CCFF07BB9E050A0080B00E12C34B972E4DE36B46FACCA4ECF1CD40EAC386CCABCCAF26C112CF0AEE7E52174D6011E903';
wwv_flow_imp.g_varchar2_table(487) := 'CACDB4050400580080754CB01B78F1C51735E2A79636AE3F7B38209B585736E34C0080BB95A206004C4E08AD909644A5312632112171EFA7B41DE1E615B0BE0FF300E983E4D9031458BC58C80008CC05F00AE0129086E7B50535A778BD7FB6E7018CA951';
wwv_flow_imp.g_varchar2_table(488) := '40E95D73F304803249955430C47306D1CFADC94EDFCD42E1FDBB00803200001F38AE3E5C828B162DD24000494DB3E5E20E73EBBE7C04004C1083070FD6B2B92879F96DD87FD4A851DA2363BA11FD5CD3ADFF8851223D4A3E322425B201EC95C6FCDC5FCE';
wwv_flow_imp.g_varchar2_table(489) := '4D8605B205001C07691045C12FBEF8428F4173F1072C329E28B83367CE1C5D8DD06B0EBEDBB80CCA6A7E81060B3CDFC739E79CA377F8A44F9A8579B00B2EFEA64D9B6ACD02B72600C0CD42E1FDBB000017DBC20B202BE0E9A79F56E80430C8B5EB24F34F';
wwv_flow_imp.g_varchar2_table(490) := '9270100535000088CD5069AEAC22175E8600EE36762B23478ED4694F51960125760E7B1EF25C100080D44CDE036E46900000BB12E765176786804C4046FE7F90FDE1A50FE59CE458C01C1F7802CDEFDECC67E729294B3C69D2244D2446888785B12CBD7E';
wwv_flow_imp.g_varchar2_table(491) := 'EB5B713DBE4D404390F34A7996330100CF684AEF96070A4C595E6C80E763E0C081DAC54FB9621ADFA4E921E53AD8857717C1ACE48C5FA727110060B18AD36E80410DB237AB8BF1DF288B05D920C94098A1D21CC53E826A7CAC0B172E54BFFFFDEF7565B4';
wwv_flow_imp.g_varchar2_table(492) := '281B8B281E00404D10000010F6C4134F280A9D049999C1AE9E5AE2545863E2629787F782E2235DBB76D53B7FB365BB5B8CD2CE72AFF02D906DBFB359006823C38B9700505956D9681646FE9D6B23DF8B6E7F71FA61F82F64B903612DC67FCD9A35356001';
wwv_flow_imp.g_varchar2_table(493) := '88380921F19C2CF2FCF82660EFA38E89F7C3ADC90EDFCD42F1FDBB00009BED9D062BEE2D627BB0805F7DF5550D064C4F40105D87B42CDADE549AC3B51654E34366E7CC12BC420000035749444154FCE8A38FEA8533CA466C10F21CA02608F21CAE55DE63';
wwv_flow_imp.g_varchar2_table(494) := 'CD9A3581BE069319F9C89D3B77D68224F4351361EDDAB5B51B93BE110010A8C95377B16C010073023B7FB2080821B2C83396EC8DEBB1F8033E01B3D425806FB47CF9F2C86DC37CC3F8BFE0820BF48E9DF1CF333911F3CC543E3C00C4FFD1C5C8469A5700';
wwv_flow_imp.g_varchar2_table(495) := '40E4DD9AF50D0500646D2AA53F8E891327EA70008420165853833B87CB941CCA0785DB8F1D2721005CCE6549607AB93ECFC7A4C2F3F227BB5B9ED76952F2727DA789CD748FB2B0923F8F172008019DC58B17EBAC0CF4DB790F261EAFEE45D39DC9F92D5A';
wwv_flow_imp.g_varchar2_table(496) := 'B450C3870F573D7BF6CCCA5D1B849DE41A6201AB05B66CD9A2C7362000B27114DF28F76721A7AA20E3DF74E54BCF542C0B080028A7BFEDC89FC5EDADB7DED2A440EA8D8392F988BC2E44EC1870B99D72CA29EAC20B2FD484B320DCE5D61DEBA79F7EAADD';
wwv_flow_imp.g_varchar2_table(497) := 'FFEC324CE67236A8DDCB6780BDCC32ABB814D95DB469D3262B2290DBFD205F4100E44FBFEFC1739A3B7DAAFC117EC10D2AF9C86EBD20FFEE6401BF3B5C4207005BF82D0000E6943095F0CC7C7C3C5E841C0975F1DF5E5AB6DE112FD79673C2B78000801C';
wwv_flow_imp.g_varchar2_table(498) := '6CCC60DFBF7FBF2E15CC0262925D72B844A943B99EE90E44FE92CA734133CDD92D33C1506CC3AC1B1E66DEADF94E4C604C2A809B6C88506E360CFA3DCC3827315A3C302693DBED39E4DFC502415B8005996F94B90500CD8622CC6F94E76733C37749A80E';
wwv_flow_imp.g_varchar2_table(499) := 'A67E10DF68D07691EB856F01010059DAD844F9E60297E569591FC6076F6500FB9900ACA8DCFCEF20B215B27E99E203CD77F2B34BB0DA9DCB86F11ED6E7F463F75CED23C7576C0BD8BFD330C6B69B8583F846DDEE21FF9E5C0B0800C8B26FFCBAF9B2BC8D';
wwv_flow_imp.g_varchar2_table(500) := '3E2C887B05718D5C9EB9BC63830000413D8BDB730A0088C2D2720F2B984DC298F3F38D4A6FA6D7020200D2DB77F2E46201B18058402C2016F06C0101009E4D27278A05C4026201B1805820BD16100090DEBE9327170B8805C4026201B180670B0800F06C';
wwv_flow_imp.g_varchar2_table(501) := '3A39512C2016100B8805C402E9B5800080F4F69D3CB958402C2016100B88053C5B40008067D3C9896201B18058402C201648AF050400A4B7EFE4C9C5026201B18058402CE0D90202003C9B4E4E140B8805C4026201B1407A2D200020BD7D274F2E16100B';
wwv_flow_imp.g_varchar2_table(502) := '8805C4026201CF161000E0D97472A258402C2016100B8805D26B81FF03F3D1D5CC1F16FC450000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(26028943753549664555)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26281085216573834)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15492788136172
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26028253579707664376)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26028253894613664376)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26028254160462664376)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26028254466911664376)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26028254730514664376)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26028255085744664377)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26028255365657664377)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26028255638483664377)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(26028255907174664377)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attribute_01=>'Y'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(26028945031261664556)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/lokacija
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(63715288138928567779)
,p_lov_name=>'LOKACIJA'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(63715500099540322084)
,p_return_column_name=>'LOKACIJA_ID'
,p_display_column_name=>'L_NASLOV'
,p_default_sort_column_name=>'L_NASLOV'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/projekt
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(61760909426512482409)
,p_lov_name=>'PROJEKT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(61762137136845234501)
,p_return_column_name=>'PROJEKT_ID'
,p_display_column_name=>'NASLOV'
,p_default_sort_column_name=>'NASLOV'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/stanje
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(64292642193442126530)
,p_lov_name=>'STANJE'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(64292630087206124329)
,p_return_column_name=>'STANJE_ID'
,p_display_column_name=>'STANJE_NAZIV'
,p_default_sort_column_name=>'STANJE_NAZIV'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/testni_list_dinamicen
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(61742765967432918901)
,p_lov_name=>'TESTNI_LIST_DINAMICEN'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(60863573159607170735)
,p_return_column_name=>'TEST_ID'
,p_display_column_name=>'TESTNI_NIZ'
,p_default_sort_column_name=>'TESTNI_NIZ'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(26028945380339664556)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(26028256825282664378)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26028257031178664378)
,p_short_name=>'Domov'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26034116828823769288)
,p_short_name=>'Vnesi/spremeni osebo'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64289084064738081153)
,p_short_name=>'Projekti'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64289127449773083180)
,p_short_name=>'Vnesi/spremeni projekt'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(75411531264156017490)
,p_short_name=>'Osebe'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/drawer
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(26028257649573664382)
,p_theme_id=>42
,p_name=>'Drawer'
,p_internal_name=>'DRAWER'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Drawer-page t-PageTemplate--drawer #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Drawer" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Drawer-header">#REGION_POSITION_01#</div>',
'  <div class="t-Drawer-bodyWrapperOut">',
'    <div class="t-Drawer-bodyWrapperIn">',
'      <div class="t-Drawer-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Drawer-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>11
,p_preset_template_options=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Drawer-page--standard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#)'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1659739787629394056
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028257931060664383)
,p_page_template_id=>wwv_flow_imp.id(26028257649573664382)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028258231000664383)
,p_page_template_id=>wwv_flow_imp.id(26028257649573664382)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028258526147664384)
,p_page_template_id=>wwv_flow_imp.id(26028257649573664382)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(26028260537424664386)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim t-PageTemplate--leftCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main class="t-Body-mainContent" id="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028260889640664386)
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028261190393664386)
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028261426600664386)
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028261767060664386)
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028262066150664387)
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028262311782664387)
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028262698158664387)
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028262956856664387)
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028263250297664387)
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028263574927664387)
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028263883679664387)
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(26028264204340664388)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim t-PageTemplate--leftRightCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById(''t_PageBody'').classList.add('
||'''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028264581266664388)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028264862262664388)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028265163908664389)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028265441254664389)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028265793331664389)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028266066224664389)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028266338415664389)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028266652205664389)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028266949049664389)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028267219764664389)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028267542991664390)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028267870281664390)
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(26028268242088664390)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login t-PageTemplate--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#',
'<div class="t-Login-bg">',
'  #BACKGROUND_IMAGE#',
'  <div class="t-Login-bgImg"></div>',
'</div>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028268590298664390)
,p_page_template_id=>wwv_flow_imp.id(26028268242088664390)
,p_name=>'Background Image'
,p_placeholder=>'BACKGROUND_IMAGE'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028268852322664390)
,p_page_template_id=>wwv_flow_imp.id(26028268242088664390)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028269101420664390)
,p_page_template_id=>wwv_flow_imp.id(26028268242088664390)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028269487066664390)
,p_page_template_id=>wwv_flow_imp.id(26028268242088664390)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(26028270838477664392)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim t-PageTemplate--marquee #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById(''t_PageBody'').classList.add('
||'''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028271119495664392)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028271499813664392)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028271779890664392)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028272019481664392)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028272392854664392)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028272648783664393)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028272961591664393)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028273222132664393)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028273579296664393)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028273883473664393)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028274138656664393)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028274423505664393)
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(26028274814230664393)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav t-PageTemplate--minimal" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028275143652664394)
,p_page_template_id=>wwv_flow_imp.id(26028274814230664393)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028275420559664394)
,p_page_template_id=>wwv_flow_imp.id(26028274814230664393)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028275725368664394)
,p_page_template_id=>wwv_flow_imp.id(26028274814230664393)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028276083401664394)
,p_page_template_id=>wwv_flow_imp.id(26028274814230664393)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028276394499664394)
,p_page_template_id=>wwv_flow_imp.id(26028274814230664393)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028276623016664394)
,p_page_template_id=>wwv_flow_imp.id(26028274814230664393)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028276908785664394)
,p_page_template_id=>wwv_flow_imp.id(26028274814230664393)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028277266234664394)
,p_page_template_id=>wwv_flow_imp.id(26028274814230664393)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028277560755664395)
,p_page_template_id=>wwv_flow_imp.id(26028274814230664393)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028277826954664395)
,p_page_template_id=>wwv_flow_imp.id(26028274814230664393)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(26028278253851664395)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard t-PageTemplate--dialog #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,h:#DIALOG_HEIGHT#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMEN'
||'T#)'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028278566705664395)
,p_page_template_id=>wwv_flow_imp.id(26028278253851664395)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028278856961664395)
,p_page_template_id=>wwv_flow_imp.id(26028278253851664395)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028279186237664395)
,p_page_template_id=>wwv_flow_imp.id(26028278253851664395)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(26028279730436664395)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim t-PageTemplate--rightSideCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById(''t_PageBody'').classList.add('
||'''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028280088351664396)
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028280334273664396)
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028280682713664396)
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028280986009664396)
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028281247570664396)
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028281571742664396)
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028281810571664396)
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028282177359664396)
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028282407709664397)
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028282717367664397)
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028283025043664397)
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(26028283489492664397)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim t-PageTemplate--standard #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028283783300664397)
,p_page_template_id=>wwv_flow_imp.id(26028283489492664397)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028284048915664397)
,p_page_template_id=>wwv_flow_imp.id(26028283489492664397)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028284372304664397)
,p_page_template_id=>wwv_flow_imp.id(26028283489492664397)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028284620803664397)
,p_page_template_id=>wwv_flow_imp.id(26028283489492664397)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028284953157664398)
,p_page_template_id=>wwv_flow_imp.id(26028283489492664397)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028285225870664398)
,p_page_template_id=>wwv_flow_imp.id(26028283489492664397)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028285522842664398)
,p_page_template_id=>wwv_flow_imp.id(26028283489492664397)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028285807702664398)
,p_page_template_id=>wwv_flow_imp.id(26028283489492664397)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028286174080664398)
,p_page_template_id=>wwv_flow_imp.id(26028283489492664397)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028286417011664398)
,p_page_template_id=>wwv_flow_imp.id(26028283489492664397)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(26028286828486664398)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard t-PageTemplate--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,h:#DIALOG_HEIGHT#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#'
||')'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028287101872664399)
,p_page_template_id=>wwv_flow_imp.id(26028286828486664398)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028287459135664399)
,p_page_template_id=>wwv_flow_imp.id(26028286828486664398)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028287728873664399)
,p_page_template_id=>wwv_flow_imp.id(26028286828486664398)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(26028832774976664468)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidde'
||'n="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSE'
||'S#" aria-hidden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(26028833496671664469)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(26028833513413664469)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconLeft'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028288321891664399)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY##SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028288615192664400)
,p_plug_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028288970530664401)
,p_plug_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028289201271664401)
,p_plug_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028289590018664401)
,p_plug_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028289822280664401)
,p_plug_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028290133747664401)
,p_plug_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028293558045664403)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028293845658664403)
,p_plug_template_id=>wwv_flow_imp.id(26028293558045664403)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028294130650664403)
,p_plug_template_id=>wwv_flow_imp.id(26028293558045664403)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028294453816664403)
,p_plug_template_id=>wwv_flow_imp.id(26028293558045664403)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028294789105664403)
,p_plug_template_id=>wwv_flow_imp.id(26028293558045664403)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028294936709664404)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028295277626664404)
,p_plug_template_id=>wwv_flow_imp.id(26028294936709664404)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028295576458664404)
,p_plug_template_id=>wwv_flow_imp.id(26028294936709664404)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028295821121664404)
,p_plug_template_id=>wwv_flow_imp.id(26028294936709664404)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028296150374664404)
,p_plug_template_id=>wwv_flow_imp.id(26028294936709664404)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028296303275664404)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'      #SUB_REGIONS#',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028296699912664405)
,p_plug_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028296910793664405)
,p_plug_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028297286121664405)
,p_plug_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028297535925664405)
,p_plug_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028297855740664405)
,p_plug_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028298119113664405)
,p_plug_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028298478933664405)
,p_plug_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028298795512664405)
,p_plug_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028299091070664405)
,p_plug_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/cards_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028300627551664406)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-CardsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Cards Container'
,p_internal_name=>'CARDS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2071277712695139743
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028300924980664407)
,p_plug_template_id=>wwv_flow_imp.id(26028300627551664406)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028301225567664407)
,p_plug_template_id=>wwv_flow_imp.id(26028300627551664406)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028301516804664407)
,p_plug_template_id=>wwv_flow_imp.id(26028300627551664406)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028302521206664407)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Region-header">',
'    <div class="t-Region-headerItems t-Region-headerItems--title">',
'      <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'    </div>',
'    <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
'  </div>',
'  <div role="region" aria-label="#TITLE#" class="t-Region-bodyWrap">',
'    <div class="t-Region-buttons t-Region-buttons--top">',
'      <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'      <div class="t-Region-buttons-right">#NEXT#</div>',
'    </div>',
'    <div class="t-Region-body">',
'      #BODY#',
'      <div class="t-Region-carouselRegions">#SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Region-buttons t-Region-buttons--bottom">',
'      <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'      <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#APEX_FILES#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028302829027664407)
,p_plug_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028303155485664407)
,p_plug_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028303435906664408)
,p_plug_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028303728569664408)
,p_plug_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028304024196664408)
,p_plug_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028304386155664408)
,p_plug_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028304633822664408)
,p_plug_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028304973872664408)
,p_plug_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028305200134664408)
,p_plug_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028305532316664408)
,p_plug_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028305854853664409)
,p_plug_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028312431808664412)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" data-region-id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--controls"><span class="t-Button t-Button--icon t-Button--hideShow"><span class="a-Icon _a-Collapsible-icon" aria-hidden="true"></span></span></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 id="#REGION_STATIC_ID#_heading" class="t-Region-title" data-apex-heading><button class="t-Region-titleButton" type="button">#TITLE#</button></h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>',
'<script>',
'    (() => {',
'        const region = document.getElementById(''#REGION_STATIC_ID#'').classList;',
'        const pref = sessionStorage.getItem(''ORA_WWV_apex.toggleCore.a_Collapsible_#REGION_ID#.&APP_ID..&APP_PAGE_ID..preferenceForExpanded'');',
'        if (region.contains(''js-useLocalStorage'')) { region.toggle(''is-collapsed'', pref === ''false''); }',
'    })();',
'</script>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028312707088664412)
,p_plug_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028313083699664412)
,p_plug_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028313389208664412)
,p_plug_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028313683703664412)
,p_plug_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028313922730664412)
,p_plug_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028314205473664412)
,p_plug_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028314532515664413)
,p_plug_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028314824520664413)
,p_plug_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028315126031664413)
,p_plug_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028315458194664413)
,p_plug_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028322313862664416)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY##SUB_REGIONS#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028322663912664416)
,p_plug_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028322997496664416)
,p_plug_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028323267881664416)
,p_plug_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028323592773664416)
,p_plug_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028323850136664417)
,p_plug_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028324161606664417)
,p_plug_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028326926397664418)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-top">',
'    <div class="t-HeroRegion-wrap">',
'      <div class="t-HeroRegion-col t-HeroRegion-col--beforeIcon">#UP#</div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--left">#REGION_IMAGE#<span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'        <h1 id="#REGION_STATIC_ID#_heading" class="t-HeroRegion-title" data-apex-heading>#TITLE#</h1>',
'        #BODY#',
'      </div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'    </div>',
'  </div>',
'  <div class="t-HeroRegion-bottom">#SMART_FILTERS#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_image_template=>'<img class="t-HeroRegion-icon" src="#REGION_IMAGE_URL#" alt="" />'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028327283801664418)
,p_plug_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028327536201664418)
,p_plug_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028327834843664418)
,p_plug_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_name=>'Search Field and Smart Filters'
,p_placeholder=>'SMART_FILTERS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028328139980664418)
,p_plug_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028328492935664419)
,p_plug_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_name=>'Up'
,p_placeholder=>'UP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/image
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028330423364664420)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="t-ImageRegion #REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#><img src="#REGION_IMAGE_URL#" alt="#REGION_IMAGE_ALT_TEXT#" #REGION_IMAGE_ATTRIBUTES# /></div>'
,p_page_plug_template_name=>'Image'
,p_internal_name=>'IMAGE'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ImageRegion--auto:t-ImageRegion--cover:t-ImageRegion--square:t-ImageRegion--noFilter'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1673953645642781634
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028330786462664420)
,p_plug_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028331049458664420)
,p_plug_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028335874693664422)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028336156860664422)
,p_plug_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028336403555664422)
,p_plug_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028336782387664422)
,p_plug_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028337008157664422)
,p_plug_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028337319433664423)
,p_plug_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028337648095664423)
,p_plug_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028337912531664423)
,p_plug_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028338212829664423)
,p_plug_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_drawer
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028340402038664424)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'  <div id="#REGION_STATIC_ID#" class="t-DrawerRegion js-dialog-class-ui-dialog--drawer #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'    <div class="t-DrawerRegion-wrap">',
'      <div class="t-DrawerRegion-bodyWrapperOut">',
'        <div class="t-DrawerRegion-bodyWrapperIn">',
'          <div class="t-DrawerRegion-body">#BODY##SUB_REGIONS#</div>',
'        </div>',
'      </div>',
'      <div class="t-DrawerRegion-buttons">',
'        <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'          <div class="t-ButtonRegion-wrap">',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--left">',
'              <div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div>',
'            </div>',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--right">',
'              <div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div>',
'            </div>',
'          </div>',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Inline Drawer'
,p_internal_name=>'INLINE_DRAWER'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal'
,p_preset_template_options=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1659526333647509386
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028340781893664424)
,p_plug_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028341093167664424)
,p_plug_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028341315807664424)
,p_plug_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028341685880664424)
,p_plug_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028341995212664424)
,p_plug_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028342274771664424)
,p_plug_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028342562573664425)
,p_plug_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028342829643664425)
,p_plug_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028345003361664426)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028345319860664426)
,p_plug_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028345604597664426)
,p_plug_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028345977983664426)
,p_plug_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028346205435664426)
,p_plug_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028346554130664426)
,p_plug_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028346838121664426)
,p_plug_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028347121034664426)
,p_plug_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028347436764664427)
,p_plug_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028350470734664428)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'    <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'    #PREVIOUS#',
'    #BODY#',
'    #SUB_REGIONS#',
'    #NEXT#',
'</div>',
''))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028350795443664428)
,p_plug_template_id=>wwv_flow_imp.id(26028350470734664428)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028351005386664428)
,p_plug_template_id=>wwv_flow_imp.id(26028350470734664428)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028351322315664428)
,p_plug_template_id=>wwv_flow_imp.id(26028350470734664428)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028351606213664429)
,p_plug_template_id=>wwv_flow_imp.id(26028350470734664428)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028351963685664429)
,p_plug_template_id=>wwv_flow_imp.id(26028350470734664428)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/item_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028352530643664429)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ItemContainer #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ItemContainer-start">#BUTTON_START#</div>',
'  <div class="t-ItemContainer-item">#BODY#</div>',
'  <div class="t-ItemContainer-end">#BUTTON_END#</div>',
'</div>'))
,p_page_plug_template_name=>'Item Container'
,p_internal_name=>'ITEM_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1568547778806319863
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028352836122664429)
,p_plug_template_id=>wwv_flow_imp.id(26028352530643664429)
,p_name=>'Item'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028353188660664429)
,p_plug_template_id=>wwv_flow_imp.id(26028352530643664429)
,p_name=>'Button End'
,p_placeholder=>'BUTTON_END'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028353418560664429)
,p_plug_template_id=>wwv_flow_imp.id(26028352530643664429)
,p_name=>'Button Start'
,p_placeholder=>'BUTTON_START'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028355044526664430)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    #REGION_IMAGE#',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <h2 class="t-Login-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_image_template=>'<img class="t-Login-logo" src="#REGION_IMAGE_URL#" alt="" data-app-icon />'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028355384593664430)
,p_plug_template_id=>wwv_flow_imp.id(26028355044526664430)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028355657581664430)
,p_plug_template_id=>wwv_flow_imp.id(26028355044526664430)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028355932438664431)
,p_plug_template_id=>wwv_flow_imp.id(26028355044526664430)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028356290021664431)
,p_plug_template_id=>wwv_flow_imp.id(26028355044526664430)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028356564031664431)
,p_plug_template_id=>wwv_flow_imp.id(26028355044526664430)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/search_results_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028357545618664431)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ResultsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ResultsRegion-search">#SEARCH_FIELD#</div>',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>',
''))
,p_page_plug_template_name=>'Search Results Container'
,p_internal_name=>'SEARCH_RESULTS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>11
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>1554292095258992441
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028357813727664431)
,p_plug_template_id=>wwv_flow_imp.id(26028357545618664431)
,p_name=>'Search Results'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028358186357664431)
,p_plug_template_id=>wwv_flow_imp.id(26028357545618664431)
,p_name=>'Search Field'
,p_placeholder=>'SEARCH_FIELD'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028358439592664432)
,p_plug_template_id=>wwv_flow_imp.id(26028357545618664431)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028360278293664432)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028360546595664433)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028360813846664433)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028361183204664433)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028361406125664433)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028361787382664433)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028362042503664433)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028362399967664433)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028362670509664433)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028362948559664433)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028363275653664434)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028363571722664434)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028363845135664434)
,p_plug_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028370017646664437)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">#SUB_REGIONS#</div>',
'</div>'))
,p_sub_plug_template=>'<div data-label="#SUB_REGION_TITLE!ATTR#" id="SR_#SUB_REGION_ID#">#SUB_REGION#</div>'
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028370351776664437)
,p_plug_template_id=>wwv_flow_imp.id(26028370017646664437)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028370637462664437)
,p_plug_template_id=>wwv_flow_imp.id(26028370017646664437)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028372684844664438)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<nav id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#">',
'  <div class="t-BreadcrumbRegion-top">',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--start">#UP#</div>',
'    <div class="t-BreadcrumbRegion-body">',
'      <div class="t-BreadcrumbRegion-breadcrumb">#BODY#</div>',
'        <div class="t-BreadcrumbRegion-title">',
'        <h1 id="#REGION_STATIC_ID#_heading" class="t-BreadcrumbRegion-titleText" data-apex-heading>#TITLE#</h1>',
'      </div>',
'    </div>',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--end">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-bottom">#SMART_FILTERS#</div>',
'</nav>',
''))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'navigation'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028372996957664438)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028373277951664438)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028373576174664438)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028373890180664438)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028374120573664439)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028374446356664439)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028374792195664439)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028375056762664439)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028375375982664439)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028375695559664439)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028375938947664439)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Search Field and Smart Filters'
,p_placeholder=>'SMART_FILTERS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028376214052664439)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028376505179664440)
,p_plug_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_name=>'Up'
,p_placeholder=>'UP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(26028377744095664440)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">#BODY#</div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028378049775664440)
,p_plug_template_id=>wwv_flow_imp.id(26028377744095664440)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028378381853664440)
,p_plug_template_id=>wwv_flow_imp.id(26028377744095664440)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028378638632664440)
,p_plug_template_id=>wwv_flow_imp.id(26028377744095664440)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028378968447664441)
,p_plug_template_id=>wwv_flow_imp.id(26028377744095664440)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(26028379202363664441)
,p_plug_template_id=>wwv_flow_imp.id(26028377744095664440)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028805248714664453)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02# is-current" aria-current="page">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'    <span class="t-BadgeList-label">#TEXT#</span>',
'    <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'    <span class="t-BadgeList-label">#TEXT#</span>',
'    <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028809299280664456)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#" aria-current="page">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028814880537664459)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'  #SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028816445809664460)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title" aria-current="page">#TEXT#</h3>',
'      <p class="t-MediaList-desc">#A01#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#A02#</span>',
'    </div>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#TEXT#</h3>',
'      <p class="t-MediaList-desc">#A01#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#A02#</span>',
'    </div>',
'  </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028819216230664461)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028820231521664461)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028820848243664462)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#" aria-current="page">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#" target="#A06#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#" target="#A06#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li class="#A02#" data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li class="#A02#" data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#" aria-current="page">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow" aria-hidden="true"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow" aria-hidden="true"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li class="#A02#" data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="#A02#" data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_a04_label=>'Title Attribute'
,p_a06_label=>'Link Target'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028821243168664462)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="false" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
'</li>'))
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'t-TreeNav--styleA:js-navCollapsed--hidden'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&"APP_TEXT$APEX.TEMPLATE.APPLICATION".">',
'  <div class="a-TreeView t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL".">',
'    <ul>',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    </ul>',
'  </div>',
'</div>',
'<script>',
'(() => {',
'  const pref = "ORA_WWV_apex.toggleCore.nav.&APP_ID..preferenceForExpanded",',
'        nav  = document.getElementById(''t_TreeNav'').classList,',
'        body = document.getElementById(''t_PageBody'');',
'  if ( !sessionStorage.getItem( pref ) ) { sessionStorage.setItem( pref, !nav.contains(''js-defaultCollapsed'') ); }',
'  if ( nav.contains(''js-navCollapsed--default'') ) {',
'      body?.classList.add(''js-navCollapsed--icons'');',
'      if ( sessionStorage.getItem( pref ) === "false" ) { body?.classList.add(''js-navCollapsed''); }',
'  }',
'  if ( sessionStorage.getItem( pref ) === "true" && window.matchMedia("(min-width: " + getComputedStyle(document.documentElement).getPropertyValue("--js-mq-lg") + ")").matches) { body?.classList.add(''js-navExpanded''); }',
'  for (const label of document.querySelectorAll(".a-TreeView .a-TreeView-label")) {',
'      label.textContent = label.textContent.replaceAll(/\[(.*?)\]/ig, '''');',
'  }',
'})();',
'</script>'))
,p_before_sub_list=>'<ul style="display:none">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
''))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="false" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
''))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028823085406664463)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item is-active #A03#" aria-current="page" id="#A01#">',
'  <a href="#LINK#" class="t-Tabs-link #A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-Tabs-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item #A03#" id="#A01#">',
'  <a href="#LINK#" class="t-Tabs-link #A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-Tabs-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028824677030664464)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" style="display:none;">',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028826624239664465)
,p_list_template_current=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a></li>'
,p_list_template_noncurrent=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul style="display: none">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028827658731664465)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavTabs-item #A03# is-active" aria-current="page" id="#A01#">',
'  <a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-NavTabs-label">#TEXT_ESC_SC#</span>',
'    <span class="t-NavTabs-badge #A05#">#A02#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavTabs-item #A03#" id="#A01#">',
'  <a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-NavTabs-label">#TEXT_ESC_SC#</span>',
'    <span class="t-NavTabs-badge #A05#">#A02#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(26028829219203664466)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" aria-current="step" id="#LIST_ITEM_ID#">',
'  <div class="t-WizardSteps-wrap" data-link="#LINK#">',
'    <span class="t-WizardSteps-marker" aria-hidden="true"></span>',
'    <span class="t-WizardSteps-label">#TEXT# <span aria-hidden="true" class="t-WizardSteps-labelState"></span></span>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#">',
'  <div class="t-WizardSteps-wrap" data-link="#LINK#">',
'    <span class="t-WizardSteps-marker" aria-hidden="true"></span>',
'    <span class="t-WizardSteps-label">#TEXT# <span aria-hidden="true" class="t-WizardSteps-labelState"></span></span>',
'  </div>',
'</li>'))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>'<ul aria-label="#CURRENT_PROGRESS#" class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028380239543664441)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon" aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028380461889664442)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-wrap u-color">',
'    <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'    <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028384483304664444)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028389819199664446)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'  <div class="t-Comments-icon">',
'    <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'  </div>',
'  <div class="t-Comments-body">',
'    <div class="t-Comments-info">',
'      #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'    </div>',
'    <div class="t-Comments-comment">',
'      #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028391087200664447)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/contextual_info
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028394283506664448)
,p_row_template_name=>'Contextual Info'
,p_internal_name=>'CONTEXTUAL_INFO'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContextualInfo-item">',
'  <span class="t-ContextualInfo-label">#COLUMN_HEADER#</span>',
'  <span class="t-ContextualInfo-value">#COLUMN_VALUE#</span>',
'</div>'))
,p_row_template_before_rows=>' <div class="t-ContextualInfo #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_reference_id=>2114325881116323585
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028395263054664449)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'      <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'    </div>',
'  </a>',
'</li>',
''))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'  <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'      <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'    </div>',
'  </div>',
'</li>',
''))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028398213648664450)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028398461440664450)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# #ACCESSIBLE_HEADERS#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ARIA_SORT# #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028801012896664451)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#" role="presentation">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#" role="presentation">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028801495050664452)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(26028803419480664453)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(26028830658309664467)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(26028830787624664467)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(26028830855379664467)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(26028830908013664467)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(26028831086162664467)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(26028831784139664468)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT#</div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>',
''))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(26028832249195664468)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemRequired-marker" aria-hidden="true"></div>',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_imp_shared.create_menu_template(
 p_id=>wwv_flow_imp.id(26028835059201664470)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active" aria-current="page"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_imp_shared.create_popup_lov_template(
 p_id=>wwv_flow_imp.id(26028835209112664470)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_imp_shared.create_calendar_template(
 p_id=>wwv_flow_imp.id(26028835125731664470)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(26028918499284664527)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(26028283489492664397)
,p_default_dialog_template=>wwv_flow_imp.id(26028278253851664395)
,p_error_template=>wwv_flow_imp.id(26028268242088664390)
,p_printer_friendly_template=>wwv_flow_imp.id(26028283489492664397)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(26028268242088664390)
,p_default_button_template=>wwv_flow_imp.id(26028833496671664469)
,p_default_region_template=>wwv_flow_imp.id(26028360278293664432)
,p_default_chart_template=>wwv_flow_imp.id(26028360278293664432)
,p_default_form_template=>wwv_flow_imp.id(26028360278293664432)
,p_default_reportr_template=>wwv_flow_imp.id(26028360278293664432)
,p_default_tabform_template=>wwv_flow_imp.id(26028360278293664432)
,p_default_wizard_template=>wwv_flow_imp.id(26028360278293664432)
,p_default_menur_template=>wwv_flow_imp.id(26028372684844664438)
,p_default_listr_template=>wwv_flow_imp.id(26028360278293664432)
,p_default_irr_template=>wwv_flow_imp.id(26028350470734664428)
,p_default_report_template=>wwv_flow_imp.id(26028398461440664450)
,p_default_label_template=>wwv_flow_imp.id(26028830908013664467)
,p_default_menu_template=>wwv_flow_imp.id(26028835059201664470)
,p_default_calendar_template=>wwv_flow_imp.id(26028835125731664470)
,p_default_list_template=>wwv_flow_imp.id(26028814880537664459)
,p_default_nav_list_template=>wwv_flow_imp.id(26028826624239664465)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(26028826624239664465)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(26028821243168664462)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(26028296303275664404)
,p_default_dialogr_template=>wwv_flow_imp.id(26028293558045664403)
,p_default_option_label=>wwv_flow_imp.id(26028830908013664467)
,p_default_required_label=>wwv_flow_imp.id(26028832249195664468)
,p_default_navbar_list_template=>wwv_flow_imp.id(26028820848243664462)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(26028917479118664524)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(26028917689004664524)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(26028917852541664524)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(26028918027740664524)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(26028918222623664524)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028258833392664384)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028259813814664385)
,p_theme_id=>42
,p_name=>'PAGE_POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the position of the page.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028269718588664391)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028270563286664392)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028290623981664402)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028291066130664402)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028291667258664402)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028292099307664402)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028299367105664406)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028299785514664406)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028306111058664409)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028306906523664409)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028308191979664410)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028309332422664410)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028309799127664410)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028311763511664411)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028319664980664415)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028320060398664415)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028320880720664415)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028324694664664417)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028325404880664417)
,p_theme_id=>42
,p_name=>'HEADING_FONT'
,p_display_name=>'Heading Font'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the font-family of the heading for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028326223426664418)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028328769585664419)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028329546803664419)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028331312747664420)
,p_theme_id=>42
,p_name=>'IMAGE_FILTER'
,p_display_name=>'Filter'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028332975423664421)
,p_theme_id=>42
,p_name=>'IMAGE_RATIO'
,p_display_name=>'Ratio'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028334179891664421)
,p_theme_id=>42
,p_name=>'IMAGE_SCALE'
,p_display_name=>'Scale'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028335142691664422)
,p_theme_id=>42
,p_name=>'IMAGE_SHAPE'
,p_display_name=>'Shape'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028338927781664423)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028344395964664425)
,p_theme_id=>42
,p_name=>'REGION_POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028347702466664427)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028353775380664429)
,p_theme_id=>42
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'This sets the vertical alignment of the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028356814436664431)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028358916496664432)
,p_theme_id=>42
,p_name=>'ICON_SIZE'
,p_display_name=>'Icon Size'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_null_text=>'Initial'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028359782169664432)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE'
,p_display_name=>'Result Appearance'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028370948357664437)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028371328288664437)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028372125304664438)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028379520571664441)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028380794307664442)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028381125982664442)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028383127467664443)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028384981665664444)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028386796909664445)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028387518615664445)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028388913530664446)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028390101643664446)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028391316495664447)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028391720431664447)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028392181862664447)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028392585767664447)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028392951402664448)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028393348376664448)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028393918244664448)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028394546886664448)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS'
,p_display_name=>'Display Items'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028394931689664448)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS'
,p_display_name=>'Display Labels'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028396918978664449)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028398743636664450)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028399393844664450)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028399773087664451)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028801783233664452)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028805580106664454)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028806759941664455)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028807983000664455)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028809759053664456)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028811710740664457)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028812398478664458)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028813771447664458)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028815996116664459)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028818140917664460)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028821949275664463)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028827923060664466)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028828562136664466)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028829539141664466)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028831268658664467)
,p_theme_id=>42
,p_name=>'REQUIRED_INDICATOR'
,p_display_name=>'Required Indicator'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028832978703664469)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028834176839664470)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028918638580664528)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028920007894664529)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028920474752664529)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028922045270664530)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028922442897664530)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028924005208664531)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028924449560664531)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028926062564664532)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028926488281664532)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028928081286664533)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028928460364664533)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028928806287664533)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028929248132664533)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028929696558664533)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028930051795664533)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028930462397664534)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028931814502664534)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028933236117664535)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028934507117664535)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028934927360664535)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028935380299664536)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028935749802664536)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Spacing'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028936567237664536)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028937182197664537)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE'
,p_display_name=>'Display Text Style'
,p_display_sequence=>400
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for Display Only & Read Only display items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028937541057664537)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028938183107664537)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028938507062664537)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028938966926664537)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028939739381664538)
,p_theme_id=>42
,p_name=>'CONTENT_PADDING'
,p_display_name=>'Content Padding'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the Content Body padding for the page.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028940149864664538)
,p_theme_id=>42
,p_name=>'SORT_ORDER_ALIGNMENT'
,p_display_name=>'Sort Order Alignment'
,p_display_sequence=>145
,p_template_types=>'REGION'
,p_help_text=>'Sets the alignment of the sort order item.'
,p_null_text=>'Default (Start)'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(26028940771415664538)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028259021975664385)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_EXTRA_LARGE'
,p_display_name=>'Extra Large'
,p_display_sequence=>40
,p_page_template_id=>wwv_flow_imp.id(26028257649573664382)
,p_css_classes=>'js-dialog-class-t-Drawer--xl'
,p_group_id=>wwv_flow_imp.id(26028258833392664384)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028259286677664385)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_imp.id(26028257649573664382)
,p_css_classes=>'js-dialog-class-t-Drawer--lg'
,p_group_id=>wwv_flow_imp.id(26028258833392664384)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028259463591664385)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(26028257649573664382)
,p_css_classes=>'js-dialog-class-t-Drawer--md'
,p_group_id=>wwv_flow_imp.id(26028258833392664384)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028259638655664385)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(26028257649573664382)
,p_css_classes=>'js-dialog-class-t-Drawer--sm'
,p_group_id=>wwv_flow_imp.id(26028258833392664384)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028260064430664386)
,p_theme_id=>42
,p_name=>'POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(26028257649573664382)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_group_id=>wwv_flow_imp.id(26028259813814664385)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028260257765664386)
,p_theme_id=>42
,p_name=>'POSITION_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(26028257649573664382)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutStart'
,p_group_id=>wwv_flow_imp.id(26028259813814664385)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028260471883664386)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(26028257649573664382)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028264103039664388)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(26028260537424664386)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028268196503664390)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(26028264204340664388)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028269982017664391)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(26028268242088664390)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_imp.id(26028269718588664391)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028270106362664391)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(26028268242088664390)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_imp.id(26028269718588664391)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028270347973664391)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_imp.id(26028268242088664390)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_imp.id(26028269718588664391)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028270700947664392)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(26028268242088664390)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_imp.id(26028270563286664392)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028274743132664393)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(26028270838477664392)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028278168944664395)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(26028274814230664393)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028279447341664395)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(26028278253851664395)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028279648277664395)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(26028278253851664395)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028283385879664397)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(26028279730436664395)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028286733529664398)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(26028283489492664397)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028288068649664399)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(26028286828486664398)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028288283849664399)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(26028286828486664398)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028290414824664402)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028290842307664402)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_imp.id(26028290623981664402)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028291200063664402)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_imp.id(26028291066130664402)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028291430392664402)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--removeHeading js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(26028291066130664402)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028291868246664402)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_imp.id(26028291667258664402)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028292202500664402)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(26028292099307664402)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028292435636664402)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_imp.id(26028290623981664402)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028292635843664403)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_imp.id(26028291667258664402)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028292879801664403)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_imp.id(26028290623981664402)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028293098758664403)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_imp.id(26028291667258664402)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028293269612664403)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_imp.id(26028290623981664402)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028293439045664403)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028288321891664399)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(26028292099307664402)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028299533010664406)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028299964233664406)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(26028299785514664406)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028300164464664406)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028300346109664406)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(26028299785514664406)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028300598795664406)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028296303275664404)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028301861296664407)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028300627551664406)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028302071913664407)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028300627551664406)
,p_css_classes=>'t-CardsRegion--styleA'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028302237711664407)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028300627551664406)
,p_css_classes=>'t-CardsRegion--styleB'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028302431151664407)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Style C'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028300627551664406)
,p_css_classes=>'t-CardsRegion--styleC'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028306346513664409)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_imp.id(26028306111058664409)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028306552627664409)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_imp.id(26028306111058664409)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028306771848664409)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_imp.id(26028306111058664409)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028307151284664409)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028307361880664409)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028307529486664409)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028307745822664409)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_imp.id(26028306111058664409)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028307988321664409)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028308310683664410)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028308558161664410)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028308771723664410)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028308970331664410)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028309128684664410)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028309572222664410)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_imp.id(26028309332422664410)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028309936439664410)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(26028309799127664410)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028310122295664411)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(26028309332422664410)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028310347153664411)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028310594240664411)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028310785541664411)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028310952214664411)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(26028309799127664410)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028311140444664411)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028311308652664411)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028311524979664411)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028311997962664411)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_imp.id(26028311763511664411)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028312159931664411)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_imp.id(26028311763511664411)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028312377350664411)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028302521206664407)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028315730293664413)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028316038230664413)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028316242312664413)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028316476953664413)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028316674708664414)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028316850013664414)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028317037441664414)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028317292130664414)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028317409857664414)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028317658232664414)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028317829772664414)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028318008546664414)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028318251343664414)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028318409075664414)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028318664101664414)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028318871979664414)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028319069984664414)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028319287395664415)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028319436696664415)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028319837288664415)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(26028319664980664415)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028320218645664415)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_imp.id(26028320060398664415)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028320469208664415)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(26028319664980664415)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028320655397664415)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(26028309799127664410)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028321075612664415)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_imp.id(26028320880720664415)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028321210900664415)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028321458930664415)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028321607827664415)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028321850877664416)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028322082157664416)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(26028309799127664410)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028322252284664416)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028312431808664412)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028324458679664417)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028324895042664417)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_imp.id(26028324694664664417)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028325055817664417)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_imp.id(26028324694664664417)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028325252348664417)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Small'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_imp.id(26028324694664664417)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028325632260664417)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_css_classes=>'t-ContentBlock--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(26028325404880664417)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028325835385664417)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(26028309332422664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028326012857664418)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_css_classes=>'t-ContentBlock--hideHeader'
,p_group_id=>wwv_flow_imp.id(26028309332422664410)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028326410311664418)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_imp.id(26028326223426664418)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028326669040664418)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_imp.id(26028326223426664418)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028326896220664418)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028322313862664416)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028328912397664419)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_imp.id(26028328769585664419)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028329135254664419)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028329364944664419)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_css_classes=>'t-HeroRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(26028325404880664417)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028329769666664419)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_imp.id(26028329546803664419)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028329971842664419)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_imp.id(26028329546803664419)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028330184250664419)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028330328815664420)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028326926397664418)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028331530641664420)
,p_theme_id=>42
,p_name=>'FILTER_BLUR'
,p_display_name=>'Blur'
,p_display_sequence=>430
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--blur'
,p_group_id=>wwv_flow_imp.id(26028331312747664420)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028331717313664420)
,p_theme_id=>42
,p_name=>'FILTER_GRAYSCALE'
,p_display_name=>'Grayscale'
,p_display_sequence=>410
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--grayscale'
,p_group_id=>wwv_flow_imp.id(26028331312747664420)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028331999633664420)
,p_theme_id=>42
,p_name=>'FILTER_INVERT'
,p_display_name=>'Invert'
,p_display_sequence=>440
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--invert'
,p_group_id=>wwv_flow_imp.id(26028331312747664420)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028332187590664420)
,p_theme_id=>42
,p_name=>'FILTER_NONE'
,p_display_name=>'None'
,p_display_sequence=>400
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--noFilter'
,p_group_id=>wwv_flow_imp.id(26028331312747664420)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028332391228664420)
,p_theme_id=>42
,p_name=>'FILTER_SATURATE'
,p_display_name=>'Saturate'
,p_display_sequence=>450
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--saturate'
,p_group_id=>wwv_flow_imp.id(26028331312747664420)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028332529254664420)
,p_theme_id=>42
,p_name=>'FILTER_SEPIA'
,p_display_name=>'Sepia'
,p_display_sequence=>420
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--sepia'
,p_group_id=>wwv_flow_imp.id(26028331312747664420)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028332765328664421)
,p_theme_id=>42
,p_name=>'IMAGE_STRETCH'
,p_display_name=>'Image Stretch'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--stretch'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028333187665664421)
,p_theme_id=>42
,p_name=>'RATIO_16_9'
,p_display_name=>'16:9 (Widescreen)'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--16x9'
,p_group_id=>wwv_flow_imp.id(26028332975423664421)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028333338575664421)
,p_theme_id=>42
,p_name=>'RATIO_1_1'
,p_display_name=>'1:1 (Square)'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--1x1'
,p_group_id=>wwv_flow_imp.id(26028332975423664421)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028333530370664421)
,p_theme_id=>42
,p_name=>'RATIO_2_1'
,p_display_name=>'2:1 (Univisium)'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--2x1'
,p_group_id=>wwv_flow_imp.id(26028332975423664421)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028333798556664421)
,p_theme_id=>42
,p_name=>'RATIO_4_3'
,p_display_name=>'4:3 (Standard)'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--4x3'
,p_group_id=>wwv_flow_imp.id(26028332975423664421)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028333984659664421)
,p_theme_id=>42
,p_name=>'RATIO_AUTO'
,p_display_name=>'Auto'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--auto'
,p_group_id=>wwv_flow_imp.id(26028332975423664421)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028334367212664421)
,p_theme_id=>42
,p_name=>'SCALE_CONTAIN'
,p_display_name=>'Contain'
,p_display_sequence=>200
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--contain'
,p_group_id=>wwv_flow_imp.id(26028334179891664421)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028334534909664421)
,p_theme_id=>42
,p_name=>'SCALE_COVER'
,p_display_name=>'Cover'
,p_display_sequence=>210
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--cover'
,p_group_id=>wwv_flow_imp.id(26028334179891664421)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028334765969664421)
,p_theme_id=>42
,p_name=>'SCALE_DOWN'
,p_display_name=>'Scale Down'
,p_display_sequence=>230
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--scale-down'
,p_group_id=>wwv_flow_imp.id(26028334179891664421)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028334980048664422)
,p_theme_id=>42
,p_name=>'SCALE_FILL'
,p_display_name=>'Fill'
,p_display_sequence=>220
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--fill'
,p_group_id=>wwv_flow_imp.id(26028334179891664421)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028335392356664422)
,p_theme_id=>42
,p_name=>'SHAPE_CIRCLE'
,p_display_name=>'Circle'
,p_display_sequence=>320
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--circle'
,p_group_id=>wwv_flow_imp.id(26028335142691664422)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028335527851664422)
,p_theme_id=>42
,p_name=>'SHAPE_ROUNDED'
,p_display_name=>'Rounded'
,p_display_sequence=>310
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--rounded'
,p_group_id=>wwv_flow_imp.id(26028335142691664422)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028335724852664422)
,p_theme_id=>42
,p_name=>'SHAPE_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>300
,p_region_template_id=>wwv_flow_imp.id(26028330423364664420)
,p_css_classes=>'t-ImageRegion--square'
,p_group_id=>wwv_flow_imp.id(26028335142691664422)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028338540468664423)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028338798836664423)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028339144821664423)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028339365536664423)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028339521392664423)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028339756549664423)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028339941449664424)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028340155666664424)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028340384653664424)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028335874693664422)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028343138688664425)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_EXTRA_LARGE'
,p_display_name=>'Extra Large'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_css_classes=>'js-dialog-class-t-Drawer--xl'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028343392590664425)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_css_classes=>'js-dialog-class-t-Drawer--lg'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028343565632664425)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_css_classes=>'js-dialog-class-t-Drawer--md'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028343754807664425)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_css_classes=>'js-dialog-class-t-Drawer--sm'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028343908985664425)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028344171909664425)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None (Auto)'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028344558417664425)
,p_theme_id=>42
,p_name=>'POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_group_id=>wwv_flow_imp.id(26028344395964664425)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028344736963664425)
,p_theme_id=>42
,p_name=>'POSITION_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutStart'
,p_group_id=>wwv_flow_imp.id(26028344395964664425)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028344950486664426)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(26028340402038664424)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028347971396664427)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_imp.id(26028347702466664427)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028348168366664427)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_imp.id(26028347702466664427)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028348305157664427)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028348500582664427)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_imp.id(26028347702466664427)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028348768887664427)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_imp.id(26028347702466664427)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028348960810664427)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028349124538664427)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_imp.id(26028347702466664427)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028349307315664427)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028349518306664427)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028349715573664428)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028349904348664428)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028350113535664428)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028350330849664428)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028345003361664426)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(26028338927781664423)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028352299755664429)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028350470734664428)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028352471651664429)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028350470734664428)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028353942418664430)
,p_theme_id=>42
,p_name=>'ALIGNMENT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>11
,p_region_template_id=>wwv_flow_imp.id(26028352530643664429)
,p_css_classes=>'t-ItemContainer--alignCenter'
,p_group_id=>wwv_flow_imp.id(26028353775380664429)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028354123378664430)
,p_theme_id=>42
,p_name=>'ALIGNMENT_END'
,p_display_name=>'End'
,p_display_sequence=>12
,p_region_template_id=>wwv_flow_imp.id(26028352530643664429)
,p_css_classes=>'t-ItemContainer--alignEnd'
,p_group_id=>wwv_flow_imp.id(26028353775380664429)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028354397201664430)
,p_theme_id=>42
,p_name=>'ALIGNMENT_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028352530643664429)
,p_css_classes=>'t-ItemContainer--alignStart'
,p_group_id=>wwv_flow_imp.id(26028353775380664429)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028354562157664430)
,p_theme_id=>42
,p_name=>'ALIGNMENT_STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>13
,p_region_template_id=>wwv_flow_imp.id(26028352530643664429)
,p_css_classes=>'t-ItemContainer--alignStretch'
,p_group_id=>wwv_flow_imp.id(26028353775380664429)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028354722395664430)
,p_theme_id=>42
,p_name=>'STACK_MOBILE'
,p_display_name=>'Stack on Mobile'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028352530643664429)
,p_css_classes=>'t-ItemContainer--stackMobile'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028354925592664430)
,p_theme_id=>42
,p_name=>'WRAP_ITEMS'
,p_display_name=>'Wrap Items'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(26028352530643664429)
,p_css_classes=>'t-ItemContainer--wrap'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028357013321664431)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028355044526664430)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_imp.id(26028356814436664431)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028357227878664431)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028355044526664430)
,p_css_classes=>'t-Login-region--headerTitle js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(26028356814436664431)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028357437573664431)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028355044526664430)
,p_css_classes=>'t-Login-region--headerHidden js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(26028356814436664431)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028358711431664432)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028357545618664431)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within search results.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028359113522664432)
,p_theme_id=>42
,p_name=>'ICON_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_imp.id(26028357545618664431)
,p_css_classes=>'t-ResultsRegion--iconLg'
,p_group_id=>wwv_flow_imp.id(26028358916496664432)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to large (64px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028359378624664432)
,p_theme_id=>42
,p_name=>'ICON_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(26028357545618664431)
,p_css_classes=>'t-ResultsRegion--iconMd'
,p_group_id=>wwv_flow_imp.id(26028358916496664432)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to medium (32px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028359513931664432)
,p_theme_id=>42
,p_name=>'ICON_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028357545618664431)
,p_css_classes=>'t-ResultsRegion--iconSm'
,p_group_id=>wwv_flow_imp.id(26028358916496664432)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to small (16px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028359947948664432)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE_BOXED'
,p_display_name=>'Boxed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028357545618664431)
,p_css_classes=>'t-ResultsRegion--boxed'
,p_group_id=>wwv_flow_imp.id(26028359782169664432)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028360164631664432)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE_FLAT'
,p_display_name=>'Flat'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(26028357545618664431)
,p_css_classes=>'t-ResultsRegion--flat'
,p_group_id=>wwv_flow_imp.id(26028359782169664432)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028364120777664434)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028364305965664434)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028364537543664434)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028364764392664434)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(26028306906523664409)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028364996610664434)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028365104543664434)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028365388154664434)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028365586922664435)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028365711610664435)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028365932850664435)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028366177875664435)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028366397103664435)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028366510681664435)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028366762522664435)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028366995597664435)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028367189214664435)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028367335792664435)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028367502501664436)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028367703858664436)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(26028308191979664410)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028367924368664436)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(26028309332422664410)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028368109246664436)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(26028309799127664410)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028368348764664436)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(26028309332422664410)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028368541890664436)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028368799196664436)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028368933579664436)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028369130491664436)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(26028309799127664410)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028369330213664436)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028369572844664436)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028369714920664437)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028369957678664437)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(26028360278293664432)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_imp.id(26028299367105664406)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028371196193664437)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028370017646664437)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_imp.id(26028370948357664437)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028371521157664438)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028370017646664437)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_imp.id(26028371328288664437)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028371730890664438)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028370017646664437)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028371944541664438)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028370017646664437)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_imp.id(26028371328288664437)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028372302169664438)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028370017646664437)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_imp.id(26028372125304664438)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028372571233664438)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028370017646664437)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_imp.id(26028372125304664438)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028376805271664440)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_imp.id(26028324694664664417)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028377029804664440)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_css_classes=>'t-BreadcrumbRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(26028325404880664417)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028377288637664440)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028377426194664440)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_imp.id(26028324694664664417)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028377661061664440)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028372684844664438)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028379797975664441)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(26028377744095664440)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_imp.id(26028379520571664441)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028379962179664441)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028377744095664440)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_imp.id(26028379520571664441)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028380194042664441)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(26028377744095664440)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028380955900664442)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(26028380794307664442)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028381359748664442)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028381595621664442)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(26028380794307664442)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028381721390664442)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028381913282664442)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(26028380794307664442)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028382141406664443)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028382377236664443)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028382518037664443)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(26028380794307664442)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028382753767664443)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(26028380794307664442)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028382998564664443)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028383369501664443)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(26028383127467664443)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028383596521664443)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028383704395664443)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028383972046664443)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028384101818664444)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(26028383127467664443)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028384332198664444)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028380461889664442)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028384777053664444)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028385139715664444)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(26028384981665664444)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028385310746664444)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028385558176664444)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(26028384981665664444)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028385771537664444)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028385909760664444)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(26028384981665664444)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028386115603664445)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028386383955664445)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(26028383127467664443)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028386525102664445)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(26028383127467664443)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028386980857664445)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(26028386796909664445)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028387112497664445)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(26028386796909664445)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028387364106664445)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(26028383127467664443)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028387780452664445)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(26028387518615664445)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028387949008664445)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(26028387518615664445)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028388172459664445)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028388376418664445)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(26028383127467664443)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028388531427664446)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028388765750664446)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(26028384981665664444)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028389138381664446)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(26028388913530664446)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028389310304664446)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(26028388913530664446)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028389532073664446)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028389744412664446)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028384483304664444)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028390368075664446)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028389819199664446)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_imp.id(26028390101643664446)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028390597521664446)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028389819199664446)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_imp.id(26028388913530664446)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028390712537664447)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028389819199664446)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_imp.id(26028388913530664446)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028390932252664447)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028389819199664446)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_imp.id(26028390101643664446)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028391560646664447)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(26028391087200664447)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_imp.id(26028391316495664447)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028391946204664447)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_imp.id(26028391087200664447)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_imp.id(26028391720431664447)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028392365001664447)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(26028391087200664447)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_imp.id(26028392181862664447)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028392756605664447)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028391087200664447)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_imp.id(26028392585767664447)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028393151992664448)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(26028391087200664447)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_imp.id(26028392951402664448)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028393519154664448)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028391087200664447)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_imp.id(26028393348376664448)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028393724123664448)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(26028391087200664447)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_imp.id(26028383127467664443)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028394122019664448)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028391087200664447)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_imp.id(26028393918244664448)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028394795259664448)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(26028394283506664448)
,p_css_classes=>'t-ContextualInfo-item--stacked'
,p_group_id=>wwv_flow_imp.id(26028394546886664448)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028395192116664449)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(26028394283506664448)
,p_css_classes=>'t-ContextualInfo-label--stacked'
,p_group_id=>wwv_flow_imp.id(26028394931689664448)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028395540092664449)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028395758510664449)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028395950839664449)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028396173673664449)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028396316416664449)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028396539911664449)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(26028388913530664446)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028396704563664449)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(26028388913530664446)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028397140668664449)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(26028396918978664449)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028397317684664450)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028397512843664450)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028397706404664450)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028397924827664450)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028398183527664450)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_imp.id(26028395263054664449)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028398991243664450)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028398461440664450)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(26028398743636664450)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028399160559664450)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028398461440664450)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_imp.id(26028398743636664450)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028399589336664451)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028398461440664450)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(26028399393844664450)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028399958667664451)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028398461440664450)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(26028399773087664451)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028800168575664451)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028398461440664450)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(26028399773087664451)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028800395147664451)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(26028398461440664450)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_imp.id(26028399773087664451)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028800589326664451)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028398461440664450)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_imp.id(26028399393844664450)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028800703361664451)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028398461440664450)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028800930853664451)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028398461440664450)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(26028399773087664451)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028801380391664451)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(26028801012896664451)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_imp.id(26028383127467664443)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028801938428664452)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028801495050664452)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028802198868664452)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028801495050664452)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028802372144664452)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028801495050664452)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028802565908664452)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028801495050664452)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028802788181664452)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028801495050664452)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028802959705664453)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(26028801495050664452)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028803154408664453)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(26028801495050664452)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028803359481664453)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(26028801495050664452)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028803715460664453)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(26028803419480664453)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028803981769664453)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028803419480664453)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028804185996664453)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028803419480664453)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028804330595664453)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(26028803419480664453)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028804565805664453)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(26028803419480664453)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(26028381125982664442)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028804777973664453)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(26028803419480664453)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028804931588664453)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(26028803419480664453)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028805102181664453)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(26028803419480664453)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(26028801783233664452)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028805762347664454)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028805962201664455)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028806179571664455)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028806384707664455)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028806557890664455)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028806956618664455)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028807150575664455)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028807310808664455)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028807512734664455)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028807775388664455)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028808176428664455)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(26028807983000664455)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028808391227664455)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(26028807983000664455)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028808505769664456)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(26028807983000664455)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028808740673664456)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028808920873664456)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(26028807983000664455)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028809169253664456)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(26028805248714664453)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(26028807983000664455)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028809514223664456)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028809936793664457)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(26028809759053664456)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028810110577664457)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028810315621664457)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(26028809759053664456)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028810586260664457)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028810740080664457)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(26028809759053664456)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028810934203664457)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028811136054664457)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028811315265664457)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028811523841664457)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028811949516664458)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(26028811710740664457)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028812190197664458)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028812500649664458)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(26028812398478664458)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028812799386664458)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(26028812398478664458)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028812916638664458)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028813171741664458)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028813361128664458)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028813577579664458)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(26028809759053664456)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028813911534664458)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(26028813771447664458)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028814102049664458)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(26028813771447664458)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028814387379664459)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(26028811710740664457)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028814596961664459)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028814797453664459)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028809299280664456)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028815163298664459)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028814880537664459)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028815395811664459)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028814880537664459)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028815560169664459)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028814880537664459)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028815741387664459)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028814880537664459)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028816147524664459)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028814880537664459)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(26028815996116664459)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028816323166664459)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028814880537664459)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(26028815996116664459)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028816768978664460)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028816972233664460)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028817110383664460)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028817379046664460)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028817526751664460)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028817751850664460)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(26028813771447664458)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028817909195664460)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(26028813771447664458)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028818390334664460)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(26028818140917664460)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028818583070664460)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028818740644664460)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028818912028664461)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028819185624664461)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(26028816445809664460)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028819599260664461)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(26028819216230664461)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028819756694664461)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028819216230664461)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028819977959664461)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(26028819216230664461)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028820134831664461)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028819216230664461)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028820536048664462)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028820231521664461)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028820790040664462)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028820231521664461)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028821173877664462)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028820848243664462)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028821546363664463)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(26028821243168664462)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028821706155664463)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028821243168664462)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028822130798664463)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028821243168664462)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_imp.id(26028821949275664463)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028822349802664463)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028821243168664462)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_imp.id(26028821949275664463)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028822508586664463)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028821243168664462)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028822776048664463)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028821243168664462)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028822967822664463)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028821243168664462)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028823300894664463)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028823085406664463)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_imp.id(26028812398478664458)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028823518087664463)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(26028823085406664463)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028823793579664464)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028823085406664463)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_imp.id(26028812398478664458)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028823976380664464)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028823085406664463)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_imp.id(26028818140917664460)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028824146861664464)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028823085406664463)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028824307100664464)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028823085406664463)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_imp.id(26028806759941664455)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028824577753664464)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(26028823085406664463)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_imp.id(26028818140917664460)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028824929749664464)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028824677030664464)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028825125647664464)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028824677030664464)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028825338350664464)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028824677030664464)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028825556387664464)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(26028824677030664464)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028825780459664465)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(26028824677030664464)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028825916341664465)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(26028824677030664464)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028826133659664465)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028824677030664464)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028826314164664465)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028824677030664464)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028826570543664465)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(26028824677030664464)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_imp.id(26028805580106664454)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028826913716664465)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(26028826624239664465)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028827130173664465)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(26028826624239664465)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028827319713664465)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(26028826624239664465)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028827517972664465)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(26028826624239664465)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028828154212664466)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(26028827658731664465)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_imp.id(26028827923060664466)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028828330281664466)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(26028827658731664465)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_imp.id(26028827923060664466)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028828779590664466)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028827658731664465)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_imp.id(26028828562136664466)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028828947027664466)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028827658731664465)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_imp.id(26028828562136664466)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028829189035664466)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028827658731664465)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_imp.id(26028828562136664466)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028829750740664466)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028829219203664466)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_imp.id(26028829539141664466)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028829973374664467)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(26028829219203664466)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_imp.id(26028829539141664466)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028830125197664467)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(26028829219203664466)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_imp.id(26028829539141664466)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028830306563664467)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(26028829219203664466)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028830569812664467)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(26028829219203664466)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028831424650664468)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(26028831086162664467)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(26028831268658664467)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028831674281664468)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(26028831086162664467)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(26028831268658664467)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028831972658664468)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(26028831784139664468)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(26028831268658664467)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028832124847664468)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(26028831784139664468)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(26028831268658664467)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028832460490664468)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(26028832249195664468)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(26028831268658664467)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028832631741664468)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(26028832249195664468)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(26028831268658664467)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028833115281664469)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(26028832774976664468)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(26028832978703664469)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028833335944664469)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(26028832774976664468)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(26028832978703664469)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028833779310664469)
,p_theme_id=>42
,p_name=>'HIDE_ICON_ON_DESKTOP'
,p_display_name=>'Hide Icon on Desktop'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_css_classes=>'t-Button--desktopHideIcon'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button icon on large screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028833970809664469)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028834342079664470)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(26028834176839664470)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028834577283664470)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(26028832978703664469)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028834760641664470)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_imp.id(26028834176839664470)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028834966752664470)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(26028832978703664469)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028918862499664528)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(26028918638580664528)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028919056234664528)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(26028918638580664528)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028919268289664528)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(26028918638580664528)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028919453113664529)
,p_theme_id=>42
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(26028918638580664528)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028919609644664529)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(26028918638580664528)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028919804174664529)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(26028918638580664528)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028920283996664529)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(26028920007894664529)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028920645760664529)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(26028920474752664529)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028920858369664529)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(26028920007894664529)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028921079072664529)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(26028920474752664529)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028921241965664529)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(26028920007894664529)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028921426733664530)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(26028920474752664529)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028921676916664530)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(26028920007894664529)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028921833264664530)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(26028920474752664529)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028922249853664530)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(26028922045270664530)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028922611469664530)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(26028922442897664530)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028922817681664530)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(26028922045270664530)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028923046100664530)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(26028922442897664530)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028923251977664530)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(26028922045270664530)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028923430782664531)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(26028922442897664530)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028923677597664531)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(26028922045270664530)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028923800532664531)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(26028922442897664530)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028924265882664531)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(26028924005208664531)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028924633750664531)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(26028924449560664531)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028924883193664531)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(26028924005208664531)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028925078756664531)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(26028924449560664531)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028925270740664531)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(26028924005208664531)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028925445066664531)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(26028924449560664531)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028925658926664531)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(26028924005208664531)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028925877771664531)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(26028924449560664531)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028926206840664532)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(26028926062564664532)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028926682688664532)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(26028926488281664532)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028926889576664532)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(26028926062564664532)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028927026710664532)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(26028926488281664532)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028927243338664532)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(26028926062564664532)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028927456453664532)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(26028926488281664532)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028927661754664532)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(26028926062564664532)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028927836034664533)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(26028926488281664532)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028928210868664533)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_imp.id(26028928081286664533)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028928667906664533)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_imp.id(26028928460364664533)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028929098534664533)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(26028928806287664533)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028929493773664533)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(26028929248132664533)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028929869552664533)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_imp.id(26028929696558664533)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028930225061664533)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_imp.id(26028930051795664533)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028930645866664534)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_imp.id(26028930462397664534)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028930828551664534)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_imp.id(26028930462397664534)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028931047544664534)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_imp.id(26028928460364664533)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028931261417664534)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(26028928806287664533)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028931475204664534)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_imp.id(26028929248132664533)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028931637489664534)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_imp.id(26028929696558664533)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028932005026664534)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_imp.id(26028931814502664534)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028932218879664534)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(26028931814502664534)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028932494565664534)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(26028931814502664534)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028932622314664534)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_imp.id(26028928081286664533)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028932855192664535)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_imp.id(26028930462397664534)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028933099197664535)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_imp.id(26028930051795664533)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028933578904664535)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_imp.id(26028933236117664535)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028933751925664535)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_imp.id(26028928081286664533)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028933905801664535)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_imp.id(26028930051795664533)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028934174267664535)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_imp.id(26028928081286664533)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028934342710664535)
,p_theme_id=>42
,p_name=>'DEFERRED_PAGE_RENDERING'
,p_display_name=>'Deferred Page Rendering'
,p_display_sequence=>1
,p_css_classes=>'t-DeferredRendering'
,p_template_types=>'PAGE'
,p_help_text=>'Defer page rendering until all page components have finished loading.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028934788789664535)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(26028934507117664535)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028935118071664536)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_imp.id(26028934927360664535)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028935586212664536)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(26028935380299664536)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028935994733664536)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'None'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_imp.id(26028935749802664536)
,p_template_types=>'REGION'
,p_help_text=>'Removes spacing between items.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028936167460664536)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_imp.id(26028935749802664536)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item spacing.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028936364276664536)
,p_theme_id=>42
,p_name=>'FORMSTANDARDPADDING'
,p_display_name=>'Standard'
,p_display_sequence=>5
,p_css_classes=>'t-Form--standardPadding'
,p_group_id=>wwv_flow_imp.id(26028935749802664536)
,p_template_types=>'REGION'
,p_help_text=>'Uses the standard spacing between items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028936727353664536)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_imp.id(26028936567237664536)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028936976402664536)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_imp.id(26028934927360664535)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028937365231664537)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE_BOLD'
,p_display_name=>'Bold'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--boldDisplay'
,p_group_id=>wwv_flow_imp.id(26028937182197664537)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028937781488664537)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_imp.id(26028937541057664537)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028937919090664537)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE_NORMAL'
,p_display_name=>'Normal'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--normalDisplay'
,p_group_id=>wwv_flow_imp.id(26028937182197664537)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028938340202664537)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_imp.id(26028938183107664537)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028938702257664537)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_imp.id(26028938507062664537)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028939194443664537)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_imp.id(26028938966926664537)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028939308900664537)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028939517443664538)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_imp.id(26028937541057664537)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028939987604664538)
,p_theme_id=>42
,p_name=>'REMOVE_PADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>1
,p_css_classes=>'t-PageBody--noContentPadding'
,p_group_id=>wwv_flow_imp.id(26028939739381664538)
,p_template_types=>'PAGE'
,p_help_text=>'Removes padding from the content region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028940311486664538)
,p_theme_id=>42
,p_name=>'SORT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>10
,p_css_classes=>'t-Region-orderBy--center'
,p_group_id=>wwv_flow_imp.id(26028940149864664538)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028940582047664538)
,p_theme_id=>42
,p_name=>'SORT_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_css_classes=>'t-Region-orderBy--end'
,p_group_id=>wwv_flow_imp.id(26028940149864664538)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(26028940924744664538)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_imp.id(26028940771415664538)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26028256293121664377)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>1
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(26028256567518664378)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/no_login
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(26028994405813673330)
,p_name=>'No_login'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_01=>'nobody'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_avatar
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(26028835408220664471)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$AVATAR'
,p_display_name=>'Avatar'
,p_supported_component_types=>'PARTIAL'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$AVATAR'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Avatar is-placeholder{if ?SHAPE/} #SHAPE!ATTR#{endif/}{if ?SIZE/} #SIZE!ATTR#{endif/}{if ?CSS_CLASSES/} #CSS_CLASSES!ATTR#{endif/}"></span>',
'{else/}',
'  {if ?LINK/}<a href="#LINK!ATTR#" #LINK_ATTR!RAW#{else/}<span{endif/} class="t-Avatar{if ?TYPE/} t-Avatar--{if ?IMAGE/}image{else/}{if ?INITIALS/}initials{else/}icon{endif/}{endif/}{endif/}{if ?SHAPE/} #SHAPE!ATTR#{endif/}{if ?SIZE/} #SIZE!ATTR#{end'
||'if/}{if ?ICON/} #ICON!ATTR#{else/} fa fa-user{endif/}{if ?CSS_CLASSES/} #CSS_CLASSES!ATTR#{endif/} u-color">{if IMAGE/}<img src="#IMAGE!ATTR#" alt="#IMAGE_ALT!ATTR#"{if ?IMAGE_ALT/} title="#IMAGE_ALT!ATTR#"{endif/} loading="lazy" />{else/}{if ?INITIA'
||'LS/}#INITIALS!RAW#{endif/}{endif/}{if ?LINK/}</a>{else/}</span>{endif/}',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_substitute_attributes=>true
,p_reference_id=>1564363394689414260
,p_subscribe_plugin_settings=>true
,p_help_text=>'Display an image, icon, or initials. Available as a partial template to display a single row.'
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028835718961664476)
,p_plugin_id=>wwv_flow_imp.id(26028835408220664471)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'IMAGE'
,p_demo_value=>'IMAGE'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028836026220664477)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028835718961664476)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'IMAGE'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028836430959664477)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028835718961664476)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'INITIALS'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028836873317664477)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028835718961664476)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'ICON'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028837266564664478)
,p_plugin_id=>wwv_flow_imp.id(26028835408220664471)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>false
,p_demo_value=>'#APEX_FILES#apex_ui/img/favicons/app-artwork-catalog.png'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028835718961664476)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'IMAGE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028837593103664478)
,p_plugin_id=>wwv_flow_imp.id(26028835408220664471)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'IMAGE_ALT'
,p_prompt=>'Image Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028837266564664478)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>'Enter a short description of the image or select a source column from the quick pick options. This will be used as alt text for the avatar image.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028837878102664478)
,p_plugin_id=>wwv_flow_imp.id(26028835408220664471)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028835718961664476)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'INITIALS'
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028838100191664478)
,p_plugin_id=>wwv_flow_imp.id(26028835408220664471)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028835718961664476)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ICON'
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028838497518664478)
,p_plugin_id=>wwv_flow_imp.id(26028835408220664471)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028838798953664478)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028838497518664478)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028839129880664478)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028838497518664478)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028839513237664479)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028838497518664478)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028839996976664479)
,p_plugin_id=>wwv_flow_imp.id(26028835408220664471)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028840236429664479)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028839996976664479)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028840602830664479)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028839996976664479)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028841053971664479)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028839996976664479)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028841458464664479)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028839996976664479)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028841808880664480)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028839996976664479)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028842223573664480)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028839996976664479)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028842604293664480)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028839996976664479)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028843029013664480)
,p_plugin_id=>wwv_flow_imp.id(26028835408220664471)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_common=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter classes to add to this component. You may add multiple classes by separating them with a space.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(27828886313579778223)
,p_plugin_id=>wwv_flow_imp.id(26028835408220664471)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_is_quick_pick=>true
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_badge
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(26028844395909664484)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$BADGE'
,p_display_name=>'Badge'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$BADGE'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Badge is-placeholder{if ?SIZE/} #SIZE!ATTR#{endif/}{if ?SHAPE/} #SHAPE!ATTR#{endif/}"></span>',
'{else/}',
'  <span class="t-Badge {if ?STATE/}t-Badge--#STATE!ATTR#{endif/} {if ?STYLE/}#STYLE!ATTR#{endif/} {if ?SIZE/}#SIZE!ATTR#{endif/} {if ?SHAPE/}#SHAPE!ATTR#{endif/}" role="status" aria-label="#LABEL!ATTR# #VALUE!ATTR#" title="#LABEL!ATTR# #VALUE!ATTR#">',
'    {if ?ICON/}<span class="t-Badge-icon #ICON!ATTR#" aria-hidden="true"></span>{endif/}',
'    {if LABEL_DISPLAY/}<span class="t-Badge-label">#LABEL!RAW#</span>{endif/}',
'    <span class="t-Badge-value">#VALUE!RAW#</span>',
'  </span>',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>true
,p_api_version=>2
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if !APEX$HAS_MESSAGE/}',
'  <ul class="t-Badges #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
'{endif/}'))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Badges-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>1
,p_substitute_attributes=>true
,p_reference_id=>1564377533892414278
,p_subscribe_plugin_settings=>true
,p_help_text=>'Display content within a badge. Available for multiple report rows or a single row.'
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028844674682664485)
,p_plugin_id=>wwv_flow_imp.id(26028844395909664484)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>true
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028844964953664485)
,p_plugin_id=>wwv_flow_imp.id(26028844395909664484)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028845293548664485)
,p_plugin_id=>wwv_flow_imp.id(26028844395909664484)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028845583307664485)
,p_plugin_id=>wwv_flow_imp.id(26028844395909664484)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028845892446664485)
,p_plugin_id=>wwv_flow_imp.id(26028844395909664484)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028846136767664486)
,p_plugin_id=>wwv_flow_imp.id(26028844395909664484)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028846474272664486)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028846136767664486)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028846863960664486)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028846136767664486)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028847218822664486)
,p_plugin_id=>wwv_flow_imp.id(26028844395909664484)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028847590934664486)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028847218822664486)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028847977021664486)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028847218822664486)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028848337556664486)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028847218822664486)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028848743883664487)
,p_plugin_id=>wwv_flow_imp.id(26028844395909664484)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028849032522664487)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028848743883664487)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028849428843664487)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028848743883664487)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028849871174664487)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028848743883664487)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_button
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(26028850279362664487)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$BUTTON'
,p_display_name=>'Button'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$BUTTON'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if MENU_ID/}<button type="button" data-menu="#MENU_ID!ATTR#"{else/}<a href="#LINK_URL!ATTR#" #LINK_ATTR!RAW#{endif/} class="t-Button{if IS_HOT/} t-Button--hot{endif/}{if IS_ICON_ONLY/} t-Button--noLabel t-Button--icon{else/}{if ICON_CLASSES/} t-Butt'
||'on--iconLeft{endif/}{endif/} #CSS_CLASSES!ATTR#" title="#LABEL!ATTR#" {if IS_DISABLED/} disabled{endif/}>',
'  {if ?ICON_CLASSES/}<span class="t-Icon t-Icon--left #ICON_CLASSES!ATTR#" aria-hidden="true"></span>{endif/}<span class="t-Button-label">#LABEL!RAW#</span>',
'{if MENU_ID/}</button>{else/}</a>{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_substitute_attributes=>true
,p_reference_id=>1568467215199837453
,p_subscribe_plugin_settings=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028850557354664488)
,p_plugin_id=>wwv_flow_imp.id(26028850279362664487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028850829627664488)
,p_plugin_id=>wwv_flow_imp.id(26028850279362664487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'LINK_URL'
,p_prompt=>'Link URL'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028851185728664488)
,p_plugin_id=>wwv_flow_imp.id(26028850279362664487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'LINK_ATTR'
,p_prompt=>'Link Attribute'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028851480296664488)
,p_plugin_id=>wwv_flow_imp.id(26028850279362664487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON_CLASSES'
,p_prompt=>'Icon Classes'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028851770697664488)
,p_plugin_id=>wwv_flow_imp.id(26028850279362664487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028852014834664488)
,p_plugin_id=>wwv_flow_imp.id(26028850279362664487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'IS_DISABLED'
,p_prompt=>'Is Disabled'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028852340384664488)
,p_plugin_id=>wwv_flow_imp.id(26028850279362664487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'IS_HOT'
,p_prompt=>'Is Hot'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028852685163664489)
,p_plugin_id=>wwv_flow_imp.id(26028850279362664487)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'IS_ICON_ONLY'
,p_prompt=>'Is Icon Only'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_comments
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(26028852946963664489)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$COMMENTS'
,p_display_name=>'Comments'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$COMMENTS'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-Comments-item">',
'    {if DISPLAY_AVATAR%assigned/}',
'      <div class="t-Comments-icon">',
'        {with/}',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-Comments-body">',
'      <div class="t-Comments-info">',
'        <span class="t-Comments-user is-placeholder"></span>',
'      </div>',
'      <div class="t-Comments-comment is-placeholder"></div>',
'    </div>',
'  </div>',
'{else/}',
'  <div class="t-Comments-item">',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-Comments-icon">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          IMAGE_ALT:=#AVATAR_IMAGE_ALT#',
'          ICON:=#AVATAR_ICON#',
'          INITIALS:=#AVATAR_INITIALS#',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'          CSS_CLASSES:=u-color',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR!RAW#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-Comments-body">',
'      <div class="t-Comments-info">',
'        <span class="t-Comments-user">{if USER_NAME_LINK/}<a href="#USER_NAME_LINK!ATTR#" #USER_NAME_LINK_ATTR!RAW#>{endif/}#USER_NAME!RAW#{if USER_NAME_LINK/}</a>{endif/}</span>',
'        {if COMMENT_DATE/}<span class="t-Comments-date">#COMMENT_DATE!RAW#</span>{endif/}',
'        {if ACTIONS/}<span class="t-Comments-actions">#ACTIONS!RAW#</span>{endif/}',
'      </div>',
'      <div class="t-Comments-comment">',
'        #COMMENT_TEXT!RAW#',
'        {if ATTRIBUTES/}<div class="t-Comments-attributes">#ATTRIBUTES!RAW#</div>{endif/}',
'      </div>',
'    </div>',
'  </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Comments{if ?STYLE/} #STYLE!ATTR#{endif/} {if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
''))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_reference_id=>1564386865908414285
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display user comments and status updates. Supports avatars. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(27828738383463696205)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_title=>'Avatar'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028853432612664489)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'COMMENT_TEXT'
,p_prompt=>'Comment Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Praesent vel felis rutrum erat elementum viverra sit amet non odio. Cras vel auctor eros, in malesuada dolor. Nulla tellus magna, ornare consectetur purus id, volutpat egestas felis. Proin lobortis risus massa, nec faucibus arcu malesuada a. Nunc sed'
||' gravida urna. Fusce at ligula sed erat consequat pharetra.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing text for user comments.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028853722219664490)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'USER_NAME'
,p_prompt=>'User Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Joel'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be displayed as the user name associated with a comment.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028854095278664490)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'COMMENT_DATE'
,p_prompt=>'Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'5 minutes ago'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2:DATE'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing a date, date range, or time.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028854383839664490)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ATTRIBUTES'
,p_prompt=>'Attributes'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the comment attributes.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028854692355664490)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'initials'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028859246673664492)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27828738383463696205)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028854967604664490)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028854692355664490)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028855339286664490)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028854692355664490)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028855778285664491)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028854692355664490)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028856187838664491)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028854692355664490)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(27828738383463696205)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028856446025664491)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_IMAGE_ALT'
,p_prompt=>'Image Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028856187838664491)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(27828738383463696205)
,p_help_text=>'Enter a short description of the image or select a source column from the quick pick options. This will be used as alt text for the avatar image.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028856704726664491)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'JK'
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028854692355664490)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(27828738383463696205)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028857093109664491)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028854692355664490)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(27828738383463696205)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028857305213664491)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028859246673664492)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27828738383463696205)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028857623974664492)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028857305213664491)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028858081986664492)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028857305213664491)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028858484987664492)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028857305213664491)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028858897669664492)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028857305213664491)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028859246673664492)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028859515326664492)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Comments--basic'
,p_demo_value=>'t-Comments--chat'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Set the style of the comments.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028859873864664492)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028859515326664492)
,p_display_sequence=>10
,p_display_value=>'Basic'
,p_return_value=>'t-Comments--basic'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028860255955664493)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028859515326664492)
,p_display_sequence=>20
,p_display_value=>'Chat (Speech Bubbles)'
,p_return_value=>'t-Comments--chat'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028860631618664493)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(27828871050896797708)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_name=>'Link'
,p_type=>'BUTTON'
,p_template=>'{if !IS_DISABLED/}<a {if CSS_CLASSES/}class="#CSS_CLASSES#"{endif/} href="#LINK_URL#" #LINK_ATTR!RAW#>#LABEL!RAW#</a>{endif/}'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(27828870459391790251)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_name=>'Actions'
,p_static_id=>'ACTIONS'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(27828926083061772130)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>20
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(27829078300774642901)
,p_plugin_id=>wwv_flow_imp.id(26028852946963664489)
,p_name=>'User Name Link'
,p_static_id=>'USER_NAME_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_content_row
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(26028862998048664496)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$CONTENT_ROW'
,p_display_name=>'Content Row'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$CONTENT_ROW'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-ContentRow-wrap" aria-hidden="true">',
'    {if ?SELECTION%assigned/}<div class="t-ContentRow-selection is-placeholder"></div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH!ATTR#">',
'        {with/}',
'          LABEL:=',
'          VALUE:=',
'          SIZE:=#BADGE_SIZE#',
'          SHAPE:=#BADGE_SHAPE#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar">',
'        {with/}',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE%assigned/}<div class="t-ContentRow-overline is-placeholder"></div>{endif/}',
'        {if ?TITLE%assigned/}<div class="t-ContentRow-title is-placeholder"></div>{endif/}',
'        {if ?DESCRIPTION%assigned/}<div class="t-ContentRow-description is-placeholder"></div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc is-placeholder"></div>{endif/}',
'      {if ?PRIMARY_ACTIONS%assigned/}<div class="t-ContentRow-actions is-placeholder"></div>{endif/}',
'    </div>',
'  </div>',
'{else/}',
'  {if ?FULL_ROW_LINK/}<a class="t-ContentRow-fullLink" href="#FULL_ROW_LINK!ATTR#" #FULL_ROW_LINK_ATTR!RAW#></a>{endif/}',
'  <div class="t-ContentRow-wrap">',
'    {if ?SELECTION%assigned/}<div class="t-ContentRow-selection">#SELECTION!RAW#</div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH!ATTR#">',
'        {with/}',
'          LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'          LABEL:=#BADGE_LABEL#',
'          VALUE:=#BADGE_VALUE#',
'          ICON:=#BADGE_ICON#',
'          STATE:=#BADGE_STATE#',
'          SIZE:=#BADGE_SIZE#',
'          STYLE:=#BADGE_STYLE#',
'          SHAPE:=#BADGE_SHAPE#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar" aria-hidden="true">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          IMAGE_ALT:=#AVATAR_IMAGE_ALT#',
'          INITIALS:=#AVATAR_INITIALS#',
'          ICON:=#AVATAR_ICON#',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR!RAW#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE/}<div class="t-ContentRow-overline">#OVERLINE!RAW#</div>{endif/}',
'        {if ?TITLE/}<h3 class="t-ContentRow-title">{if ?TITLE_LINK/}<a href="#TITLE_LINK!ATTR#" #TITLE_LINK_ATTR!RAW#>{endif/}#TITLE!RAW#{if ?TITLE_LINK/}</a>{endif/}</h3>{endif/}',
'        {if ?DESCRIPTION/}<div class="t-ContentRow-description">#DESCRIPTION!RAW#</div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc">#MISC!RAW#</div>{endif/}',
'      {if ?PRIMARY_ACTIONS/}<div class="t-ContentRow-actions">#PRIMARY_ACTIONS#</div>{endif/}',
'    </div>',
'  </div>',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-ContentRow{if ?STYLE/} #STYLE!ATTR#{endif/}{if ?ALIGN/} #ALIGN!ATTR#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-ContentRow-item{if ?ITEM_CLASSES/} #ITEM_CLASSES#{endif/}" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_reference_id=>1568468153344837456
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display content in a formatted row with a title, description, and more. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(27956100794812736191)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(27956100239800736190)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028863605017664497)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'OVERLINE'
,p_prompt=>'Overline'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_demo_value=>'Category'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to display at the top of each row above the title and description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028863936896664497)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the title in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028864280137664497)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the description in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028864550251664497)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'MISC'
,p_prompt=>'Miscellaneous'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter miscellaneous content such as additional text and/or column substitution strings to display in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028864857725664497)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028865103031664497)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028865438397664497)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028864857725664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27956100794812736191)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028865714983664498)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028865438397664497)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028866151596664498)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028865438397664497)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028866581144664498)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028865438397664497)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028866979236664498)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865438397664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(27956100794812736191)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028867264993664498)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_IMAGE_ALT'
,p_prompt=>'Image Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028866979236664498)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(27956100794812736191)
,p_help_text=>'Enter a short description of the image or select a source column from the quick pick options. This will be used as alt text for the avatar image.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028867596185664498)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865438397664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(27956100794812736191)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028867898477664499)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865438397664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(27956100794812736191)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028868138628664499)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028864857725664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27956100794812736191)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028868456605664499)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028868138628664499)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028868873903664499)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028868138628664499)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028869258323664499)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028868138628664499)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028869641986664499)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028868138628664499)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028870039508664499)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865103031664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(27956100239800736190)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028870350047664500)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865103031664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(27956100239800736190)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028870630568664500)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865103031664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(27956100239800736190)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028870945937664500)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865103031664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(27956100239800736190)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028871222040664500)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865103031664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(27956100239800736190)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028871598084664500)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865103031664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27956100239800736190)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028871835926664500)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028871598084664500)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028872240734664501)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028871598084664500)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028872643396664501)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865103031664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27956100239800736190)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028872923507664501)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028872643396664501)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028873360656664501)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028872643396664501)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028873745215664501)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028872643396664501)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028874103414664501)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'AVATAR_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028864857725664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27956100794812736191)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028874412894664501)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028874103414664501)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xxs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028874828866664502)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028874103414664501)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028875219071664502)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028874103414664501)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028875679527664502)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028874103414664501)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028876028517664502)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028874103414664501)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028876487469664502)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028874103414664501)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028876835748664502)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028874103414664501)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028877223387664503)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'BADGE_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865103031664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27956100239800736190)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028877545487664503)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028877223387664503)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028877920520664503)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028877223387664503)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028878307630664503)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028877223387664503)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028878721235664503)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>220
,p_static_id=>'BADGE_COL_WIDTH'
,p_prompt=>'Column Width'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-ContentRow-badge--md'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028865103031664497)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27956100239800736190)
,p_null_text=>'Default'
,p_help_text=>'Set the width of the content row columns. Default width is medium.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028879022618664503)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028878721235664503)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-ContentRow-badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028879481819664504)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028878721235664503)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-ContentRow-badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028879895158664504)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028878721235664503)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-ContentRow-badge--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028880274346664504)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028878721235664503)
,p_display_sequence=>40
,p_display_value=>'Auto'
,p_return_value=>'t-ContentRow-badge--auto'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028880690039664504)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>23
,p_display_sequence=>230
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(27837314685028557805)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_name=>'Button'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'LINK_URL:=#LINK_URL#',
'LINK_ATTR:=#LINK_ATTR!RAW#',
'LABEL:=#LABEL!RAW#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'IS_DISABLED:=#IS_DISABLED#',
'{apply THEME$BUTTON/}'))
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(27837315944548561953)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_name=>'Menu'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'MENU_ID:=#MENU_ID#',
'LABEL:=#LABEL!RAW#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_DISABLED:=#IS_DISABLED#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'{apply THEME$BUTTON/}',
'#MENU#'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(27823721056354151072)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(27824400357084234176)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_name=>'Full Row Link'
,p_static_id=>'FULL_ROW_LINK'
,p_display_sequence=>40
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(27837312749961512819)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(27837314083351526676)
,p_plugin_id=>wwv_flow_imp.id(26028862998048664496)
,p_name=>'Primary Actions'
,p_static_id=>'PRIMARY_ACTIONS'
,p_display_sequence=>20
,p_type=>'TEMPLATE'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_media_list
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(26028885323569664507)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$MEDIA_LIST'
,p_display_name=>'Media List'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$MEDIA_LIST'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-MediaList-itemWrap">',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-MediaList-iconWrap" aria-hidden="true">',
'        {with/}',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-MediaList-body">',
'      {if ?TITLE%assigned/}<div class="t-MediaList-title is-placeholder"></div>{endif/}',
'      {if ?DESCRIPTION%assigned/}<div class="t-MediaList-desc is-placeholder"></div>{endif/}',
'    </div>',
'    {if DISPLAY_BADGE%assigned/}',
'      {with/}',
'        LABEL:=',
'        VALUE:=',
'        SHAPE:=#BADGE_SHAPE#',
'        STYLE:=#BADGE_STYLE#',
'      {apply THEME$BADGE/}',
'    {endif/}',
'  </div>',
'{else/}',
'  {if LINK/}<a href="#LINK!ATTR#" #LINK_ATTR!RAW#{else/}<div{endif/} class="t-MediaList-itemWrap{if ?DESCRIPTION/} t-MediaList-itemWrap--showDesc{endif/}">',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-MediaList-iconWrap" aria-hidden="true">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          IMAGE_ALT:=#AVATAR_IMAGE_ALT#',
'          ICON:=#AVATAR_ICON#',
'          INITIALS:=#AVATAR_INITIALS#',
'          CSS_CLASSES:=u-color',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-MediaList-body">',
'      {if ?TITLE/}<h3 class="t-MediaList-title">#TITLE!RAW#</h3>{endif/}',
'      {if ?DESCRIPTION/}<p class="t-MediaList-desc">#DESCRIPTION!RAW#</p>{endif/}',
'    </div>',
'    {if DISPLAY_BADGE/}',
'      {with/}',
'        LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'        LABEL:=#BADGE_LABEL#',
'        VALUE:=#BADGE_VALUE#',
'        ICON:=#BADGE_ICON#',
'        STATE:=#BADGE_STATE#',
'        SIZE:=t-Badge--md',
'        STYLE:=#BADGE_STYLE#',
'        SHAPE:=#BADGE_SHAPE#',
'      {apply THEME$BADGE/}',
'    {endif/}',
'  {if LINK/}</a>{else/}</div>{endif/}',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-MediaList t-MediaList--showIcons{if ?LAYOUT/} #LAYOUT!ATTR#{endif/}{if ?SIZE/} #SIZE!ATTR#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-MediaList-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_reference_id=>1564403634518414297
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display report content in a formatted media list. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(27828903145426548155)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(27828903700438548156)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028886047700664508)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used as the title.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028886310149664508)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used for the row description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028886689335664508)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028886977893664508)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028887243883664508)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028886689335664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27828903700438548156)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028887524149664509)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028887243883664508)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028887973446664509)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028887243883664508)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028888302446664509)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028887243883664508)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028888733629664509)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028887243883664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(27828903700438548156)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028889018291664509)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_IMAGE_ALT'
,p_prompt=>'Image Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028888733629664509)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(27828903700438548156)
,p_help_text=>'Enter a short description of the image or select a source column from the quick pick options. This will be used as alt text for the avatar image.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028889388993664509)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028887243883664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(27828903700438548156)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028889639092664509)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028887243883664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(27828903700438548156)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028889999449664510)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028886689335664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27828903700438548156)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028890297769664510)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028889999449664510)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028890626572664510)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028889999449664510)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028891038803664510)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028889999449664510)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028891460303664510)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028889999449664510)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028891807098664510)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028886977893664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(27828903145426548155)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028892179851664510)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028886977893664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(27828903145426548155)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028892409815664511)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028886977893664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(27828903145426548155)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028892795687664511)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028886977893664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(27828903145426548155)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028893065378664511)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028886977893664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(27828903145426548155)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028893300561664511)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028886977893664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27828903145426548155)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028893664145664511)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028893300561664511)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028894014291664512)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028893300561664511)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028894431824664512)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028886977893664508)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(27828903145426548155)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028894772531664512)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028894431824664512)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028895106936664512)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028894431824664512)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028895541326664512)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028894431824664512)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028895909274664512)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'LAYOUT'
,p_prompt=>'Layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the number of grid columns the media list content will display in. Horizontal Span will display all columns in a single horizontal row.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028896202582664513)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028895909274664512)
,p_display_sequence=>10
,p_display_value=>'2 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--2cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028896607331664513)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028895909274664512)
,p_display_sequence=>20
,p_display_value=>'3 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--3cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028897010376664513)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028895909274664512)
,p_display_sequence=>30
,p_display_value=>'4 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--4cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028897427429664513)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028895909274664512)
,p_display_sequence=>40
,p_display_value=>'5 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--5cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028897864274664513)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028895909274664512)
,p_display_sequence=>50
,p_display_value=>'Horizontal Span'
,p_return_value=>'t-MediaList--horizontal'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028898248787664513)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of media list items.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028898538442664513)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028898248787664513)
,p_display_sequence=>10
,p_display_value=>'Large'
,p_return_value=>'t-MediaList--large force-fa-lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028898935518664514)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(27829106752595694784)
,p_plugin_id=>wwv_flow_imp.id(26028885323569664507)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_timeline
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(26028902005286664516)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$TIMELINE'
,p_display_name=>'Timeline'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$TIMELINE'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div{if ?CSS_CLASSES/} class="#CSS_CLASSES#"{endif/}{if ?ATTRIBUTES/}#ATTRIBUTES!RAW#{endif/}>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      {if DISPLAY_AVATAR/}',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          IMAGE_ALT:=#AVATAR_IMAGE_ALT#',
'          INITIALS:=#AVATAR_INITIALS#',
'          ICON:=#AVATAR_ICON#',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR!RAW#',
'        {apply THEME$AVATAR/}',
'      {endif/}',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">{if ?USER_NAME_LINK/}<a href="#USER_NAME_LINK!ATTR#" #USER_NAME_LINK_ATTR!RAW#>{endif/}#USER_NAME!RAW#{if ?USER_NAME_LINK/}</a>{endif/}</span>',
'        <span class="t-Timeline-date">#DATE!RAW#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      {if DISPLAY_BADGE/}',
'        <div class="t-Timeline-typeWrap">',
'          {with/}',
'            LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'            LABEL:=#BADGE_LABEL#',
'            VALUE:=#BADGE_VALUE#',
'            ICON:=#BADGE_ICON#',
'            STATE:=#BADGE_STATE#',
'          {apply THEME$BADGE/}',
'        </div>',
'      {endif/}',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">{if ?TITLE_LINK/}<a href="#TITLE_LINK!ATTR#" #TITLE_LINK_ATTR!RAW#>{endif/}#TITLE!RAW#{if ?TITLE_LINK/}</a>{endif/}</h3>',
'        {if ?DESCRIPTION/}<p class="t-Timeline-desc">#DESCRIPTION!RAW#</p>{endif/}',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline{if ?STYLE/} #STYLE#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
''))
,p_report_row_template=>'<li class="t-Timeline-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_reference_id=>1601817836543095628
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display a series of events. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(28175984959387771467)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(28175985514399771468)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028902763693664516)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'USER_NAME'
,p_prompt=>'User Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'User'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be displayed as the user name associated with a timeline event.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028903063764664517)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DATE'
,p_prompt=>'Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'1 hour ago'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing a date, date range, or time.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028903335435664517)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used as the title.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028903689198664517)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used for the row description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028903913885664517)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028904201413664517)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028904506103664517)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028903913885664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(28175985514399771468)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028904868298664518)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028904506103664517)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028905218699664518)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028904506103664517)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028905658845664518)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028904506103664517)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028906016711664518)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028904506103664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(28175985514399771468)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028906356568664518)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_IMAGE_ALT'
,p_prompt=>'Image Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028906016711664518)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(28175985514399771468)
,p_help_text=>'Enter a short description of the image or select a source column from the quick pick options. This will be used as alt text for the avatar image.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028906654182664518)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028904506103664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(28175985514399771468)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028906961538664518)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028904506103664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(28175985514399771468)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028907295577664519)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--circle'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028903913885664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(28175985514399771468)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028907597120664519)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028907295577664519)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028907920978664519)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028907295577664519)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028908351805664519)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028907295577664519)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028908733680664519)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028907295577664519)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028909186879664520)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028904201413664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(28175984959387771467)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028909468833664520)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Closed'
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028904201413664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(28175984959387771467)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028909720638664520)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'is-removed'
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028904201413664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(28175984959387771467)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028910065791664520)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_demo_value=>'fa-check-circle-o'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028904201413664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(28175984959387771467)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028910347992664520)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028904201413664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(28175984959387771467)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028910680145664520)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028904201413664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(28175984959387771467)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028910967730664520)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028910680145664520)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028911398323664521)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028910680145664520)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028911754928664521)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(26028904201413664517)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(28175984959387771467)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028912000966664521)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028911754928664521)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028912485957664521)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028911754928664521)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028912801065664521)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028911754928664521)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028913287011664521)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the style of timeline items.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(26028913503147664522)
,p_plugin_attribute_id=>wwv_flow_imp.id(26028913287011664521)
,p_display_sequence=>10
,p_display_value=>'Compact'
,p_return_value=>'t-Timeline--compact'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26028913990331664522)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(27823754859585980054)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>25
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(27938166222574243655)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_name=>'User Name Link'
,p_static_id=>'USER_NAME_LINK'
,p_display_sequence=>15
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(28057197469548548096)
,p_plugin_id=>wwv_flow_imp.id(26028902005286664516)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_updated_by=>'DARJANUS789@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230609132250'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'DN_APLIKACIJA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'DARJANUS789@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20231219122346'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26028952979777664572)
,p_plug_name=>'Aplikacija 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26028326926397664418)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Vnesi/spremeni osebo'
,p_alias=>'OSEBA-DODAJ'
,p_step_title=>'Vnesi/spremeni osebo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'DARJANUS789@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240309185536'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26031826618485207214)
,p_plug_name=>'Oseba'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(26028360278293664432)
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(63366367909439496308)
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26034116498176769287)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26028372684844664438)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26028256825282664378)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(26028835059201664470)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26031829895055207246)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_button_name=>'Spremeni'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Spremeni'
,p_button_position=>'CHANGE'
,p_button_condition=>'ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26031829646982207244)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_button_name=>'Dodaj'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'CHANGE'
,p_button_condition=>'ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26031827723459207225)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_button_name=>'Nazaj'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nazaj'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26031829926708207247)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_button_name=>unistr('Izbr\0161i')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Izbr\0161i')
,p_button_position=>'DELETE'
,p_button_condition=>'ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(63696740135829233501)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26031828834806207236)
,p_name=>'P2_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_item_source_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_prompt=>'E-naslov'
,p_format_mask=>'^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(26028830908013664467)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26031828907295207237)
,p_name=>'P2_NAZIV'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_item_source_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_prompt=>'Naziv'
,p_source=>'NAZIV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(26028830908013664467)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26031829005778207238)
,p_name=>'P2_PLACA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_item_source_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_prompt=>'Placa'
,p_format_mask=>'99990D00'
,p_source=>'PLACA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(26028830908013664467)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26031829111990207239)
,p_name=>'P2_TELEFON'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_item_source_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_prompt=>'Telefon'
,p_source=>'TELEFON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(26028830908013664467)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26031829297626207240)
,p_name=>'ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_item_source_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_source=>'OSEBA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26031829341056207241)
,p_name=>'P2_PROJEKT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_item_source_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_prompt=>'Projekt'
,p_source=>'PROJEKT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJEKT'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(26028830908013664467)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26031829468246207242)
,p_name=>'P2_IME_PRIIMEK'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_item_source_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_prompt=>'Ime Priimek'
,p_source=>'IME_PRIIMEK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(26028830908013664467)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26031829532137207243)
,p_name=>'P2_LOKACIJA_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_item_source_plug_id=>wwv_flow_imp.id(26031826618485207214)
,p_prompt=>'Lokacija '
,p_source=>'LOKACIJA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOKACIJA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(26028830908013664467)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(63696742820709233528)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P2_TELEFON'
,p_validation2=>'^([0-9]{3}-[0-9]{3}-[0-9]{3})$|^([0][1-9]-[0-9]{3}-[0-9]{2}-[0-9]{2})$|^([0][0-9]{3}-[0-9]{2}-[0-9]{3})$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Wrong phone number format'
,p_validation_condition=>'ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_imp.id(26031829895055207246)
,p_associated_item=>wwv_flow_imp.id(26031829111990207239)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(63696742969077233529)
,p_validation_name=>'New_1'
,p_validation_sequence=>20
,p_validation=>'P2_TELEFON'
,p_validation2=>'^([0-9]{3}-[0-9]{3}-[0-9]{3})$|^([0][1-9]-[0-9]{3}-[0-9]{2}-[0-9]{2})$|^([0][0-9]{3}-[0-9]{2}-[0-9]{3})$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Wrong phone number format'
,p_validation_condition=>'ID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_when_button_pressed=>wwv_flow_imp.id(26031829646982207244)
,p_associated_item=>wwv_flow_imp.id(26031829111990207239)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(63696743037542233530)
,p_validation_name=>'New_2'
,p_validation_sequence=>30
,p_validation=>'P2_EMAIL'
,p_validation2=>'^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Invalid e-mail'
,p_validation_condition=>'ID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_when_button_pressed=>wwv_flow_imp.id(26031829646982207244)
,p_associated_item=>wwv_flow_imp.id(26031828834806207236)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(63696743114114233531)
,p_validation_name=>'New_3'
,p_validation_sequence=>40
,p_validation=>'P2_EMAIL'
,p_validation2=>'^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Invalid e-mail format'
,p_validation_condition=>'ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_imp.id(26031829895055207246)
,p_associated_item=>wwv_flow_imp.id(26031828834806207236)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(63696743279021233532)
,p_validation_name=>'New_4'
,p_validation_sequence=>50
,p_validation=>'P2_PLACA'
,p_validation2=>'^[0-9]{1,5}(\.[0-9][0-9])?$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Number format invalid'
,p_validation_condition=>'ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_imp.id(26031829895055207246)
,p_associated_item=>wwv_flow_imp.id(26031829005778207238)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(63696743318432233533)
,p_validation_name=>'New_5'
,p_validation_sequence=>60
,p_validation=>'P2_PLACA'
,p_validation2=>'^[0-9]{1,5}(\.[0-9][0-9])?$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Invalid format'
,p_validation_condition=>'ID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_when_button_pressed=>wwv_flow_imp.id(26031829646982207244)
,p_associated_item=>wwv_flow_imp.id(26031829005778207238)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(63696743412543233534)
,p_validation_name=>'New_6'
,p_validation_sequence=>70
,p_validation=>'P2_IME_PRIIMEK'
,p_validation2=>unistr('^[a-z\0161\0111\010D\0107\017EA-Z\0160\0110\010C\0106\017D\005Cs ]{1,50}$')
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Musn''t be a number'
,p_associated_item=>wwv_flow_imp.id(26031829468246207242)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26031829776276207245)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26031826618485207214)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form New'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26031829776276207245
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26031826765437207215)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(26031826618485207214)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Oseba_dodaj'
,p_internal_uid=>26031826765437207215
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Projekti'
,p_alias=>'PROJEKTI'
,p_step_title=>'Projekti'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DARJANUS789@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240309175640'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64289083628152081153)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26028372684844664438)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26028256825282664378)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(26028835059201664470)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64289145975257087001)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26028350470734664428)
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(66225894520122853255)
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(64289146063935087002)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_PROJEKT_ID:#PROJEKT_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'DARJANUS789@GMAIL.COM'
,p_internal_uid=>64289146063935087002
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64289146142813087003)
,p_db_column_name=>'PROJEKT_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224785246210831708)
,p_db_column_name=>'NASLOV'
,p_display_order=>20
,p_column_identifier=>'H'
,p_column_label=>'Naslov projekta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224785353952831709)
,p_db_column_name=>'ZACETEK'
,p_display_order=>30
,p_column_identifier=>'I'
,p_column_label=>unistr('Datum za\010Detka')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224785461282831710)
,p_db_column_name=>'KONEC'
,p_display_order=>40
,p_column_identifier=>'J'
,p_column_label=>'Datum konca'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224785676581831712)
,p_db_column_name=>'STANJE_NAZIV'
,p_display_order=>50
,p_column_identifier=>'L'
,p_column_label=>'Trenutno stanje'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64289743432897092960)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'642897435'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'PROJEKT_ID:NASLOV:ZACETEK:KONEC:STANJE_NAZIV:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64289146652661087008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64289145975257087001)
,p_button_name=>'Dodajprojekt'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj projekt'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Vnesi/spremeni projekt'
,p_alias=>'PROJEKT-DODAJ'
,p_step_title=>'Vnesi/spremeni projekt'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'DARJANUS789@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240309171157'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64289127080504083180)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26028372684844664438)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26028256825282664378)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(26028835059201664470)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64289146757909087009)
,p_plug_name=>'Projekt'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(26028360278293664432)
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(61762137136845234501)
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64289147750838087019)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_button_name=>'Spremeni'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Spremeni'
,p_button_position=>'CHANGE'
,p_button_condition=>'P4_PROJEKT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64289147572941087017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_button_name=>'Nazaj'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nazaj'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64289147827669087020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_button_name=>'Dodaj'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'CREATE'
,p_button_condition=>'P4_PROJEKT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64289147674590087018)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_button_name=>unistr('Izbri\0161i')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Izbri\0161i')
,p_button_position=>'DELETE'
,p_button_condition=>'P4_PROJEKT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64289147928505087021)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64289146983557087011)
,p_name=>'P4_PROJEKT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_item_source_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_source=>'PROJEKT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64289147090384087012)
,p_name=>'P4_NASLOV'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_item_source_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_prompt=>'Naslov'
,p_source=>'NASLOV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(26028830908013664467)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64289147119943087013)
,p_name=>'P4_ZACETEK'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_item_source_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_prompt=>'Zacetek'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>'ZACETEK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(26028830908013664467)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64289147214552087014)
,p_name=>'P4_KONEC'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_item_source_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_prompt=>'Konec'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>'KONEC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(26028830908013664467)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64289147381309087015)
,p_name=>'P4_STANJE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_item_source_plug_id=>wwv_flow_imp.id(64289146757909087009)
,p_prompt=>'Stanje'
,p_source=>'STANJE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STANJE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(26028830908013664467)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64289147434839087016)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(64289146757909087009)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form New'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64289147434839087016
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64289146810920087010)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(64289146757909087009)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Projekt_dodaj'
,p_internal_uid=>64289146810920087010
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Osebe'
,p_alias=>'OSEBA'
,p_step_title=>'Osebe'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DARJANUS789@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20240309201222'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66224786778315831723)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26028350470734664428)
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(63717641333197593372)
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66224786865607831724)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::ID:#OSEBA_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'DARJANUS789@GMAIL.COM'
,p_internal_uid=>66224786865607831724
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224786938364831725)
,p_db_column_name=>'OSEBA_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224787091080831726)
,p_db_column_name=>'IME_PRIIMEK'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ime Priimek'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224787144256831727)
,p_db_column_name=>'EMAIL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'E-naslov'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224787289981831728)
,p_db_column_name=>'NAZIV'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Naziv'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224787363347831729)
,p_db_column_name=>'PLACA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Pla\010Da (EUR)')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224787415265831730)
,p_db_column_name=>'TELEFON'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Telefon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224787761088831733)
,p_db_column_name=>'NASLOV'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Naslov projekta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66224787855531831734)
,p_db_column_name=>'L_NASLOV'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Lokacija'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(75412584210967036506)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'754125843'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OSEBA_ID:IME_PRIIMEK:EMAIL:NAZIV:PLACA:TELEFON:NASLOV:L_NASLOV'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75411530746980017490)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26028372684844664438)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(26028256825282664378)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(26028835059201664470)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66224787914976831735)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66224786778315831723)
,p_button_name=>'Dodajosebo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(26028833513413664469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj osebo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'DN_ZUN1 - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(26028268242088664390)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_last_updated_by=>'DARJANUS789@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230609132250'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26028945901354664557)
,p_plug_name=>'DN_ZUN1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(26028355044526664430)
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26028947638371664567)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(26028945901354664557)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(26028833496671664469)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26028946422712664558)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26028945901354664557)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(26028830658309664467)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26028946871296664559)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26028945901354664557)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(26028830658309664467)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26028947278593664559)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26028945901354664557)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(26028830658309664467)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26028949868630664569)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26028949868630664569
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26028950352985664569)
,p_page_process_id=>wwv_flow_imp.id(26028949868630664569)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26028950851722664569)
,p_page_process_id=>wwv_flow_imp.id(26028949868630664569)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26028947965793664568)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26028947965793664568
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26028948483680664568)
,p_page_process_id=>wwv_flow_imp.id(26028947965793664568)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26028948917053664569)
,p_page_process_id=>wwv_flow_imp.id(26028947965793664568)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(26028949499718664569)
,p_page_process_id=>wwv_flow_imp.id(26028947965793664568)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26028951766372664570)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26028951766372664570
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26028951334250664570)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>26028951334250664570
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(26045135604236017833)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
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
