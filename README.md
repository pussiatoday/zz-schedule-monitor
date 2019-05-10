# Новый режим: проспективный мониторинг соблюдения в соответствии с протоколом, опубликованным до начала исследования

## Новый режим

[Оригинальный пост с новым режимом на pussia.today](http://pussia.today/2019/02/02/new-schedule/).

## Протокол мониторинга

[Оригинальный протокол в виде дампа базы данных SQLite](https://github.com/pussiatoday/zz-schedule-monitor/blob/3c51b3592d8ca028c0d469af61a00f5f5557cd21/zz-schedule-monitor.db.sql).

Также доступен в виде [бинарного файла базы данных](https://github.com/pussiatoday/zz-schedule-monitor/raw/0fd07faf1c9ad63d755e8ff9c95e0c1e8915fa0f/zz-schedule-monitor.db).

За возможными обновлениями протокола следите, пожалуйста, в [истории коммитов](https://github.com/pussiatoday/zz-schedule-monitor/commits/master).

## [Инструкция по открытию файла базы](tutorial/README.md)

## Результаты мониторинга

Мониторинг начался по плану 4 мая.

Опубликованы [сырые данные (журнал с записями) за первую неделю в виде полного дампа базы](https://github.com/pussiatoday/zz-schedule-monitor/blob/ff5398f8e469fa749ea6d73821430b603596b54c/zz-schedule-monitor.db.sql). Перед дампом из журнала удалил поле `note`, так как содержало персональные данные других лиц.

Первые и ближайшие результаты ожидаются 11 мая (за прошедшую неделю).

Затем ближайший график следующий (согласно протоколу):

* 18 мая (за прошедшую неделю);
* 25 мая (за прошедшую неделю);
* 1 июня (за прошедшую неделю и за прошедший месяц).

## Благодарности

Огромное спасибо PortoFarina за их замечательное приложение [PortoDB Database](https://play.google.com/store/apps/details?id=com.portofarina.portodb)!

Не перечесть, сколько раз я его использовал, использую и буду использовать в повседневной работе.

И, конечно же, команде [SQLite](https://sqlite.org).

Без них мир был бы другим.
