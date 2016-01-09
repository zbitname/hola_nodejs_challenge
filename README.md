## Альтернативный результат конкурса от Hola

### Тест на корректность
У меня есть свои тесты на корректность. Часть из этих тестов были построены на том, что выдавала эталонная реализация, предоставленная организатором конкурса.
filter.spec.js - тестовые данные, которые берутся из файлов test1.json и test2.json проверяются по эквивалентному регулярному выражению.
Я запустил свои тесты (логи результатов в директории results)
5 решений упали из-за нехватки ОЗУ, 3 из них в результатах организатора конкурса помечены как не прошедшие тест на корректность, мы же будем считать, что другие 2 имеют корректную реализацию.
Ещё 19 решений не прошли мой тест.
Потом я убрал из списка тех, кто не прошёл тест организатора конкурса.
И получилось 96 корректных решений (./results/ok_final.log).

### Benchmark
Поднял виртуалку на DigitalOcaen (1 GB Memory / 30 GB Disk / NYC3 / Ubuntu 14.04 x64 vmlinuz-3.13.0-71-generic), на ней и буду тестировать производительность.

Подготовка сервера
```
$ curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
$ sudo apt-get install -y nodejs
$ sudo apt-get install -y build-essential
$ sudo npm i -g n
$ sudo n 5.0.0
$ node -v
v5.0.0
$ sudo apt-get install unzip
$ wget http://54810.selcdn.com/public/hola.git.zip
$ unzip hola.git.zip
```

Тестирование производительности
```
cd hola.git
sudo chmod +x run.bash
sudo chmod +x runall.bash
./runall.bash > benchmark.log
```
Для каждого решения тест запускается 50 раз, вычисляется самый быстрый вариант и выводится на экран.

Результаты бенчмарка: results/benchmark.log

### Итог
\# | time, ms | Name | Comment
--- | --- | --- | ---
1 | 0,556551560 | Roman Pletnev |
2 | 0,625574511 | Evgeny Zeyler |
0 | 0,641852671 | Ecma Scripter | Disqualified[1]
3 | 0,646645631 | Denis Bezrukov |
4 | 0,686985655 | Yuri Kilochek |
5 | 0,707077866 | Andrew Kashta |
6 | 0,708169293 | Denis Kreshikhin |
7 | 0,708502823 | Sergey Golub |
8 | 0,710200874 | Black Knight |
9 | 0,752503483 | Vitalii Petrychuk |
10 | 0,752972259 | Max Brodin |
11 | 0,756229334 | Alex Kheben |
12 | 1,000482641 | Kobi |
13 | 1,000867926 | Ionicman |
14 | 1,001093758 | Vitaliy (vint) |
15 | 1,001495467 | Sergey Mikhailovich |
16 | 1,002432775 | Alexander Rusakov |
17 | 1,002454202 | Nikolay Kuchumov |
18 | 1,002692827 | R5t4nah6 |
19 | 1,002770685 | Sergey Ivanov |
20 | 1,004096219 | Andrey Pogoreltsev |
21 | 1,004511987 | Alexey Kolpakov |
22 | 1,004703591 | Vladimir Privalov |
23 | 1,004940042 | Petr Shalkov |
24 | 1,005723473 | Pavel Gruba |
25 | 1,006257555 | yuri_c |
26 | 1,006786541 | Andrey Kostakov |
27 | 1,006977510 | Denis Kepeshchuk |
28 | 1,011252032 | Ilya Makarov |
29 | 1,013823362 | Evgenii Kazmiruk |
30 | 1,016392779 | Maxim Khoruzhko |
31 | 1,019416833 | Denys Skychko |
32 | 1,026773845 | KingOfNothing |
33 | 1,027153194 | Nikolay Karev |
34 | 1,048490652 | Dmitry Rybin |
35 | 1,055868290 | Andy5938 |
36 | 1,088022426 | Maxim Drozdov |
37 | 1,090929448 | Vasiliy Kostin |
38 | 1,091832985 | Alexey Larkov |
39 | 1,095452368 | Sergey Petkun |
40 | 1,098684611 | Vladimir Barbarosh |
41 | 1,113191387 | Aydar Mirzagitov |
42 | 1,117028568 | Oleg Popov |
43 | 1,133245058 | Stas Vasilyev |
44 | 1,137272051 | Dmitry Podgorniy |
45 | 1,163012874 | Alexey Sadovin |
46 | 1,189087158 | Pavel Koltyshev |
47 | 1,189241611 | Pavel Orlov |
48 | 1,193201461 | Katerina Pavlenko |
49 | 1,206007533 | Ruslan Koptev |
50 | 1,233195318 | Alexander Ilyin |
51 | 1,241094047 | Nadav Ivgi |
52 | 1,291156510 | Igor Potapov |
53 | 1,312492346 | Vladislav Nezhutin |
54 | 1,338233458 | Ilya Mochalov |
55 | 1,347951368 | Nickolay Savchenko |
56 | 1,365919395 | Sergey Savelyev |
57 | 1,375302428 | Vitali Falileev |
58 | 1,380237899 | Alina Lozhkina |
59 | 1,384497174 | Anton Podkuyko |
60 | 1,397942819 | Daniil Onoshko |
61 | 1,411481481 | Yuriy Khabarov |
62 | 1,419403151 | Danila Sukhanov |
63 | 1,424879645 | Alexandr |
64 | 1,443476057 | Siroj Matchanov |
65 | 1,469563447 | Arkadi Klepatch |
66 | 1,505109047 | Vitali Koshtoev |
67 | 1,553294565 | Vitaly Dyatlov |
68 | 1,601511616 | Denis Protasov |
69 | 1,728877575 | Serj Karasev |
70 | 1,730841313 | Andrey Grankin |
71 | 1,741695762 | Aleksey Sergey |
72 | 1,965443007 | Georgy Chebanov |
73 | 1,980881695 | Dmitry Egorov |
74 | 2,030221749 | Ruslan Minukov |
75 | 2,433728297 | Jarek Płocki |
76 | 2,724860487 | Evgeny Lukianchikov |
77 | 2,750176650 | Zibx |
78 | 2,788571689 | Alexey Chemichev |
79 | 2,791845315 | Sergey Lichack |
80 | 2,818985592 | berrunder |
81 | 3,008532060 | Alexey Pushnikov |
82 | 3,254837269 | Slava Shklyaev |
83 | 3,324868973 | Vyacheslav Bazhinov |
84 | 3,429730086 | Alex Ku |
85 | 3,590581308 | Kirill Bykov |
86 | 3,719542128 | Aleksei Murashin |
87 | 4,000530608 | Vyacheslav Ryabinin |
88 | 4,499269336 | Alexander Savchuk |
89 | 4,607167268 | Vladimir Osipov |
90 | 6,042714439 | nerv |
91 | 7,460250761 | Nikolay Shevlyakov |
92 | 7,643600898 | Dan Revah |
93 | 10,045456476 | Nikita Isaev |
94 | 10,116121914 | Igor Vladimirovich |
95 | 11,156795268 | Ilya Chervonov |