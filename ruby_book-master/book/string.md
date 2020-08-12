## Текст (String)

**Добавленные модули: Comparable**

При работе с текстом следует помнить, что интерпретатор на стадии создания объекта не анализирует его значение. Поэтому для любого текста, всегда создается новый объект, даже если объект с таким же значением уже существует.

`::new( string = "" ) # -> string`

Используется для создания нового объекта.  
`String.new # -> ""`

### Приведение типов

`::try_convert(object) # -> string`

Преобразование в текст с помощью метода `.to_str`. Если для объекта этот метод не определен, то возвращается nil.  
`String.try_convert [1] # -> nil`

`.to_s # -> string`  
Синонимы: `to_str`

`.to_sym # -> sym`

Преобразование в идентификатор.

~~~~~ ruby
  "abc".to_sym # -> :abc
  "123a".to_sym # -> :"123a"
~~~~~

`.to_i( numeral_system = 10 ) # -> integer`

Преобразование в целое число в заданной системе счисления. Обработка продолжается до первого символа, не относящегося к цифрам. Если текст начинается с такого символа или преобразование невозможно, то возвращается 0.

~~~~~ ruby
  "1".to_i # -> 1
  "1a".to_i # -> 1
  "1x".to_i # -> 1
  "1.2".to_i # -> 1
  "4/2".to_i # -> 4
  "1 + 2".to_i # -> 1
  "1   2".to_i # -> 1
  "1e2".to_i # -> 1
  "1_2".to_i # -> 12
  "0b01 ax".to_i # -> 0
  "0x01 ax".to_i # -> 0
  "1+1i".to_i # -> 1
~~~~~

`.to_r # -> rational`

Преобразование в рациональную дробь. Обработка продолжается до первого символа, не относящегося к цифрам. Если текст начинается с такого символа или преобразование невозможно, то возвращается `(0/1)`.

~~~~~ ruby
  "1".to_r # -> 1/1
  "1a".to_r # -> 1/1
  "1x".to_r # -> 1/1
  "1.2".to_r # -> 6/5
  "4/2".to_r # -> 2/1
  "1 + 2".to_r # -> 1/1
  "1   2".to_r # -> 1/1
  "1e2".to_r # -> 100/1
  "1_2".to_r # -> 12/1
  "0b01 ax".to_r # -> 0/1
  "0x01 ax".to_r # -> 0/1
  "1+1i".to_r # -> 1/1
~~~~~

`.to_f # -> float`

Преобразование в десятичную дробь. Обработка продолжается до первого символа, не относящегося к цифрам. Если текст начинается с такого символа или преобразование невозможно, то возвращается `0.0`.

~~~~~ ruby
  "1".to_f # -> 1.0
  "1a".to_f # -> 1.0
  "1x".to_f # -> 1.0
  "1.2".to_f # -> 1.2
  "4/2".to_f # -> 4.0
  "1 + 2".to_f # -> 1.0
  "1   2".to_f # -> 1.0
  "1e2".to_f # -> 100.0
  "1_2".to_f # -> 12.0
  "0b01 ax".to_f # -> 0.0
  "0x01 ax".to_f # -> 0.0
  "1+1i".to_f # -> 1.0
~~~~~

`.to_c # -> complex`

Преобразование в комплексное число. Обработка продолжается до первого символа, не относящегося к цифрам. Если текст начинается с такого символа или преобразование невозможно, то возвращается `(0+0i)`.

~~~~~ ruby
  "1".to_c # -> 1+0i
  "1a".to_c # -> 1+0i
  "1x".to_c # -> 1+0i
  "1.2".to_c # -> 1.2+0i
  "4/2".to_c # -> 2/1+0i
  "1 + 2".to_c # -> 1+0i
  "1   2".to_c # -> 1+0i
  "1e2".to_c # -> 100.0 + 0i
  "1_2".to_c # -> 12+0i
  "0b01 ax".to_c # -> 0+0i
  "0x01 ax".to_c # -> 0+0i
  "1+1i".to_c # -> 1+1i
~~~~~

`.hex # -> integer`

Преобразование в число в шестнадцатеричной системе счисления. Обработка продолжается до первого символа, не относящегося к цифрам. Если текст начинается с такого символа или преобразование невозможно, то возвращается 0.

~~~~~ ruby
  "1".hex # -> 1
  "1a".hex # -> 26
  "1x".hex# -> 1
  "1.2".hex # -> 1
  "4/2".hex # -> 4
  "1 + 2".hex # -> 1
  "1   2".hex # -> 1
  "1e2".hex # -> 482
  "1_2".hex # -> 18
  "0b01 ax".hex # -> 2817
  "0x01 ax".hex # -> 1
  "1+1i".hex # -> 1
~~~~~

`.oct # -> integer`

Преобразование в число в восьмеричной системе счисления. Обработка продолжается до первого символа, не относящегося к цифрам. Если текст начинается с такого символа или преобразование невозможно, то возвращается 0.

~~~~~ ruby
  "1".oct # -> 1
  "1a".oct # -> 1
  "1x".oct # -> 1
  "1.2".oct # -> 1
  "4/2".oct # -> 4
  "1 + 2".oct # -> 1
  "1   2".oct # -> 1
  "1e2".oct # -> 1
  "1_2".oct # -> 10
  "0b01 ax".oct # -> 1
  "0x01 ax".oct # -> 1
  "1+1i".oct # -> 1
~~~~~

### Элементы

Любой текст может быть обработан как индексный массив, содержащий отдельные символы в качестве элементов.

В классе String определены операторы `[]` и `[]=`, использующиеся для получения и изменения части текста. Индексация символов начинается с нуля. Если индекс отрицательный, то отсчет символов ведется справа налево, начиная с -1.

#### string.[*object]

Синонимы: `slice(*object)`

`.[index] # -> string`

Используется для получения символа с заданным индексом. Если индекс выходит за пределы текста, то возвращается nil.

~~~~~ ruby
  "abc"[2] # -> "c"
  "abc"[4] # -> nil
~~~~~

`.[start, length] # -> string`

Используется для получения фрагмента текста.

+ Когда количество символов выходит за пределы текста, возвращается текст до последнего символа;
+ Когда количество символов равно нулю, возвращается пустой текст (`""`);
+ Когда количество символов отрицательно, то возвращается nil;
+ Когда индекс выходит за пределы текста, то возвращается пустой текст (`""`);

~~~~~ ruby
  "abc"[ 2, 1 ] # -> "c"
  "abc"[ 2, 2 ] # -> "c"
  "abc"[ 2, 0 ] # -> ""
  "abc"[ 2, -1 ] # -> nil
  "abc"[ 3, 1 ] # -> ""
~~~~~

`.[range] # -> string`

Используется для получения фрагмента текста между заданными позициями.

+ Когда конечная граница выходит за пределы текста, возвращается текст до последнего символа;
+ Когда конечная граница меньше, чем начальная, возвращается пустой текст (`""`);
+ Когда начальная граница выходит за пределы текста, возвращается nil.

~~~~~ ruby
  "abc"[ 1..3 ] # -> "bc"
  "abc"[ 1...3 ] # -> "bc"
  "abc"[ 1...5 ] # -> "bc"
  "abc"[ 1...0 ] # -> ""
  "abc"[ 5...9 ] # -> nil
~~~~~

`.[template] # -> string`

Используется для получения фрагмента текста, совпадающего с образцом. Если совпадений не найдено, то возвращается nil.

~~~~~ ruby
  "abc"[ /[b-z]+/ ] # -> "bc"
  "abc"[ /b-z+/ ] # -> nil
~~~~~

`.[reg, group] # -> string`

Используется для получения фрагмента текста, совпадающего с заданной группой. Если совпадений не найдено, то возвращается nil.

~~~~~ ruby
  "abc"[ /(b)c/, 1 ] # -> "b"
  "abc"[ /(b)c/, 3 ] # -> nil
~~~~~

#### string.[*object]=

Метод изменяет объект, для которого был вызван. В результате вызова возвращается заменяемый фрагмент.

`.[index]=(string) # -> string`

Используется для изменения символа с указанным индексом. Выход за пределы текста считается исключением.

~~~~~ ruby
  "abc"[2] = "d" # -> "d"
  "abc"[4] = "d"  # -> error!
~~~~~

`.[start, length]=(string) # -> string`

Используется для изменения фрагмента текста.

+ Выход за пределы текста считается исключением;
+ Когда количество символов выходит за пределы текста, заменяются символы до конца текста;
+ Когда количество символов равно нулю, выполняется вставка текста;
+ Отрицательная длина фрагмента считается исключением.

~~~~~ ruby
  "abc"[ 4, 1 ] = "d" # -> error!

  "abc"[ 3, 1 ] = "d" # -> "d"
  string # -> "abdc"

  "abc"[ 2, 1 ] = "d" # -> "d"
  string # -> "abd"

  "abc"[ 2, 2 ] = "d" # -> "d"
  string # -> "abd"

  "abc"[ 2, 0 ] = "d" # -> "d"
  string # -> "abdc"

  "abc"[ 2, -1 ] = "d" # -> error!
~~~~~

`.[range]=(string) # -> string`

Используется для изменения фрагмента текста между заданными позициями.

+ Когда конечная граница выходит за пределы текста, заменяются символы до конца текста;
+ Когда конечная граница меньше, чем начальная, текст вставляется перед символом с индексом, заданным начальной границей диапазона;
+ Выход начальной границы за пределы текста считается исключением.

~~~~~ ruby
  "abc"[ 1...2 ] = "d" # -> "d"
  string # -> "adc"

  "abc"[1...5] = "d" # -> "d"
  string # -> "ad"

  "abc"[ 1...0 ] = "d" # -> "d"
  string # -> "adbc"

  "abc"[ 5...9 ] = "d" # -> error!
~~~~~

`.[template]=(string) # -> string`

Используется для изменения фрагмента текста, совпадающего с образцом. Отсутствие совпадений считается исключением.

~~~~~ ruby
  "abc"[ /[b-z]+/ ] = "d" # -> "d"
  string # -> "ad"
  "abc"[ /b-z+/ ] = "d" # -> error!
~~~~~

`.[reg, group]=(string) # -> string`

Используется для изменения фрагмента текста, совпадающего с переданной группой. Отсутствие совпадений считается исключением.

~~~~~ ruby
  "abc"[ /(b)c/, 1 ] = "d" # -> "d"
  a # -> "adc"
  "abc"[ /(b)c/, 3 ] = "d" # -> error!
~~~~~

#### Остальное

`.binslice(start, length = nil) # -> string`

`(range) # -> string`

Используется для получения фрагмента текста. Вместо индекса первого символа передается порядковый номер байта.

`.length # -> integer`
Синонимы: `size`

Количество символов в тексте.  
`"abc".length # -> 3`

`.bytesize # -> integer`

Количество байтов, занимаемых текстом.  
`"abc".bytesize # -> 3`

`.getbyte(index) # -> integer`

Байт с переданным индексом. Если индекс байта выходит за пределы текста, то возвращается nil.  
`"abc".getbyte 0 # -> 97`

`.setbyte(index, byte) # -> integer`

Используется для изменения байта с переданным порядковым номером. Выход за пределы текста считается исключением.

~~~~~ ruby
  "abc".setbyte 0, 120 # -> 120
  string # -> "xbc"
~~~~~

### Операторы

`.%(object) # -> string` Форматирование.

`.*(integer) # -> string` Копирование.

`.+(string) # -> text` Объединение.

`.<<(string) # -> text`  
Синонимы: `concat`

Добавление.

`.<=>(object)` Сравнение.

`.=~(template) # -> integer`

Используется для поиска совпадений с образцом. Возвращается индекс символа, с которого совпадение начинается. Если совпадений не найдено, то возвращается nil.

Если переданный объект не относится к регулярным выражениям, то интерпретатор выполняет `object =~ string` и возвращает результат выполнения.

### Изменение текста

#### Изменение регистра

`.capitalize # -> string`

Используется для изменения первого символа на прописной, а всех остальных на - строчные. Обрабатываются только ASCII символы.  
`"aBc".capitalize # -> "Abc"`

`.capitalize! # -> self`

Версия предыдущего метода, изменяющая значение объекта.

`.upcase # -> string`

Используется для изменения всех символов на прописные. Обрабатываются только ASCII символы.  
`"aBc".upcase # -> "ABC"`

`.upcase! # -> self`

Версия предыдущего метода, изменяющая значение объекта.

`.downcase # -> string`

Используется для изменения всех символов на строчные. Обрабатываются только ASCII символы.  
`"aBc".downcase # -> "abc"`

`.downcase! # -> self`

Версия предыдущего метода, изменяющая значение объекта.

`.swapcase # -> string`

Используется для изменения регистра всех символов на противоположный. Обрабатываются только ASCII символы.  
`"aBc".swapcase # -> "AbC"`

`.swapcase! # -> self`

Версия предыдущего метода, изменяющая значение объекта.

#### Удаление символов

`.clear # -> self`

Используется для удаления всех символов. Изменяет значение объекта.  
`"abc".clear # -> ""`

`.slice!(*object) # -> string`

Используется для удаления символов. Принимает те же аргументы, что и оператор `[]=`. Возвращается удаленная часть текста.

~~~~~ ruby
  "abc".slice! 2 # -> "c"
  string # -> "ab"
~~~~~

`.chomp( last = $/ ) # -> string`

Используется для удаления последнего символа (по умолчанию - символ перевода строки).
`"abc".chomp ?c # -> "ab"`

`.chomp!( string = $/ ) # -> self`

Версия предыдущего метода, изменяющая значение объекта. Если ни один символ не был удален, то возвращается nil.

`.chop # -> string`

Используется для удаления последнего символа.  
`"abc".chop # -> "ab"`

`.chop! # -> self`

Версия предыдущего метода, изменяющая значение объекта. Если ни один символ не был удален, то возвращается nil.

`.strip # -> string`

Используется для удаления всех пробельных символов (пробел, отступ, перевод строки) из начала и конца текста.  
`" abc ".strip # -> "abc"`

`.strip! # -> self`

Версия предыдущего метода, изменяющая значение объекта. Если ни один символ не был удален, то возвращается nil.

`.lstrip # -> string`

Используется для удаления всех пробельных символов (пробел, отступ, перевод строки) из начала текста.  
`" abc ".lstrip # -> "abc "`

`.lstrip! # -> self`

Версия предыдущего метода, изменяющая значение объекта. Если ни один символ не был удален, то возвращается nil.

`.rstrip # -> string`

Используется для удаления всех пробельных символов (пробел, отступ, перевод строки) из конца текста.  
`" abc ".rstrip # -> " abc"`

`.rstrip! # -> self`

Версия предыдущего метода, изменяющая значение объекта. Если ни один символ не был удален, то возвращается nil.

#### Добавление символов

`.insert(index, string) # -> self`

Используется для вставки текста на переданную позицию.

~~~~~ ruby
  "abc".insert 2, ?d # -> "abdc"
  string # -> "abdc"
~~~~~

`.prepend(string) # -> self`

Используется для добавления текста в начало. Изменяет значение объекта.  
`"Ruby".prepend "Pure " # -> "Pure Ruby"`

`.center( length, string = "~" ) # -> text`

Используется для добавления в начало и конец текста недостающее количество символов (до length). Если ни один символ не был добавлен, то возвращается ссылка на объект, для которого метод был вызван.  
`"abc".center 6, ?! # -> "!abc!!"`

`.ljust( length, string = "~" ) # -> text`

Используется для добавления в конец текста недостающее количество символов (до length). Если ни один символ не был добавлен, то возвращается ссылка на объект, для которого метод был вызван.  
`"abc".ljust 6, ?! # -> "abc!!!"`

`.rjust( length, string = "~" ) # -> text`

Используется для добавления в начало текста недостающее количество символов (до length). Если ни один символ не был добавлен, то возвращается ссылка на объект, для которого метод был вызван.  
`"abc".rjust 6, ?! # -> "!!!abc"`

#### Экранирование символов

`.dump # -> string`

Используется для экранирования спецсимволов. Сам текст при этом экранируется двойными кавычками. Символы, не относящиеся к ASCII кодировке заменяются на их кодовые позиции.

~~~~~ ruby
  "3\\n/2".dump # -> "\"3\\\\n/2\""
  "3\\n/2л".dump # -> "\"3\\\\n/2\\u{43b}\""
~~~~~

`.inspect # -> string`

Используется для экранирование спецсимволов. Сам текст при этом экранируется двойными кавычками.

~~~~~ ruby
  "3\verb!\n!/2".inspect # -> "\"3\\verb!\\n!/2\""
  "3\verb!\n!/2л".inspect # -> "\"3\\verb!\\n!/2л\""
~~~~~

#### Остальное

`.next # -> string`  
Синонимы: `succ`

Используется для увеличения кодовой позиции последнего символа на единицу. При этом возможна цепная реакция.  
`"xyz".next # -> "xza"`

`.next! # -> self`  
Синонимы: `succ!`

Версия предыдущего метода, изменяющая значение объекта.

`.reverse # -> string`

Используется для перестановки символов в обратном порядке.  
`"abc".reverse # -> "cba"`

`.reverse! # -> self`

Версия предыдущего метода, изменяющая значение объекта.

`.replace(string) # -> self`  
Синонимы: `initialize_copy`

Используется для изменения значения объекта.  
`"abc".replace ?? # -> "?"`

`.unpack(string) # -> array`

Используется для распаковки двоичного текста на основе переданной [форматной строки](appack).  
`"\xFF\xFE\xFD".unpack "C*" # -> [ 255, 254, 253 ]`

### Поиск совпадений

#### Поиск

`.count(*template) # -> integer`

Используется для получения количества найденных символов. Для образца позволяется использовать спецсимволы `^` (отрицание) и `-` (диапазон).

Когда методу передается несколько объектов, выполняется пересечения множеств.  
`"abc".count "a-z", "^c" # -> 2`

`.index( template, start = 0 ) # -> integer`

Используется для получения индекса символа, с которого начинается совпадение.

Если совпадений не найдено, то возвращается nil.  
`"abbc".index /b/ # -> 1`

`.rindex( template, start = 0 ) # -> integer`

Версия предыдущего метода для поиска справа налево, вплоть до символа с переданным индексом (start).

Если совпадений не найдено, то возвращается nil.  
`"abbc".rindex /b/ # -> 2`

`.match( template, start = 0 ) # -> match`

`( template, start = 0 ) { |match| } # -> object`

Используется для сохранения информации о поиске совпадений. Если совпадений не найдено, то возвращается nil.

`.partition(template) # -> array`

Используется для получения массива из фрагментов текста: до совпадения, совпадающего с образцом, и после совпадения.

Когда совпадений не найдено, в качестве первого элемента возвращается весь текст, а вместо остальных элементов - пустой текст ("").  
`"abbc".partition /b/ # -> ["a", "b", "bc"]`

`.rpartition(template) # -> array`

Версия предыдущего метода для поиска справа налево.  
`"abbc".rpartition /b/ # -> ["ab", "b", "c"]`

`.split( sep = $;, size = nil ) # -> array`

Используется для разделения текста на фрагменты на основе переданного разделителя (по умолчанию пробел). Несколько пробельных символов подряд игнорируются.

Когда методу передается пустое регулярное выражение, текст делится на фрагменты посимвольно.

~~~~~ ruby
  "a  b  c".split # -> [ "a", "b", "c" ]
  "a  b  c".split // # -> [ "a", " ", " ", "b", " ", " ", "c" ]
  "a  b  c".split //, 2 # -> [ "a", "  b  c" ]
~~~~~

#### Удаление совпадений

`.delete(*template) # -> string`

Используется для удаления всех найденных совпадений. Для образца позволяется использовать спецсимволы `^` (отрицание) и `-` (диапазон).

Когда методу передается несколько объектов, выполняется пересечение множеств.  
`"abc".delete "a-z", "^A-Z" # -> ""`

`.delete!(*template) # -> self`

Версия предыдущего метода, изменяющая значение объекта. Если ни один символ не был удален, то возвращается nil.

`.squeeze(*template) # -> string`

Используется для удаления повторяющихся символов. Для образца позволяется использовать спецсимволы `^` (отрицание) и `-` (диапазон).

Когда методу передается несколько объектов, выполняется пересечение множеств.  
`"aabbcc".squeeze "a-z", "^A-Z" # -> "abc"`

`.squeeze!(*template) # -> self`

Версия предыдущего метода, изменяющая значение объекта. Если ни один символ не был удален, то возвращается nil.

#### Замена совпадений

`.gsub( template, replace ) # -> string`

`(template) { |match| } # -> string`

Используется для изменения всех найденных совпадений. Совпадения могут заменяться на результат их итерации, значение соответствующего группе ключа, переданный текст (который может содержать спецсимволы `'\1'` или `'\K <идентификатор>'` для вставки совпадений с группой)

~~~~~ ruby
  "abcab".gsub /(a)b/, '\1' # -> "aca"
  "abcab".gsub /(a)b/, 'ab' => ?y  # -> "ycy"
  "abcab".gsub( /(a)b/ ) { |match| match.next } # -> "accac"
~~~~~

`.gsub!( template, replace ) # -> self`

`(template) { |match| } # -> self`

Версия предыдущего метода, изменяющая значение объекта. Если ни один символ не был изменен, то возвращается nil.

`.sub( template, replace ) # -> string`

`(template) { |match| } # -> string`

Версия метода для изменения только первого совпадения.

~~~~~ ruby
  "abcab".sub /(a)b/, '\1'  # -> "acab"
  "abcab".sub /(a)b/, 'ab' => ?y # -> "ycab"
  "abcab".sub( /(a)b/ ) { |match| match.next } # -> "accab"
~~~~~

`.sub!( template, replace ) # -> self`

`(template) { |match| } # -> self`

Версия предыдущего метода, изменяющая значение объекта. Если ни один символ не был изменен, то возвращается nil.

`.tr( template, replace ) # -> string`

Используется для изменения всех найденных символов. Для образца позволяется использовать спецсимволы `^` (отрицание) и `-` (диапазон), а в заменяющем фрагменте только `-`.  
`"abc".tr "^x-z", "X-Z" # -> "ZZZ"`

`.tr!( template, replace ) # -> self`

Версия предыдущего метода, изменяющая значение объекта. Если ни один символ не был изменен, то возвращается nil.

`.tr_s( template, replace ) # -> string`

Версия метода, удаляющая повторяющиеся символы.  
`"aabbcc".tr_s "^x-z", "X-Z" # -> "Z"`

`.tr_s!( template, replace ) # -> self`

Версия предыдущего метода, изменяющая значение объекта. Если ни один символ не был изменен, то возвращается nil.

### Предикаты

`.empty? # -> bool`

Проверка является ли текст пустым (`""`).  
`"abc".empty? # -> false`

`.ascii_only? # -> bool`

Проверка содержит ли текст только ASCII символы.  
`"Heлlo".ascii_only? # -> false`

`.include?(template) # -> bool`

Проверка в тексте наличия совпадений.  
`"abc".include? "ab" # -> true`

`.end_with?(*template) # -> bool`

Проверка наличия суффикса. Если методу передается несколько объектов, то выполняется пересечение множеств.  
`"abc".end_with? "a", "c" # -> true`

`.start_with?(*template) # -> bool`

Проверка наличия приставки. Если методу передается несколько объектов, то выполняется пересечение множеств.  
`"abc".start_with? "a", "c" # -> true`

### Итераторы

`.each_byte { |byte| } # -> self`  
Синонимы: `bytes`

Перебор байтов.

**Во второй версии Ruby** метод `.bytes` возвращает массив байт.

`.each_char  { |char| } # -> self`
Синонимы: `chars`

Перебор символов.

**Во второй версии Ruby** метод `.chars` возвращает массив символов.

`.each_line( sep = $/ ) { |line| } # -> self`
Синонимы: `lines`

Перебор строк. Также принимается произвольный разделитель для строк (по умолчанию - символ перевода строки).

**Во второй версии Ruby** метод `.lines` возвращает массив строк.

`.each_codepoint { |point| } # -> self`
Синонимы: `codepoints`

Перебор кодовых позиций.

**Во второй версии Ruby** метод `.codepoints` возвращает массив кодовых позиций.

`.upto( last, ending = false ) { |string| } # -> self`

Перебор либо элементов диапазона `self..last`, либо элементов диапазона `self...last` (если методу передается логическая величина true).

### Кодировка символов

`.valid_encoding? # -> bool`

Проверка корректна ли информация о кодировке текста.

`.encoding # -> encoding`

Используется для сохранения информации о кодировке текста.  
`"абв".encoding # ->  #<Encoding:UTF-8>`

`.force_encoding(encoding) # -> self`

Используется для принудительного изменения информации о кодировке текста.

`.encode( encoding = Encoding.default_internal, options = {} ) # -> string`

`( encoding, result, options = {} ) # -> string`

Используется для перекодировки текста. Принимаемые опции описаны в [приложении](appencode).

`.encode!( encoding = Encoding.default_internal, options = {} ) # -> self`

`( encoding, result, options = {} ) # -> self`

Версия предыдущего метода, изменяющая значение объекта.

`.b # -> copy_string [Ruby 2.0]`

Метод используется для получения копии текста в кодировке ASCII.

### Остальное

`.ord # -> integer`

Первый байт в тексте. Пустой текст считается исключением.  
`"abc".ord # -> 97`

`.crypt(salt) # -> string`

Используется для кодирования текста.

Принимается "соль" вида `/[\w\d./]{2,2}/`.  
`"abc".crypt "z1" # -> "z1Pgo5xjkEf8U"`

`.sum( salt = 16 ) # -> integer`

Контрольная сумма. `(сумма всех байт) % 2**salt - 1`.  
`"abc".sum # -> 294`

`.hash # -> integer`

Цифровой код объекта.  
`"abc".hash # -> -913021130`

`.casecmp(object)`

Сравнение объектов (`<=>`). Регистр символов не учитывается.