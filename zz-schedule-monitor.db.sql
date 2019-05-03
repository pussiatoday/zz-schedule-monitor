PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE android_metadata (locale TEXT);
INSERT INTO "android_metadata" VALUES('de_DE');
CREATE TABLE tables_metadata (table_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, pass TEXT, table_page INTEGER, form_page INTEGER, options INTEGER, ver INTEGER, view TEXT, sort1 INTEGER REFERENCES columns_metadata(column_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, dir1 TINYINT, sort2 INTEGER REFERENCES columns_metadata(column_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, dir2 TINYINT, sort3 INTEGER REFERENCES columns_metadata(column_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, dir3 TINYINT, sort4 INTEGER REFERENCES columns_metadata(column_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, dir4 TINYINT, sort5 INTEGER REFERENCES columns_metadata(column_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, dir5 TINYINT);
INSERT INTO "tables_metadata" VALUES(1,'a_log',NULL,NULL,NULL,NULL,26,'FORM',27,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "tables_metadata" VALUES(2,'the_method',NULL,NULL,NULL,NULL,26,'FORM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "tables_metadata" VALUES(4,'the_period',NULL,NULL,NULL,NULL,26,'FORM',13,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "tables_metadata" VALUES(5,'the_eligibility',NULL,NULL,NULL,NULL,26,'FORM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "tables_metadata" VALUES(6,'the_category',NULL,NULL,NULL,NULL,26,'FORM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
CREATE TABLE columns_metadata (column_id INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER REFERENCES tables_metadata(table_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, name TEXT, type TEXT, pos UNSIGNED INTEGER, rel INTEGER REFERENCES columns_metadata(column_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED);
INSERT INTO "columns_metadata" VALUES(1,2,'ts','DATE_TIME',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(2,2,'background','TEXT',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(3,2,'objective','TEXT',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(4,2,'media','TEXT',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(5,2,'material','TEXT',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(6,2,'design','TEXT',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(7,2,'screening','TEXT',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(8,2,'extraction','TEXT',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(9,2,'qoe','TEXT',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(10,2,'synthesis','TEXT',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(11,4,'label','TEXT',1,NULL);
INSERT INTO "columns_metadata" VALUES(12,4,'ts','DATE_TIME',4,NULL);
INSERT INTO "columns_metadata" VALUES(13,4,'pos','INTEGER',3,NULL);
INSERT INTO "columns_metadata" VALUES(18,5,'label','TEXT',1,NULL);
INSERT INTO "columns_metadata" VALUES(19,5,'ts','DATE_TIME',2,NULL);
INSERT INTO "columns_metadata" VALUES(21,6,'label','TEXT',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(22,6,'criteria','TEXT',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(23,6,'ts','DATE_TIME',2147483647,NULL);
INSERT INTO "columns_metadata" VALUES(24,4,'cat','RELATIONSHIP',2,21);
INSERT INTO "columns_metadata" VALUES(25,1,'period','RELATIONSHIP',2,11);
INSERT INTO "columns_metadata" VALUES(26,1,'eligibility','RELATIONSHIP',3,18);
INSERT INTO "columns_metadata" VALUES(27,1,'ts','DATE_TIME',1,NULL);
INSERT INTO "columns_metadata" VALUES(28,1,'note','TEXT',4,NULL);
CREATE TABLE views_metadata (view_id INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER REFERENCES tables_metadata(table_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, name TEXT,  table_page INTEGER, form_page INTEGER, options INTEGER, ver INTEGER, view TEXT, sort1 INTEGER REFERENCES fields_metadata(field_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, dir1 TINYINT, sort2 INTEGER REFERENCES fields_metadata(field_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, dir2 TINYINT, sort3 INTEGER REFERENCES fields_metadata(field_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, dir3 TINYINT, sort4 INTEGER REFERENCES fields_metadata(field_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, dir4 TINYINT, sort5 INTEGER REFERENCES fields_metadata(field_id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, dir5 TINYINT);
CREATE TABLE fields_metadata (field_id INTEGER PRIMARY KEY AUTOINCREMENT, view_id INTEGER REFERENCES views_metadata(view_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, name TEXT, type TEXT, formula TEXT, pos UNSIGNED INTEGER);
CREATE TABLE old_tables (table_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT);
INSERT INTO "old_tables" VALUES(1,'category');
CREATE TABLE t1 (id INTEGER PRIMARY KEY AUTOINCREMENT, c25 INTEGER REFERENCES t4(id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, c26 INTEGER REFERENCES t5(id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED, c27 TEXT, c28 TEXT);
INSERT INTO "t1" VALUES(1,NULL,NULL,NULL,NULL);
CREATE TABLE t2 (id INTEGER PRIMARY KEY AUTOINCREMENT, c1 TEXT, c2 TEXT, c3 TEXT, c4 TEXT, c5 TEXT, c6 TEXT, c7 TEXT, c8 TEXT, c9 TEXT, c10 TEXT);
INSERT INTO "t2" VALUES(1,'2019-05-03 10:47','2 февраля 2019 спланирован и опубликован мой новый режим.

http://pussia.today/2019/02/02/new-schedule/

Выдержка из поста:

> Пн.–пт. с 9 до 18 ― в отделении (до 45 часов в неделю).
>
> Пн.–чт., вс. с 21 до 6 ― за экспертизами (до 45 часов в неделю).
>
> Все остальное время (до 78 часов в неделю) ― на подготовку. Туда попадают вся p1m-ortho, cамообразование и дежурства.
>
> (…)
>
> Режим не то чтобы совсем новый, но такой формализованный вид сегодня получил впервые. Также впервые время на экспертизу и подготовку выделено достаточно четко.
>
> Очевидно, что разметка эта ― достаточно грубая, потому что не выделено время на сон и другие вещи. Кроме того, границы окончания на практике то и дело съезжают кверху (освобождаюсь раньше), что высвобождает время.
>
> Так или иначе, впервые за долгое время я придаю своему графику стройный вид и однозначно впервые это публикую, причем основная цель здесь ― контроль для самого себя на будущее; личных дневников у меня нет, ничего секретного в этой информации не вижу, а зафиксировать нужно, и с учетом уже имеющегося ресурса «Паша сегодня» опубликовать в нем представляется оптимальным решением (…)

Вместе с тем, сегодня, 3 мая 2019, объективные данные, такие как фактическая посещаемость отделения, часы фактической работы над экспертизами и часы и плотность коммитов на p1m-ortho и время постов на pussia.today, а также некоторые дополнительные источники сведений о деятельности, такие как страницы в социальных сетях и переписки в мессенджерах, в моей интерпретации свидетельствуют, что режим фактически не соблюдаю совсем.

Ниже для справки количество времени, уже прошедшего на данный момент с момента учреждения нового режима.

https://www.timeanddate.com/date/durationresult.html?d1=02&m1=02&y1=2019&h1=23&i1=57&s1=&d2=3&m2=5&y2=2019&h2=10&i2=47&s2=

From: Samstag, 2. Februar 2019, 23:57:00
To: Freitag, 3. Mai 2019, 10:47:00

Result: 89 days, 10 hours, 50 minutes and 0 seconds

The duration is 89 days, 10 hours, 50 minutes and 0 seconds

Or 3 months, 10 hours, 50 minutes

Alternative time units

89 days, 10 hours, 50 minutes and 0 seconds can be converted to one of these units:

7 728 600 seconds

128 810 minutes

2146 hours (rounded down)

89 days (rounded down)

12 weeks (rounded down)

24,51% of 2019

При правильной организации учета этот режим дает понять: вот я работаю в отделении, вот занимаюсь экспертизой, и вот свидетельства.','Собрать целенаправленную отчетность по соблюдению режима для повышения его соблюдаемости либо подготовки конструктивных изменений.','Неприменимо, так как объект изучения — выполняемая деятельность.','Единицей измерения будет период — деятельность, выполненная за определенный временной интервал в режиме.','Настоящий протокол (вся эта база данных в виде SQL-запроса) опубликую в специальном личном публичном репозитории на Гитхабе до начала исследования.

В журнале в этой базе по окончании каждого периода ответственное лицо должно будет оставить запись.

Запись будет содержать заключение экспертной группы о том, соответственно ли я затратил данный период.

Таким образом, в записи в журнале должно быть указано:

* временной штамп на момент создания записи,
* временной период, к которому относится заключение,
* соответствие израсходования периода согласно суждению экспертной группы,
* на усмотрение экспертной группы или ответственного лица — свободнотекстовый комментарий к записи.

Ответственное лицо пока что будет представлено лично мной.','Учету и включению в последующий анализ подлежат все периоды и вся деятельность, выполненная мной за этот период. При этом периоды согласно режиму покрывают 24/7, а за деятельность здесь считаю вообще все, что со мной происходит за это время.

Вполне ожидаемо, что некоторые периоды или некоторая деятельность будут пропущены.

Особенно ожидаемы ситуации, когда запись будет вноситься спустя два и более периода по сравнению с предыдущей. В таком случае нужно приложить все усилия, чтобы охарактеризовать не только последний период, но и все предыдущие. Лишь при полной амнезии произошедшего и абсолютной неудаче получить эти сведения извне следует эти периоды допустимо считать пропущенными. При восстановлении этих сведений в будущем требуется незамедлительно внести их в журнал. Лишь на периоды, произошедшие со 2 февраля 2019 по дату публикации этого протокола (ориентировочно 4 мая 2019), эти требования распространяются не столь жестко.

На ситуации, когда пропущена часть деятельности в пределах периода, так что затрудняется определение соответствия, распространяются те же условия: приложить все усилия и восстановить все необходимые сведения во что бы то ни стало. Лишь в самом скверном случае допускается считать такой период пропущенным и не вносить его. При восстановлении этих сведений в будущем требуется незамедлительно внести их в журнал. ','Согласно новому режиму каждому периоду соответствует только одна определенная категория деятельности, которой я должен этот период посвятить.

Список категорий соответствия и их операционализированные критерии для каждой категории деятельности, которые по сравнению с оригинальным постом установлю впервые, см. в отдельных таблицах.

Решение о соответствии будет выносить экспертная группа.
Экспертная группа пока что будет представлена лично мной.','Что может поспособствовать завышению или занижению общей доли соответствий?

* Сложно сказать, см. ниже в детализации.

Что может поспособствовать завышению или занижению доли соответствий по отделению?

1. Хождение в отделение с фактическим выполнением небольшого объема клинической работы — завышенно оптимистичная оценка, но пока оставим эту проблему до дальнейших времен: детализация клинической деятельности.
2. Избыточное нехождение по не зависящим от меня причинам — заниженно пессимистичная оценка, но пусть будет: это жестокий мир, нечего его смягчать.
3. Активное занятие клинической работой вне отделения — заниженно пессимистичная оценка, но пусть будет, особенно пока сохраняется риск 1.
4. Активное занятие клинической работой в другие периоды, в том числе в выходные дни — заниженно пессимистичная оценка, но пусть тоже будет, см. риск 3.
5. Частые пропуски периодов по случайным причинам — случайные колебания, общее снижение мощности, но для этого и вынесено во вторичный исход, чтобы мониторить и при учащении пропусков стимулировать заполняемость.
6. Систематические пропуски периодов, когда не пошел в отделение, из соображений мошенничества — завышенно оптимистичная оценка, но на этот случай предусмотрена система жестких требований по отсутствию пропусков вообще и включение пропусков как вторичного исхода с их мониторингом, что в совокупности призвано задушить мошенника.
7. Систематические пропуски периодов, когда не пошел в отделение, потому что усиленно развлекался — завышенно оптимистичная оценка, но включается система контроля пропусков, см. риск 6.
8. Систематические пропуски периодов, когда пошел в отделение, из-за усталости после работы — заниженно пессимистичная оценка, но такие пропуски, пожалуй, одни из немногих действительно обоснованных, система контроля против них бессильна, так что это пессимизация, на которую приходится идти; также см. риск 2.

Что может поспособствовать завышению или занижению доли соответствий по экспертизе?

9. Избыточное начинание заданий без их завершения — завышенно оптимистичная оценка, но пресекается руководством.
10. Большое количество неоплачиваемых коррекций — заниженно пессимистичная оценка, но есть свидетельства, что этого не происходит.
11. Большой объем экспертиз, вынуждающий растягивать работу на несколько периодов — заниженно пессимистичная оценка, но также есть свидетельства, что этого не происходит.
12. Частые пропуски периодов по случайным причинам — случайные колебания, общее снижение мощности, но приняты меры, см. риск 5.
13. Систематические пропуски периодов, когда не выполнил условий соответствия, из соображений мошенничества — завышенно оптимистичная оценка, но приняты меры, см. риск 6.
14. Систематические пропуски периодов, когда не выполнил условий соответствия, потому что усиленно развлекался — завышенно оптимистичная оценка, но приняты меры, см. риск 6.
15. Систематические пропуски периодов, когда соответствовал условиям, из-за усталости после окончания работы — заниженно пессимистичная оценка, но см. риск 8.

Что может поспособствовать завышению или занижению доли соответствий по подготовке?

16. Чувство гордости и сделанного дела после, достигаемое выполнением развлекательных задач — завышенно оптимистичная оценка, но пресекается критериями.
17. Отсутствие чувства гордости и сделанного дела даже после выполнения адекватных задач на общем сниженном фоне настроения — заниженно пессимистичная оценка, но пусть, см. риск 2.
18. Отсутствие чувства гордости и сделанного дела даже после выполнения адекватных задач из-за снижения настроения по другим причинам — заниженно пессимистичная оценка, но пусть, см. риск 2.
19. Частые пропуски периодов по случайным причинам — случайные колебания, общее снижение мощности, но приняты меры, см. риск 5.
20. Систематические пропуски периодов, когда не было нужного чувства, из соображений мошенничества — завышенно оптимистичная оценка, но приняты меры, см. риск 6.
21. Систематические пропуски периодов, когда не было нужного чувства, из-за снижения мотивации в такие моменты — завышенно оптимистичная оценка, но балансируется рисками 17 и 18.
22. Систематические пропуски периодов, когда было нужное чувство, потому что усиленно его праздновал, — заниженно пессимистичная оценка, но приняты меры, см. риск 6.

Что может поспособствовать завышению или занижению доли пропусков?

* См. выше.','Все оценки выполняются:

1. За прошедшую неделю.
2. За прошедший месяц.
3. За прошедшие три месяца.
4. За прошедшие шесть месяцев.
5. За прошедшие девять месяцев.
6. За прошедший год.
7. За все прошедшее время.

Тренды пока не анализируем, но, может быть, будем в будущем.

Первичный исход:

1. Число периодов, которое должно пройти для достижения одного соответствия периода (показатель, обратный общей доле соответствующих периодов).

Вторичные исходы:

1. Число периодов, которое должно пройти для достижения одного соответствия периода отделения (показатель, обратный доле соответствующих периодов отделения).
2. Число периодов, которое должно пройти для достижения одного соответствия периода экспертизы (показатель, обратный доле соответствующих периодов экспертизы).
3. Число периодов, которое должно пройти для достижения одного соответствия периода подготовки (показатель, обратный доле соответствующих периодов подготовки).
4. Число периодов, которое должно пройти для пропуска одного периода (показатель, обратный общей доле пропущенных периодов).');
CREATE TABLE "o1" (id INTEGER PRIMARY KEY AUTOINCREMENT, c14 TEXT, c15 TEXT, c16 TEXT, c17 BIGINT);
CREATE TABLE t4 (id INTEGER PRIMARY KEY AUTOINCREMENT, c11 TEXT, c12 TEXT, c13 BIGINT, c24 INTEGER REFERENCES t6(id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED);
INSERT INTO "t4" VALUES(1,'Пн. с 9 до 18 ― в отделении (до 9 из 45 часов в неделю, или до 20 %)','2019-05-03 14:39',3,1);
INSERT INTO "t4" VALUES(2,'Пн. с 21 до 6 ― за экспертизами (до 9 из 45 часов в неделю, или до 20 %)','2019-05-03 14:39',5,2);
INSERT INTO "t4" VALUES(3,'Пн. с 6 до 9 ― подготовка (до 3 из 78 часов в неделю, или до 4 %)','2019-05-03 14:41',2,3);
INSERT INTO "t4" VALUES(4,'Пн. с 18 до 21 ― подготовка (до 3 из 78 часов в неделю, или до 4 %)','2019-05-03 14:43',4,3);
INSERT INTO "t4" VALUES(5,'Вт. с 6 до 9 ― подготовка (до 3 из 78 часов в неделю, или до 4 %)','2019-05-03 14:45',6,3);
INSERT INTO "t4" VALUES(6,'Вт. с 9 до 18 ― в отделении (до 9 из 45 часов в неделю, или до 20 %)','2019-05-03 14:46',7,1);
INSERT INTO "t4" VALUES(7,'Вт. с 18 до 21 ― подготовка (до 3 из 78 часов в неделю, или до 4 %)','2019-05-03 14:46',8,3);
INSERT INTO "t4" VALUES(8,'Вт. с 21 до 6 ― за экспертизами (до 9 из 45 часов в неделю, или до 20 %)','2019-05-03 14:46',9,2);
INSERT INTO "t4" VALUES(9,'Ср. с 6 до 9 ― подготовка (до 3 из 78 часов в неделю, или до 4 %)','2019-05-03 14:46',10,3);
INSERT INTO "t4" VALUES(10,'Ср. с 9 до 18 ― в отделении (до 9 из 45 часов в неделю, или до 20 %)','2019-05-03 14:47',11,1);
INSERT INTO "t4" VALUES(11,'Ср. с 18 до 21 ― подготовка (до 3 из 78 часов в неделю, или до 4 %)','2019-05-03 14:58',12,3);
INSERT INTO "t4" VALUES(12,'Ср. с 21 до 6 ― за экспертизами (до 9 из 45 часов в неделю, или до 20 %)','2019-05-03 14:58',13,2);
INSERT INTO "t4" VALUES(13,'Чт. с 6 до 9 ― подготовка (до 3 из 78 часов в неделю, или до 4 %)','2019-05-03 14:59',14,3);
INSERT INTO "t4" VALUES(14,'Чт. с 9 до 18 ― в отделении (до 9 из 45 часов в неделю, или до 20 %)','2019-05-03 15:03',15,1);
INSERT INTO "t4" VALUES(15,'Чт. с 18 до 21 ― подготовка (до 3 из 78 часов в неделю, или до 4 %)','2019-05-03 15:04',16,3);
INSERT INTO "t4" VALUES(16,'Чт. с 21 до 6 ― за экспертизами (до 9 из 45 часов в неделю, или до 20 %)','2019-05-03 15:04',17,2);
INSERT INTO "t4" VALUES(17,'Пт. с 6 до 9 ― подготовка (до 3 из 78 часов в неделю, или до 4 %)','2019-05-03 15:04',18,3);
INSERT INTO "t4" VALUES(18,'Пт. с 9 до 18 ― в отделении (до 9 из 45 часов в неделю, или до 20 %)','2019-05-03 15:05',19,1);
INSERT INTO "t4" VALUES(19,'Пт. с 18 до вс. 21 ― подготовка (до 51 из 78 часов в неделю, или до 65 %)','2019-05-03 15:05',20,3);
INSERT INTO "t4" VALUES(20,'Вс. с 21 до 6 ― за экспертизами (до 9 из 45 часов в неделю, или до 20 %)','2019-05-03 15:12',1,2);
CREATE TABLE t5 (id INTEGER PRIMARY KEY AUTOINCREMENT, c18 TEXT, c19 TEXT, c20 TEXT);
INSERT INTO "t5" VALUES(1,'Соответствие','2019-05-03 17:36',NULL);
INSERT INTO "t5" VALUES(2,'Несоответствие','2019-05-03 17:36',NULL);
CREATE TABLE t6 (id INTEGER PRIMARY KEY AUTOINCREMENT, c21 TEXT, c22 TEXT, c23 TEXT);
INSERT INTO "t6" VALUES(1,'Отделение','Побывать в отделении.
Причина отсутствия не имеет значения.
Будь то официальные выходные, отпуск, болезнь или смерть близкого родственника.
Учет по фактической посещаемости.','2019-05-03 18:09');
INSERT INTO "t6" VALUES(2,'Экспертиза','Сделать хотя бы одну экспертизу.
Именно начать одну новую, оплачиваемую экспертизу.
Доделки уже начатых и коррекции уже сделанных не в счет.','2019-05-03 18:09');
INSERT INTO "t6" VALUES(3,'Подготовка','Испытать a sense of pride and accomplishment.
The sense of pride and accomplishment, полученное от игры в Battlefront и решения прочих непрактичных задач, не в счет.
Только the sense of pride and accomplishment, полученное от выполнения задач, имеющих практическое значение.
Разделение, что считать практичным, а что нет, остается на мое усмотрение.
В сложных случаях соответствие следует определять по велению сердца.','2019-05-03 18:09');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('tables_metadata',6);
INSERT INTO "sqlite_sequence" VALUES('columns_metadata',28);
INSERT INTO "sqlite_sequence" VALUES('t2',1);
INSERT INTO "sqlite_sequence" VALUES('t4',21);
INSERT INTO "sqlite_sequence" VALUES('o1',15);
INSERT INTO "sqlite_sequence" VALUES('old_tables',1);
INSERT INTO "sqlite_sequence" VALUES('t5',2);
INSERT INTO "sqlite_sequence" VALUES('t6',3);
INSERT INTO "sqlite_sequence" VALUES('t1',1);
COMMIT;
