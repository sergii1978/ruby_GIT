# Сложный Менделеев :) 

Теперь, когда данные в программе «Таблица Менделеева» вынесены в отдельный файл, давайте немного усложним программу.

Пусть для каждого элемента в нашем JSON-файле будет указан не только его первооткрыватель, но и название, плотность, год открытия, а также порядковый номер. Перепишите вашу программу так, чтобы она выводила более подробную информацию о выбранном элементе.

```sh
О каком элементе хотите узнать?
Bk
Порядковый номер: 97
Название: Берклий
Первооткрыватель: Сиборг (1949 г.)
Плотность: 13.25 г/см³
```



<div class="rubyrush-task-hint">

Придётся сделать более сложную структуру, но не бойтесь. 

Помните, что в JSON без кавычек могут идти целые числа (например, год или порядковый номер) и числа с плавающей точкой (плотность). 

Ваш файл `elements.json` должен выглядеть примерно так:

```json
{
  "H":{
    "number": 1,
    "name": "Водород",
    "density": 0.000084,
    "year": 1766,
    "discoverer": "Кавендиш"
  },
  ...
}
```

А когда будете выводить элементы на экран, помните, что каждый из них уже не строка а отдельный ассоциативный массив. 

Чтобы вывести, например, плотность водорода, надо написать так

```ruby
elements["H"]["density"]
```

Удобно, не правда ли?

Обязательно посмотрите ответ к этой задаче. Там мы собрали все элементы таблицы со более подробным перечнем информации о них.


</div>


<div class="rubyrush-task-answer">

Посмотрите наше решение, в которое мы добавили все элементы таблицы Менделеева, известные на данный момент.

<p>
<a href="https://github.com/aristofun/rubyrush-path/tree/master/steps/json-04/solution/" class="rubyrush-task-solution-link">Файлы решения</a>
</p>

</div>
