
create table question(
question_id int auto_increment primary key,
question_description varchar(300)
);

create table answer(
answer_id int auto_increment primary key,
answer_description varchar(100),
istrue bool,
question_id int,
FOREIGN KEY (question_id) REFERENCES question(question_id)
);

insert into question (question_description) values (
'Первая мировая война началась:'
);

insert into question (question_description) values (
'Впервые химическое оружие было применено в битве под:'
);

insert into question (question_description) values (
'Немецкий генеральный план ведения Первой мировой войны был разработан:'
);

insert into question (question_description) values (
'Укажите лишнее в приведенном предложении. В 1915г. на стороне Тройственного союза воевали:'
);

insert into question (question_description) values (
'Версальский мирный договор был подписан в:'
);

insert into question (question_description) values (
'Какое событие произошло раньше:'
);

insert into question (question_description) values (
'Рапалльский договор был подписан между странами:'
);

insert into question (question_description) values (
'Первое правительство Народного фронта во Франции возглавил:'
);

insert into question (question_description) values (
'Мировой экономический кризис произошел в период:'
);

insert into question (question_description) values (
'В Великобритании всеобщая стачка состоялась в:'
);

insert into question (question_description) values (
'Укажите лишнее из предложенного перечня:'
);

insert into question (question_description) values (
'Февральская революция произошла:'
);

insert into question (question_description) values (
'Первое советское правительство – СНК возглавил:'
);

insert into question (question_description) values (
'В СССР – «год великого перелома»:'
);

insert into question (question_description) values (
'Укажите лишнее из предложенного перечня :'
);

insert into question (question_description) values (
'Периодом гражданской войны в Испании является:'
);

insert into question (question_description) values (
'Укажите событие, произошедшее позже:'
);

insert into question (question_description) values (
'Веймарская республика просуществовала:'
);

insert into question (question_description) values (
'Началом революции в Венгрии считается :'
);

insert into question (question_description) values (
'Начальником Польского государства стал:'
);

insert into answer (answer_description, istrue, question_id) values (
'в 1914г.',
true,
1
);

insert into answer (answer_description, istrue, question_id) values (
'в 1915г.',
false,
1
);

insert into answer (answer_description, istrue, question_id) values (
'Верденом',
false,
2
);

insert into answer (answer_description, istrue, question_id) values (
'Ипром',
true,
2
);

insert into answer (answer_description, istrue, question_id) values (
'Марной',
false,
2
);

insert into answer (answer_description, istrue, question_id) values (
'О. Бисмарком',
false,
3
);

insert into answer (answer_description, istrue, question_id) values (
'А. Шлиффеном',
true,
3
);

insert into answer (answer_description, istrue, question_id) values (
'Ф. Фердинандом',
false,
3
);

insert into answer (answer_description, istrue, question_id) values (
'Болгария',
false,
4
);

insert into answer (answer_description, istrue, question_id) values (
'Германия',
false,
4
);

insert into answer (answer_description, istrue, question_id) values (
'Италия',
true,
4
);

insert into answer (answer_description, istrue, question_id) values (
'1918г.',
false,
5
);

insert into answer (answer_description, istrue, question_id) values (
'1919г.',
true,
5
);

insert into answer (answer_description, istrue, question_id) values (
'план Юнга',
false,
6
);

insert into answer (answer_description, istrue, question_id) values (
'план Дауэса',
true,
6
);

insert into answer (answer_description, istrue, question_id) values (
'Россией и Германией',
true,
7
);

insert into answer (answer_description, istrue, question_id) values (
'Россией и Францией',
false,
7
);

insert into answer (answer_description, istrue, question_id) values (
'Э. Даладье',
false,
8
);

insert into answer (answer_description, istrue, question_id) values (
'М. Торез',
false,
8
);

insert into answer (answer_description, istrue, question_id) values (
'Л. Блюм',
true,
8
);

insert into answer (answer_description, istrue, question_id) values (
'1929-1933гг.',
true,
9
);

insert into answer (answer_description, istrue, question_id) values (
'1927 – 1932гг.',
false,
9
);

insert into answer (answer_description, istrue, question_id) values (
'1929-1935гг.',
false,
9
);

insert into answer (answer_description, istrue, question_id) values (
'1831г.',
false,
10
);

insert into answer (answer_description, istrue, question_id) values (
'1931г.',
true,
10
);

insert into answer (answer_description, istrue, question_id) values (
'М. Торез',
true,
11
);

insert into answer(answer_description, istrue, question_id) values (
'Р. Пуанкаре',
false,
11
);

insert into answer (answer_description, istrue, question_id) values (
'Л. Блюм',
false,
11
);

insert into answer (answer_description, istrue, question_id) values (
'1801г.',
false,
12
);

insert into answer (answer_description, istrue, question_id) values (
'в 1918г.',
false,
12
);

insert into answer (answer_description, istrue, question_id) values (
'в 1917г.',
true,
12
);

insert into answer (answer_description, istrue, question_id) values (
'В. Ленин',
true,
13
);

insert into answer (answer_description, istrue, question_id) values (
'Сталин',
false,
13
);

insert into answer (answer_description, istrue, question_id) values (
'Ельцин',
false,
13
);

insert into answer (answer_description, istrue, question_id) values (
'1929',
false,
14
);

insert into answer (answer_description, istrue, question_id) values (
'1930',
true,
14
);

insert into answer (answer_description, istrue, question_id) values (
'национализация промышленности',
false,
15
);

insert into answer (answer_description, istrue, question_id) values (
'милитаризация труда',
true,
15
);

insert into answer (answer_description, istrue, question_id) values (
'продразверстка',
false,
15
);

insert into answer (answer_description, istrue, question_id) values (
'1933-1937гг.',
false,
16
);

insert into answer (answer_description, istrue, question_id) values (
'1936-1939гг.',
true,
16
);

insert into answer (answer_description, istrue, question_id) values (
'1801-1815гг.',
false,
16
);

insert into answer (answer_description, istrue, question_id) values (
'поход на Рим',
false,
17
);

insert into answer (answer_description, istrue, question_id) values (
'Поход на Монако".',
true,
17
);

insert into answer (answer_description, istrue, question_id) values (
'приход к власти фашистов в Германии',
false,
17
);

insert into answer (answer_description, istrue, question_id) values (
'с 1919 по 1929гг.',
false,
18
);

insert into answer (answer_description, istrue, question_id) values (
'с 1918-1927гг.',
true,
18
);

insert into answer (answer_description, istrue, question_id) values (
'Такой республики никогда не было',
false,
18
);

insert into answer (answer_description, istrue, question_id) values (
'ноябрь 1917г.',
false,
19
);

insert into answer (answer_description, istrue, question_id) values (
'ноябрь 1918г.',
true,
19
);

insert into answer (answer_description, istrue, question_id) values (
'декабрь 1901',
false,
19
);

insert into answer (answer_description, istrue, question_id) values (
'М.Боисеев',
false,
20
);

insert into answer (answer_description, istrue, question_id) values (
'Ю. Пилсудский',
true,
20
);

insert into answer (answer_description, istrue, question_id) values (
'Ю.Шакунов',
false,
20
);

















