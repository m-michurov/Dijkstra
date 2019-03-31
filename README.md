Вход:
строка 1:
	целое N от 0 до 5000 -- число вершин в неориентированном графе
строка 2:
	целое S от 1 до N целое F от 1 до N -- начало и конец пути
строка 3:
	целое M от 0 до N*(N-1)/2 -- число ребер в графе
от строки 4 до M+3:
	целое от 1 до N целое от 1 до N целое от 0 до INT_MAX -- начало, конец и длина ребра

Выход:
	если N не от 0 до 5000, то "bad number of vertices"
	если M не от 0 до N*(N+1)/2, то "bad number of edges"
	если номер вершины не от 1 до N, то "bad vertex"
	если длина ребра не от 0 до INT_MAX, то "bad length"
	если строк меньше M+3, то "bad number of lines"
	иначе
строка 1:
	ровно N значений -- расстояния от S до каждой вершины графа:
		oo			если нет пути
		INT_MAX+		если длина кратчайшего пути > INT_MAX
		длина кратчайшего пути	если длина кратчайшего пути <= INT_MAX
строка 2:
	информация о вершинах кратчайшего пути от S до F
		no path		если нет пути
		overflow	если (длина кратчайшего пути > INT_MAX) и (путей длины > INT_MAX два или больше)

		вершины кратчайшего пути первая вершина F, последняя вершина S если длина кратчайшего пути <= INT_MAX

	время на работу программы -- 3 секунды

Исполняемый файл + данные не более 4*N*N+1024Kb

Проверить, как тест проверяет правильность ответа -- не проверять конкретный путь (может быть неск.), проверять
стоимость пути + согласованность с матрицей смежности

Пример 1
Вход:
0
0 0
0

Выход:
bad vertex

Пример 2
Вход:
5001
1 1
1
1 1 1
Выход:
bad number of vertices

Пример 3
Вход:
2
2 2
4
1 1 1
1 2 1
2 1 1
2 2 1
Выход:
bad number of edges

Пример 4
Вход:
2
1 2
1
1 2 -1
Выход:
bad length

Пример 5
Вход:
2
1 2
0

Выход:
0 oo
no path

Пример 6
Вход:
3
1 3
2
1 2 2147483647
2 3 2147483647
Выход:
0 2147483647 INT_MAX+
3 2 1

Пример 7
Вход:
3
1 3
3
1 2 2147483647
2 3 2147483647
1 3 1
Выход:
0 2147483647 1
3 1

Пример 8
Вход:
4
1 3
4
1 2 2147483647
2 3 2147483647
3 4 2147483647
4 1 2147483647
Выход:
0 2147483647 INT_MAX+ 2147483647
overflow
