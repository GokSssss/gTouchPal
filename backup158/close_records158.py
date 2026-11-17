"""Close publication records after raw history checks and the observed retention cleanup."""
from pathlib import Path
import hashlib, json
from openpyxl import load_workbook

R = Path(__file__).resolve().parent.parent
T = Path(__file__).resolve().parent
read = lambda name: json.loads((T/name).read_text())
history = read('HISTORY_RAW_READBACK.json')
assert history['raw_download_equal'] and history['all_prior_payloads_preserved']
storage = read('FINAL_STORAGE_OBSERVED.json')
assert storage['counts'] == {'root':8,'sources':12,'inputs':7,'keys':12,'signing':2,'prototype':2,'current':2,'previous':2}
retirement = read('RETIREMENT_RECEIPTS.json')
assert len(retirement['deleted']) == 4 and retirement['freed_bytes'] == 35018351
registry_path = R/'PROJECT_STORAGE.json'
registry = json.loads(registry_path.read_text())
assert registry['current']['version'] == '158' and registry['previous']['version'] == '157'
for p in registry['build_inputs']:
    if p['version'] == '156':
        p.update(move_pending=False,move_verified=True)
    if p['version'] == '153':
        p['consumer'] = 'retained prototypeSOURCE154'
registry['updated_utc_date'] = '2026-11-17'
registry['source_archives_on_drive'] = 12
registry['source_archives_count_status'] = 'Verified after158 closure:12 published/selected SOURCE, plus active prototype154 separately in Docs'
registry['verification'] = '158:33 Android-framework scenarios, actual DEX/API16/resources/signature; isolated final-SOURCE rebuild and anonymous public downloads. No phone/ART execution.'
registry['verification_complete'] = True
registry['verification_scope'] = 'Publication, host framework, build, signature, retained files and current storage rules; phone/ART acceptance remains pending.'
registry['release158_verification'] = read('VERIFICATION.json')
registry['clean_rebuild158'] = read('CLEAN_SOURCE_REBUILD.json')
registry['drive_publication158_complete'] = True
registry['github_publication158_complete'] = True
registry['retention158'] = {'status':'complete','plan':'backup158/RETENTION_PLAN.json','published_verified':True,'prototype154_preserved':True,'removed_source156':True,'removed_passport156':True,'removed_empty_folder156':True,'removed_obsolete_input155':True,'freed_bytes':35018351,'input156_moved_once':True,'history_verified':history['sha256']}
registry['cleanup158_complete'] = True
cleanup = {'date':'2026-11-17','status':'COMPLETE','reason':'Keep158/157 and11selected checkpoints; keep active prototype154. SOURCE157 requires156APK; SOURCE156 retired, so155APK input no longer needed.','keep':['158','157'],'protected_unchanged':11,'prototype154_preserved':True,'removed':[x for x in retirement['deleted'] if not x.get('empty_confirmed')],'removed_empty_folders':['1nfR5q3dJ76j4L0Y4Rd4euxXmq1HBrpMg'],'removed_bytes':35018351,'moved_without_copy':{'id':'10fCN8NQYzXyazI9EX4q-URoWZIf7dmWL','version':'156','for_release':'157','same_id_and_sha256':True},'history_raw_readback_before_cleanup':history['sha256']}
registry['release158_cleanup'] = cleanup
registry['latest_cleanup'] = cleanup
registry['cleanup_completed_utc_date'] = '2026-11-17'
registry['full_history'].update({k:history[k] for k in ['bytes','sha256','entries','manifest_hashes','stages','individual_logs','implementation_patches']})
registry['full_history'].update(version='158',path='TouchPal_журналы_и_логика_изменений.zip',drive_readback_verified=True,all_previous9577_payloads_preserved=True,old_manifest_preserved158=True,post_publication157_preserved=True,exact_retiring156_passport_preserved=True,no_full_source_or_apk_added=True,owner_phone_media_not_published=True)
registry['passports'] = [{'id':n['id'],'folder_id':p['folder_id'],'version':p['version']} for p in [registry['current'],registry['previous'],*registry['protected']] for n in p.get('notes',[])]
xlsx = R/'TouchPal_Нововведения_от_DelFix.xlsx'
rows = load_workbook(xlsx,read_only=True).active.max_row
assert rows == 147
registry['innovations_excel'].update(rows=rows,data_rows=rows-1,range=f'A1:C{rows}',used_range=f'A1:C{rows}',latest_version='158',bytes=xlsx.stat().st_size,sha256=hashlib.sha256(xlsx.read_bytes()).hexdigest(),raw_readback_verified=True)
counts = storage['counts']
registry['compliance'].update(status='verified_current_rules',date='2026-11-17',general_rules_revision='2026-11-15T07:53:46.300Z',rules_revision='2026-11-15T07:53:46.300Z',retained_complete_versions=['158','157'],verified_live_readbacks=8,project_mark_present=True,github_release=registry['current']['github_release'],github_public_downloads_verified=True,observed=counts,live_documents_readback_verified=8,registry_final_readback_receipt='backup158/FINAL_LIVE_DOCUMENT_READBACK.json',phone_or_art_tested=False)
registry['compliance158'] = {'status':'VERIFIED','rules_id':'1PC7jbtXP9HRTi1C8t3JTG8xc_Y-F9H_z','rules_revision':'2026-11-15T07:53:46.300Z','rules_rechecked_unchanged':True,'retained':['158','157'],'checkpoints':11,'active_prototype154_retained':True,'owner_media_not_published':True,'private_signing_material_not_exported':True,'counts':counts,'final_eight_documents_raw_readback_verified':True}
registry['phone_test157_report'] = {'owner_installed':True,'reports':['Restore/folder navigation should be reversed','Save feedback and icon targets need improvement'],'all_functions_accepted':False,'working_folder_files_owner_confirmed_present':True}
registry_path.write_text(json.dumps(registry,ensure_ascii=False,indent=2)+'\n')
active_path = R/'ACTIVE_BUILD.json'
active = json.loads(active_path.read_text())
active.update(status='published_verified',last_published_version='158',published_immutable=True)
active_path.write_text(json.dumps(active,ensure_ascii=False,indent=2)+'\n')
pending_path = R/'PENDING_OWNER_REQUESTS.json'
pending = json.loads(pending_path.read_text())
pending['current_source_work'].update(status='published_verified',last_published_version=158,published_version=158,storage_closure_complete=True)
pending_path.write_text(json.dumps(pending,ensure_ascii=False,indent=2)+'\n')

checkpoint_path = R/'CHECKPOINTS_RU.txt'
old = checkpoint_path.read_text().splitlines()
old[0] = 'Актуально17.11.2026: полные текущий158 и предыдущий157. Прежние11полезных точек, включая135, с теми жеID/байтами и прежними ограничениями.156APK один раз во Входах только дляSOURCE157.153APK нужен сохранённому прототипу154; его два файла в Документах и тегv154 неизменны. Ниже — сохранённые записи и ограничения прежних дат.'
checkpoint_path.write_text('\n'.join(old)+'\n')
index = ['gTouchPal · сохраняемые исходники ·17.11.2026','','Текущий158 и предыдущий157. Остальные — выбранные полезные точки; прежние ограничения полноты и телефонной проверки сохранены. SOURCE содержит изменения проекта и рецепт поверх точных бинарных входов, не полный исходный код производителя CooTek.','']
for p in storage['folders']['sources']['files']:
    index.extend([p['name'],'https://drive.google.com/file/d/'+p['id']+'/view',''])
index.extend(['SOURCE158 использует APK157 из папки предыдущего выпуска; SOURCE157 использует единственный APK156 во Входах.','Входы для сохраняемых SOURCE:',''])
input_text = ['Обязательные бинарные входы сохраняемых SOURCE ·17.11.2026','']
for p in registry['build_inputs']:
    name = p.get('drive_name',p['file'])
    index.extend([name+' → '+p['consumer'],'https://drive.google.com/file/d/'+p['id']+'/view','SHA256 '+p['sha256'],''])
    input_text.extend([name+' → '+p['consumer'],'ID '+p['id'],'SHA256 '+p['sha256'],''])
index.extend(['Используемый комплект подписи: https://drive.google.com/drive/folders/1m6bCBYq3Mrj8Ru_7HQhupN-jCohfjKjW','Реестр полезных точек: https://drive.google.com/file/d/1nSgcMi_EgW9lLISVE_JNeAxas9RgEzyR/view','Компактная история/логика: https://drive.google.com/file/d/1C6lkvTMiwKw9fMRFmA1l2tHS7RzYTG5e/view','','Активный прототип154 сохранён отдельно: https://drive.google.com/drive/folders/1csJyu7nlz2xBJv103MRwbp3M8Nqg92US','Прежние два файла иtagv154 неизменны; это не третий текущий опубликованный выпуск.','История сохраняет логи/малые изменения, а не полные старые SOURCE/APK.',''])
(R/'SOURCE_INDEX_RU.txt').write_text('\n'.join(index))
(R/'BUILD_INPUTS_INDEX_RU.txt').write_text('\n'.join(input_text))

closure = f'''\n17.11.2026 — завершение158
33framework сценария, actualDEX/API16/ресурсы и прежняя подписьv1/v2/v3. Финальный SOURCE заморожен один раз; изолированная пересборка дала побайтово тот же подписанный APK. Скачанные SOURCE/APK/паспорт Диска и три публичных GitHub файла совпали. Тегv158 d2d22c20933e76b96bd5dfd399109e32c885f922 неизменяем; прежние теги/артефакты не переписывались. Действие44016828611 передало только3готовых закреплённых файла, без ключей/паролей.
Restore/Add TXT открывает отфильтрованный локальный список, Folder — системный выбор файла; три зоны52dp, разделители/нажатие и nonfocusable уведомление с именем/папкой. Верхняя загрузкаTPL/TPL.apk в рабочуюlanguage снимает конечное.apk, проверяет контейнер и подтверждает замену с сохранением прежних байтов вBackup/Language. APK не устанавливается, выбранный язык не меняется автоматически. Реальный встроенныйrussian.tpl проверен побайтовым импортом; совместимость native движка с произвольнымTPL и поведение на реальном телефоне/ART требуют проверки владельцем.
Владелец открылfiles/TouchPalG и подтвердил наличие рабочих файлов. На первоначальном фото показан родительAndroid/data/com.cootek.smartinputv5, пустота рабочей папки не подтверждена. Рабочий корень, privateUSR/native staging и физические раскладки не переносились. Branding TouchPalG/yellow-black остаётся макетом; формаRestore отложена владельцем. Личные фото/видео не публиковались.
Полные158/157,11полезных точек и активный прототип154 сохранены. APK156 с прежнимиID/SHA один раз перенесён во Входы дляSOURCE157;153APK нужен прототипу154. SOURCE156, паспорт156, ненужный155input и пустая папка156 сняты после свежих raw проверок158/157/входов, полной истории и проверки сохранённыхточек. Освобождено35018351байт. Итог:8корневых объектов,12SOURCE,6APKвходов+README,11ключевых папок+реестр,2файла подписи; текущий/предыдущий поAPK+паспорту. ВExcel147строк с заголовком,29карточек/146строк хронологии в установленном журнале.
История{history['manifest_hashes']}хешей/{history['entries']}entry,163этапа/162индивидуальных журнала/{history['implementation_patches']}implementation payloads. Все9577прежних payload сохранены побайтово;43новых материала, точные паспорт/manifest156 и post-publication157. Полных старыхSOURCE/APK не добавляли. Архив{history['bytes']}байт SHA256 {history['sha256']} скачан и проверен полностью, прежнийID сохранён.
Общие правила15Nov2026 07:53:46.300UTC перечитаны без изменений. Свежий комплект подписи из обычной папки проекта совпал с используемым; значения не экспортировались. Знак√ относится к хранению/правилам, не к телефонной приёмке158. Следующая доработка159+.
GitHub https://github.com/GokSssss/gTouchPal/releases/tag/v158
APK https://drive.google.com/file/d/1iHQGKa56eM7zVeRC7ALpcTZxIGRd3qIB/view
SOURCE https://drive.google.com/file/d/1240OoowT5oFTdHg8KTmjlOEMWI7cZvi-/view
'''
for name in ['AGENTS.md','10База!','TouchPal_DEVELOPMENT_LOG_RU.txt']:
    p = R/name
    text = p.read_text()
    assert '17.11.2026 — завершение158' not in text, name
    p.write_text(text+closure)
(T/'CLOSURE_RECORDS.json').write_text(json.dumps({'status':'PASS','version':'158','immutable_artifacts_unchanged':True,'history_sha256':history['sha256'],'retained':['158','157'],'xlsx_rows':147,'source_count':12,'build_inputs':6,'live_documents_expected':8},indent=2)+'\n')
print('158 closure documents prepared; published158 files remain unchanged')
