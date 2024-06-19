# SCT_Jmeter
Генератор запросов

Команда для запуска тестов:
1)пишем в командной строке полный путь к файлу, который запускает jmeter, у меня это D:\всякое\apache-jmeter-5.6.3\bin\jmeter.bat
2)пишем -n(обозначает что jmeterбудет запускаться без графического интерфейса)
3)-t/path/to/your/test.jmx(путь к тесту)
4)-l /path/to/results.jtl (путь куда jmeter будет выгружать данные о результатах тестов)

полная команда выглядит так
 D:\apache-jmeter-5.6.3\bin\jmeter.bat -n -t /path/to/your/test.jmx -l /path/to/results.jtl

 Команда для формирования отчета в формате .html:
 D:\apache-jmeter-5.6.3\bin\jmeter.bat -g /path/to/results.jtl -o /путь/к/папке/отчета
