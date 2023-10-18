﻿# DE_T2.01
Промежуточная аттестация 2.01

Промежуточная аттестация (Задание 1)
Анализ велосипедных поездок 

Цель.

Используя средства СУБД Postgres загрузить данные о велопоездах в городе Остин за 2013-2017 год, преобразовать их и подготовить специальную витрину для дальнейшего анализа.

Данные.

Вам доступно два файла с данными: 

austin_bikeshare_trips.csv

* bikeid: целочисленный идентификатор велосипеда

* checkout_time: ЧЧ:ММ:СС, см. время начала для отметки даты

* duration_minutes:: целое число минут продолжительности поездки.

* end_station_id: целочисленный идентификатор конечной станции.

* end_station_name: строка имени конечной станции.

* month: месяц, целое число

* start_station_id: целочисленный идентификатор начальной станции

* start_station_name: строка названия начальной станции.

* start_time: ГГГГ-ММ-ДД ЧЧ:ММ:СС

* subscriber_type: тип членства, например. прогулка пешком, ежегодная, другая велопрокат и т. д.

* trip_id: уникальный идентификатор поездки int

* год: год поездки, целое число

austin_bikeshare_stations.csv

* latitude: геопространственная широта, точность до 5 знаков.

* location: (широта, долгота)

* longitude: геопространственная долгота, точность до 5 знаков.

* name: название станции, ул.

* station_id: уникальный идентификатор станции, целое число

* status: статус станции (активна, закрыта, перемещена, только ACL)


 

Задание.

Используя СУБД Postgres напишите запрос, который формирует таблицы соответствующие по структуре и типу полей из входных csv-файлов. 

Наполните только что созданные таблицы данными из файлов. 

Напишите sql-запрос, который формирует таблицы для каждого года(с 2013 по 2017) следующего содержания: 

* уникальный идентификатор станции

* количество начавшихся поездок в данной станции за данных год

* количество завершенных поездок в данной станции за данных год

* общее количество поездок начавшихся или закончившихся в данной станции за данных год

* средняя продолжительность поездок начавшихся в данной станции в данном году

* средняя продолжительность поездок завершившихся в данной станции в данном году

При написании предыдущего запроса учитывайте следующие условия:

* Станции должны быть активными

* Станции в итоговой витрине должны быть отсортированы по средней продолжительности поездок начавшихся в данной станции

К итоговому результату приложите названия 10 станций с самым высоким показателем средней продолжительности начавшихся поездок за 2016 год

 

В качестве результата необходимо приложить к заданию с номером:

1-4. Текст запроса на языке SQL

5. Текстовый файл или скриншот

Дополнительно можно приложить docker-образ для развертывания СУБД Postgres.

Решение:

5.

![Image alt](https://github.com/MOMIV/DE_T2.01/raw/main/pic/top10_2016.png)

