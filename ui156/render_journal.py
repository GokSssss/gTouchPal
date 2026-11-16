from pathlib import Path
from html import escape
from copy import copy
import json,re
T=Path(__file__).resolve().parent
CSS=(T/'journal.css').read_text()
# Match whole UI/key names, longest alternatives first, and escape all other text.
KEYS=re.compile(r'«[\\/_\-()?!;:\x27\x22• ]+»|нажати[ея] внутри (?:готового слова|«Потап»)|выбор варианта (?:в строке подсказок|с другим регистром)|нажмите внутри готового слова|выберите нужный вариант в строке подсказок|\b(?:55|52)\b|Ctrl\s*\+\s*(?:Пробел|Shift)|Shift\s*\+\s*Пробел|(?:долгое|короткое) нажатие (?:кнопки меню|12#)|быстрый свайп вверх|удержание (?:левой|правой) части пробела|кнопк[а-я]* (?:меню|сворачивания|микрофона|abc|«?Закрыть»?)|клавиш[а-я]* A(?:\s*/\s*0)?|цифр[а-я]* 1|«1»|12#|⌫|\bShift\b|@|\bточк[а-я]*\b|кнопк[а-я]* TouchPal|\babc\b|\bОК\b|\bВЫКЛ\b|\bA(?:\s*/\s*0)?\b|\b0\b|запят[а-я]*|буфер обмена|смайлы|\bвниз\b|пробел[а-я]*|свайп(?:ы|ом)? (?:вверх|вниз)|свайп(?:ом)? по пробелу|долгое нажатие|короткое нажатие|удержани[ея]|«[\x27\x22/\\?!\-–—]»|«(?:В самый верх|В самый низ|Выше|Ниже|Удалить|Сбросить|Назад)»|«(?:Тема клавиатуры|Выбрать тему клавиатуры|О программе|По умолчанию(?: \([^»]+\))?|Вертикальные разделители|Размер шрифта клавиатуры|Высота панели: портрет|Высота панели: альбом|Масштаб панели кандидатов|Высота клавиатуры(?:: портрет|: альбом)?|Включить TouchPal|Общих настройках|Размер кандидатов|Расстояние между кандидатами|Описание|Сокращение|Журнал новых функций(?: · TEST\d+)?|Показать историю изменений|Подробные изменения|Диагностика|Создать полную копию|Восстановить полную копию|Сохранить и отправить|Сохранить|Создать и отправить|Сохранить слова в TXT|Добавить слова из TXT|Импорт-экспорт словаря|Выгрузить все слова в TXT|Сохранение и восстановление пользовательского словаря|Резервная копия и восстановление|Создать резервную копию|Восстановить из копии|Восстановить и перезапустить|Восстановить western\.usr|Сохранить western\.usr|Резервная копия|Темы|Закрыть|Жесты и кнопки|Системные настройки клавиатуры|Перезапустить клавиатуру|Предугадывание|ВКЛ прогноз-е|ВЫКЛ прогноз-е)»',re.I)
def rich(text):
 out=[];last=0
 for m in KEYS.finditer(text):out.extend([escape(text[last:m.start()]),'<strong>'+escape(m.group())+'</strong>']);last=m.end()
 out.append(escape(text[last:]));return ''.join(out)
def mark(text,removed):
 value=rich(text);return '<del>'+value+'</del>' if removed else value
def shell(body):return '<!doctype html><html lang="ru"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Журнал новых функций</title><style>'+CSS+'</style></head><body><main id="dark">'+body+'</main></body></html>'
features=json.loads((T/'features.json').read_text());body='<p class="current">gTouchPal · 156 · Возможности по функциям</p>'
for f in features:
 versions=f['first']+(' ('+', '.join(f['updates'])+')' if f['updates'] else '');gone=bool(f.get('removed'))
 body+='<section class="entry" id="'+f['id']+'"><div class="version">'+escape(versions)+'</div><h2>'+mark(f['title'],gone)+'</h2>'
 if gone:body+='<p class="state">Удалено в '+escape(f['removed'])+'</p>'
 body+='<ul>'
 for item in f['items']:
  text=item if isinstance(item,str) else item['text'];removed=gone or isinstance(item,dict) and bool(item.get('removed'))
  body+='<li>'+mark(text,removed)+(' <span class="state">(убрано в '+escape(item['removed'])+')</span>' if isinstance(item,dict) and item.get('removed') else '')+'</li>'
 body+='</ul></section>'
(T/'assets/touchpal_features.html').write_text(shell(body))
rows=json.loads((T/'chronology.json').read_text());body='<p class="current">gTouchPal · 156 · История изменений по версиям</p>'
retired={title for f in features if f.get('removed') for title in f['history']}
for row in rows:
 gone=row['title'] in retired
 body+='<section class="entry"><div class="version">'+escape(row['version'])+'</div><h2>'+mark(row['title'],gone)+'</h2><ul>'
 for text in row['items']:
  if 'Из разделов орфографии и физической клавиатуры' in text:text=text.removeprefix('Снято в TEST95: ')
  superseded=(row['title']=='Свайп вверх по 12#' or row['title']=='Равномерные дополнительные знаки' or row['title']=='Знаки на одной странице' and ('без цифр' in text or 'После выбора знака' in text) or row['title']=='Знаки в сетке полной клавиатуры' and 'без кнопки' in text or row['title']=='Видимые дополнительные знаки' and 'все54' in text or row['title']=='Жесты и кнопки' and 'отдельный список' in text)
  body+='<li>'+mark(text,gone or text.startswith('Снято в TEST95:') or superseded)+'</li>'
 body+='</ul></section>'
(T/'assets/touchpal_history.html').write_text(shell(body))
assert len(features)==28 and len(rows)==143
assert rich('Ctrl + Пробел, 12#, кнопка меню')=='<strong>Ctrl + Пробел</strong>, <strong>12#</strong>, <strong>кнопка меню</strong>'
assert rich('Shift')=='<strong>Shift</strong>'
assert rich('«Сбросить»')=='<strong>«Сбросить»</strong>'
assert rich('«Предугадывание»')=='<strong>«Предугадывание»</strong>'
assert rich('«Перезапустить клавиатуру»')=='<strong>«Перезапустить клавиатуру»</strong>'

