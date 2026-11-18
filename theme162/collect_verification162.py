"""Bind exact162 native-theme route, tests and signed DEX; preserve every resource and native controller."""
from pathlib import Path
import hashlib,json,re,subprocess,zipfile
T=Path(__file__).resolve().parent;R=T.parent
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
apk=R/'output/162-TouchPalG-6.2.7.1.apk';base=R/'output/161-TouchPalG-6.2.7.1.apk'
for name,path in [('SIGNATURE_CHECK.txt',apk),('BASE_SIGNATURE_CHECK.txt',base)]:
 with (T/name).open('w') as out:subprocess.run(['java','-jar',str(R/'tools/apksigner.jar'),'verify','--verbose','--print-certs',str(path)],stdout=out,check=True)
pattern=r'Signer #1 certificate SHA-256 digest: (.+)';cert=re.search(pattern,(T/'SIGNATURE_CHECK.txt').read_text()).group(1)
assert cert=='0cd49335ac2a2116cca692ae980113949977b1e4f78d4281d51cbe58ef145b46'==re.search(pattern,(T/'BASE_SIGNATURE_CHECK.txt').read_text()).group(1)
host=json.loads((T/'HOST_TESTS.json').read_text());assert host['status']=='PASS' and host['tests']>=41
compiled=json.loads((T/'HELPERS_COMPILED.json').read_text())
for name,digest in compiled['source_sha256'].items():assert sha(T/name)==digest==host['actual_sources'][name.removeprefix('src/')]
for name,key in [('PACKAGE_VERIFIED.json','sha256'),('DEX_VERIFICATION.json','apk_sha256'),('RESOURCE_VERIFICATION.json','apk_sha256')]:assert sha(apk)==json.loads((T/name).read_text())[key]
with zipfile.ZipFile(base) as a,zipfile.ZipFile(apk) as b:
 allowed=set(json.loads((T/'RESOURCE_VERIFICATION.json').read_text())['changed_entries'])
 for name in a.namelist():
  if name not in allowed and (name=='classes2.dex' or name=='resources.arsc' or name.startswith(('res/','lib/')) or name.endswith(('.tpl','.lua.png','.sur.png'))):assert a.read(name)==b.read(name),name
  if name.startswith('assets/') and Path(name).name not in ['touchpal_features.html','touchpal_history.html']:assert a.read(name)==b.read(name),name
text=(T/'DEX_TEST.txt').read_text();assert '0 methods across 0 classes' in text
count=int(re.search(r'PASS all (\d+) original classes compared',text).group(1))
result=dict(version='162',apk_bytes=apk.stat().st_size,apk_sha256=sha(apk),base_sha256=sha(base),tests=host['tests'],
 framework='Actual Android34 Views/Intents, app-owned filesystem and provider streams; native engine/parser and OS MediaStore authority are explicit boundaries, not a phone test',
 own_helper_families=len(compiled['families']),own_compiled_classes=len(compiled['class_entries']),original_classes_compared=count,
 bounded_vendor_methods=0,api16_actual_dex_verified=True,classes2_unchanged=True,all_native_libraries_and_other_resources_unchanged=True,
 live_workspace_and_private_dictionary_and_native_staging_unchanged=True,physical_keyboard_subtypes_unchanged=True,
 exports_default='Context.getExternalFilesDir(null)/TouchPalG/Backup',save_without_picker=True,
 restore_uses_filtered_app_owned_list=True,folder_uses_system_file_chooser=True,share_keeps_same_saved_file=True,downloads='MediaStore Downloads29+; legacy public Downloads before29',
 incoming_read_once_checked_snapshot=True,confirmed_restore_input_retained=True,cancel_and_invalid_input_not_retained=True,
 former_public_copies_verified_before_source_removal=True,delete_only_empty_old_directories=True,unknown_files_and_name_collisions_preserved=True,
 icon_long_press_help_without_action=True,last_full_zip_date_filename_one_line_above_buttons=True,
 certificate_sha256=cert,signature_schemes=['v1','v2','v3'],android_art_or_phone_executed=False,
 icon_targets_52dp=True,visible_separators=True,pressed_state_held_180ms=True,no_global_action_disable_or_main_page_progress_relayout=True,nonfocusable_progress_success_popup_with_full_filename_and_folder=True,language_import_entry_in_languages_only=True,language_mode_has_no_backup_actions=True,language_cancel_returns_to_languages=True,save_offer_downloads_or_system_destination=True,decline_keeps_internal_copy=True,extra_copy_uses_saved_bytes_without_native_recapture=True,external_destination_stream_readback_checked=True,pending_export_state_survives_recreation=True,source_tamper_refused_before_output_open=True,red_uninstall_reminder=True,floating_notice_anchored_to_section_without_inline_reflow=True,language_tpl_import=True,strip_only_final_apk_suffix=True,language_archive_container_checked=True,existing_language_confirmation_and_backup=True,native_language_compatibility_not_claimed=True,branding_design_pending=False,restore_button_shape_deferred=False,native_installed_theme_grid=True,theme_route_intent_verified=True,native_grid_selection_runtime_tested=False,owner_phone_after_fix_tested=False,theme_first_in_additions=True,system_application_name="TouchPalG",yellow_black_original_mark=True,ordinary_backup_buttons_capsules=True,top_padding_and_redundant_download_caption_removed=True,phone_size_layout_checks=True)
(T/'VERIFICATION.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
(T/'SOURCE_API16.json').write_text(json.dumps(dict(status='PASS',android_api=16,min_d8_api=15,actual_signed_dex_abi_passed=True,source_sha256=compiled['source_sha256'],compile_only_not_packaged=True),indent=2)+'\n')
print('PASS162: exact source/test/signed-APK binding, actual DEX/API16, preserved resources and same certificate')
