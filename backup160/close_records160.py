"""Close160 only after exact public/Drive/history readbacks and observed cleanup."""
from pathlib import Path
import hashlib, json
from openpyxl import load_workbook

R=Path(__file__).resolve().parent.parent
T=Path(__file__).resolve().parent
read=lambda name:json.loads((T/name).read_text())
history=read('HISTORY_RAW_READBACK.json');storage=read('FINAL_STORAGE_OBSERVED.json');retirement=read('RETIREMENT_RECEIPTS.json');plan=read('RETENTION_PLAN.json')
assert history['all_prior_payloads_preserved'] and history['raw_download_equal']
assert storage['counts']=={'root':8,'sources':12,'inputs':7,'keys':12,'signing':2,'prototype':2,'current':2,'previous':2}
assert retirement['freed_bytes']==34657010 and len(retirement['deleted'])==4
registry_path=R/'PROJECT_STORAGE.json';j=json.loads(registry_path.read_text())
assert j['current']['version']=='159' and j['previous']['version']=='158'
j['current']=plan['current'];j['previous']=plan['previous_retained']
j['build_inputs']=[x for x in j['build_inputs'] if x['version']!='157']
entry=dict(plan['move_input158']);entry.update(move_pending=False,move_verified=True);j['build_inputs'].append(entry)
assert len(j['build_inputs'])==6
j.update(updated_utc_date='2026-11-17',source_archives_on_drive=12,source_archives_count_status='Verified after160 closure:12 Source files plus prototype154 separately',verification='160:41framework, actualDEX/API16/resources, isolated final-SOURCE rebuild and raw public downloads; no phone/ART execution',verification_complete=True,release160_verification=read('VERIFICATION.json'),clean_rebuild160=read('CLEAN_SOURCE_REBUILD.json'),drive_publication160_complete=True,github_publication160_complete=True,cleanup160_complete=True,cleanup_completed_utc_date='2026-11-17')
j['full_history'].update({k:history[k] for k in ['bytes','sha256','entries','manifest_hashes','stages','individual_logs','implementation_patches']})
j['full_history'].update(version='160',drive_readback_verified=True,all_previous9664_payloads_preserved=True,old_manifest_preserved160=True,post_publication159_preserved=True,exact_retiring158_passport_preserved=True,no_full_source_or_apk_added=True,owner_phone_media_not_published=True)
j['retention160']={'status':'complete','plan':'backup160/RETENTION_PLAN.json','published_verified':True,'prototype154_preserved':True,'removed_source158':True,'removed_passport158':True,'removed_empty_folder158':True,'removed_obsolete_input157':True,'freed_bytes':34657010,'input158_moved_once':True,'history_verified':history['sha256']}
j['latest_cleanup']={'date':'2026-11-17','status':'COMPLETE','keep':['160','159'],'reason':'Keep160/159 and11checkpoints; Source159 requires158APK; retire158Source/passport and obsolete157input after exact raw/history checks','removed':retirement['deleted'],'removed_bytes':34657010,'moved_without_copy':{'version':'158','id':entry['id'],'same_id_and_sha256':True},'prototype154_preserved':True,'protected_unchanged':11};j['release160_cleanup']=j['latest_cleanup']
j['passports']=[{'id':n['id'],'folder_id':p['folder_id'],'version':p['version']} for p in [j['current'],j['previous'],*j['protected']] for n in p.get('notes',[])]
xlsx=R/'TouchPal_Нововведения_от_DelFix.xlsx';assert load_workbook(xlsx,read_only=True).active.max_row==149
j['innovations_excel'].update(rows=149,data_rows=148,range='A1:C149',used_range='A1:C149',latest_version='160',bytes=xlsx.stat().st_size,sha256=hashlib.sha256(xlsx.read_bytes()).hexdigest(),raw_readback_verified=True)
j['compliance'].update(status='verified_current_rules',date='2026-11-17',general_rules_revision='2026-11-15T07:53:46.300Z',rules_revision='2026-11-15T07:53:46.300Z',retained_complete_versions=['160','159'],github_release=j['current']['github_release'],observed=storage['counts'],registry_final_readback_receipt='backup160/FINAL_LIVE_DOCUMENT_READBACK.json',verified_live_readbacks=8,live_documents_readback_verified=8,phone_or_art_tested=False)
j['compliance160']={'status':'VERIFIED','rules_id':'1PC7jbtXP9HRTi1C8t3JTG8xc_Y-F9H_z','rules_revision':'2026-11-15T07:53:46.300Z','rules_rechecked_unchanged':True,'retained':['160','159'],'checkpoints':11,'active_prototype154_retained':True,'owner_media_not_published':True,'private_signing_material_not_exported':True,'counts':storage['counts'],'final_eight_documents_raw_readback_verified':True}
registry_path.write_text(json.dumps(j,ensure_ascii=False,indent=2)+'\n')
active_path=R/'ACTIVE_BUILD.json';active=json.loads(active_path.read_text());assert active['version']=='160';active.update(status='published_verified',published_immutable=True,last_published_version='160',last_published_apk='output/160-gTouchPal-6.2.7.1.apk');active_path.write_text(json.dumps(active,indent=2)+'\n')
p=R/'PENDING_OWNER_REQUESTS.json';pending=json.loads(p.read_text());pending['current_source_work'].update(status='published_verified',published_version=160,last_published_version=160,storage_closure_complete=True,apk_built=True,final_source_frozen=True);p.write_text(json.dumps(pending,ensure_ascii=False,indent=2)+'\n')
p=R/'CHECKPOINTS_RU.txt';lines=p.read_text().splitlines();lines[0]='Актуально17.11.2026: полные160/159, прежние11полезных точек с теми жеID/байтами/ограничениями.158APK один раз во Входах дляSOURCE159.153APK нужен сохранённому прототипу154. Прототип154 в Документах, его2файла/tagv154 неизменны. Новых ключевых точек нет.';p.write_text('\n'.join(lines)+'\n')
index=['gTouchPal · сохраняемые исходники ·17.11.2026','','Текущий160 и предыдущий159. SOURCE — собственные изменения/рецепт поверх закрытого APK; полнота и телефонные ограничения прежних выбранных точек сохранены.','']
for f in storage['folders']['sources']['files']:index.extend([f['name'],'https://drive.google.com/file/d/'+f['id']+'/view',''])
index.extend(['SOURCE160 использует APK159 из предыдущего выпуска; SOURCE159 использует единственный APK158 во Входах.','','Входы для сохраняемых SOURCE:','']);inputs=['Обязательные бинарные входы сохраняемых SOURCE ·17.11.2026','']
for f in j['build_inputs']:
    name=f.get('drive_name',f['file']);index.extend([name+' → '+f['consumer'],'https://drive.google.com/file/d/'+f['id']+'/view','SHA256 '+f['sha256'],'']);inputs.extend([name+' → '+f['consumer'],'ID '+f['id'],'SHA256 '+f['sha256'],''])
index.extend(['Комплект подписи: https://drive.google.com/drive/folders/1m6bCBYq3Mrj8Ru_7HQhupN-jCohfjKjW','Полезные точки: https://drive.google.com/file/d/1nSgcMi_EgW9lLISVE_JNeAxas9RgEzyR/view','История/логика: https://drive.google.com/file/d/1C6lkvTMiwKw9fMRFmA1l2tHS7RzYTG5e/view','Активный прототип154 отдельно: https://drive.google.com/drive/folders/1csJyu7nlz2xBJv103MRwbp3M8Nqg92US','История сохраняет логи и малые патчи, не полные старые Source/APK.',''])
(R/'SOURCE_INDEX_RU.txt').write_text('\n'.join(index));(R/'BUILD_INPUTS_INDEX_RU.txt').write_text('\n'.join(inputs))
v=read('VERIFICATION.json');tag=read('GITHUB_TAG_VERIFIED.json')['commit']
closure=f'''\n17.11.2026 — завершение160
После обычногоSave внутренняя копия уже создана, затем предлагаетсяDownloads/CREATE_DOCUMENT/Не сейчас. Копируется сохранённый файл без повторногоnative capture; проверяются ожидаемыйdigest до открытия назначения и целые байтыreadback. Отказ/отмена сохраняют внутренний файл, pending export переживаетrecreation. Красное напоминание вверху просит сохранить копию вне app-owned каталога перед удалением. Self-uninstall callback не реализован/не обещается. ИнформационныйPopupWindow остаётся nonfocusable floating layer, anchor — нижняя кнопка текущего разделаZIP/USR/TXT; inline rows не добавляются, после отказа уведомление о внутреннем файле повторяется. ВыборTPL остаётся вЯзыках, как159. Рабочие/privateUSR/native staging пути, ресурсы/ROM/TPL и физические раскладки не менялись.
41framework сценарий,actualDEX/API16,{v['original_classes_compared']}старых классов/0vendor методов,{v['own_helper_families']}ownсемейств/{v['own_compiled_classes']}классов. ФинальныйSOURCE281файл заморожен один раз и изолированно пересобран в побайтово тот же подписанныйAPK. APK/Source/паспорт Диска и публичногоGitHub скачаны и совпали. Тегv160 {tag} неизменяем. Relay44026791652success передал только3готовых файла без signing material; первые запросыdispatch до индексацииworkflow возвращали404 и не запускалиjob. Это не реальныйIME/AndroidART/проверкаSDprovider на телефоне; границы native/provider вframework явные. Прежний сертификатv1/v2/v3, свежие в этом сеансе ключи/параметры доступны в обычной папке проекта и перед160 повторно сверены по metadata; значения не экспортировались.
Полные160/159,11полезных точек и прототип154 сохранены. APK158 с прежнимиID/SHA один раз во Входах дляSOURCE159;153APK нужен154. SOURCE158, паспорт158, ненужный157input и пустая папка158 сняты после свежих raw/readbacks, полной истории и проверки сохраняемых файлов. Освобождено34657010байт;8корневых объектов,12SOURCE,6APKвходов+README,11ключевых папок+реестр,2файла подписи, текущий/предыдущий поAPK+паспорту. Журнал29карточек/148хронологических записей;Excel149строк с заголовком.
История{history['manifest_hashes']}хешей/{history['entries']}entry,165этапов/164журнала/{history['implementation_patches']}implementation payloads. Все9664прежних payload сохранены,42новых материала, точные паспорт/manifest158 и post-publication159. Полных старыхAPK/Source не добавляли. Архив{history['bytes']}байт SHA256 {history['sha256']} скачан и проверен полностью, прежнийID сохранён. Общая редакция15Nov2026 07:53:46.300UTC не менялась. Знак√ относится к хранению/правилам, не к телефонной приёмке. Личные фото/видео не публиковались. BrandingTouchPalG/yellow-black остаётся макетом, формаRestore отложена.160APK/Source/tag не переписывать; следующая доработка161+.
GitHub https://github.com/GokSssss/gTouchPal/releases/tag/v160
APK https://drive.google.com/file/d/1jkjb3uIa2iDEaOerTP1vTF6WBu7ZPd38/view
SOURCE https://drive.google.com/file/d/14nQtuafFQnQHXsquLm1MRt17MSKgqOgy/view
'''
for name in ['AGENTS.md','10База!','TouchPal_DEVELOPMENT_LOG_RU.txt']:
    p=R/name;text=p.read_text();assert '17.11.2026 — завершение160' not in text;p.write_text(text+closure)
(T/'CLOSURE_RECORDS.json').write_text(json.dumps({'status':'PASS','version':'160','immutable_artifacts_unchanged':True,'retained':['160','159'],'history_sha256':history['sha256'],'source_count':12,'build_inputs':6,'live_documents_expected':8},indent=2)+'\n')
print('160 final closure records prepared')
