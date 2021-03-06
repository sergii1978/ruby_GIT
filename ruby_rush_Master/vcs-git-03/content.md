# Вращение кубиков 

Ещё немного практики с git:

Возьмите программу roll_the_dice (последнюю версию), надеюсь, Вы повторяли за нами и он а у вас в репозитории.

Улучшите программу: пусть кубик «вращается» во время броска: сделайте так, чтобы перед тем, как вывести произвольное число от 1 до 6, программа бы быстро отображала несколько сменяющих друг друга произвольных чисел — «граней кубика».

Привыкайте: сделали какое-то изменение, проверили, что всё работает — добавьте комит в репозиторий.

<div class="rubyrush-task-hint">

Напишите метод `show_rolling_die`, который 100 раз с задержкой в 10 милисекунд (вспомните, как Вы делали паузу в волшебном шаре) показывает методом `print` произвольное число от 1 до 6 и вызывайте этот метод перед каждым броском.

Чтобы создать эффект вращения на одном месте, стирайте то, что только что напечатал метод `print`, добавив в конце строки символ `"\r"`.

```ruby
print "#{rand(6) + 1}\r"
```

</div>


<div class="rubyrush-task-answer">

Измените программу кубик в вашем репозитории или замените её программой из ответа.

Посмотрите изменения, набрав команду:

```sh
git diff
```

Проверьте решение, набрав `ruby roll_some_dice.rb`.

Если все хорошо, добавьте программу в список изменения для комита:

```sh
git add roll_some_dice.rb
```

Сделайте комит:

```sh
git commit -m "Rolling die before result"
```

Посмотрите историю изменений:

```sh
git log
```
<ul>
<li><a href="https://github.com/aristofun/rubyrush-path/blob/master/steps/vcs-git-03/solution/roll_some_dice.rb" class="rubyrush-task-solution-link">Наше решение</a></li></ul>


</div>
