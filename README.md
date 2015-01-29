#Hoppas

Универсальный HTML (Slim), CSS (Stylus) Framework. Простой, легкий и адаптивный.

##Требования к вёрстке
Общие требования к именованию классов



###HTML разметка

* Значения всех атрибутов должны быть заключены в двойные кавычки (```"```).
* Иерархическое форматирование HTML c отступом в **1 таб**.
* Использование тега ```<p>``` допускается только для разбиения текста на абзацы в основном контенте страницы. Разбивать текст на абзацы с помощью тега ```<br>``` запрещено.
* Элементы в форме списка должны всегда быть в тега: ```<ul>```, ```<ol>``` или ```<dl>```. Никогда не используйте для этих целей ```<div>``` или ```<p>```.
* Если нужно избежать пробелов между тегами, между ними вставляется пустой комментарий.
* Запрещено использование inline-стилей, кроме случаев, когда их присваивает скрипт, но стараться минимизировать такое явление.
* Необходимо оборачивать radio и checkbox input с их текстом в ```<label>```, при этом атрибут ```for=""``` не нужен, т.к. оборачивание автоматически их свяжет.
* Не нужно уставнавливать значения для атрибутов, которые в нем не нуждаются.
  ```
  <input type="text" disabled>

  <input type="checkbox" value="Yes" checked>

  <select>
    <option value="yes" selected>Yes</option>
  </select>
  ```



###CSS стили

* Именование классов должно вестись в духе [БЭМ](#БЭМ).
* Запрещено использовать id элементов и имена тегов.
* Каскад стилей должен быть сведён к минимуму.
* Стили, принадлежащие одному блоку, должны следовать друг за другом:
  1. Блок;
  2. Модификаторы блока (также переопределения для IE, для отключённого JS и т.п.);
  3. Элемент;
  4. Модификаторы элемента.

##Организация Slylus-кода

* Форматирование иерархии с помощью отступов в **1 таб**.
* Расстояние между правилами внутри логической группы **1 строка**, между логическими группами **2 строки**.
* На одной строчке допустимо размещать только один селектор.*
* Каждый css-класс должен являться отдельным определением за исключением состояний, псевдоэлементов, media queries и т.п.
* Названия переменных должно начинаться со знака доллара ( **$** ) и быть в духе [БЭМ](#БЭМ).
* Глобальные переменные должны быть вынесены в файл **var.styl**
* Локальные переменные должны объявляться непосредственно перед блоком для которого объявляются.



###Организация файловой системы

В общем, файловая система должна быть похожа на:

```
Project-name
├── frontend
│     ├── css
│     │   ├── norm.css
│     │   └── style.css
│     ├── img
│     │   └── image-for-style.jpg
│     ├── img-content
│     │   └── image-for-content.jpg
│     └── js
│         ├── jquery.min.js
│         └── other-global-js.min.js
├── source
│     ├── block
│     │   └── block-name
│     │       ├── block-name.css
│     │       ├── block-name.js
│     │       └── block-name.slim
│     ├── js
│     │   ├── jquery.js
│     │   └── other-global-js.js
│     ├── slim
│     │   └── head.slim
│     ├── styl
│     │    ├── norm.styl
│     │    ├── style.styl
│     │    └── base
│     │        ├── var.styl
│     │        ├── global.styl
│     │        └── grid.styl
│     └── index.slim
└── index.html
```
Основой для нее является **kit.hoppas**.


###БЭМ
[БлокЭлементМодификатор](http://ru.bem.info/):

* **Блок** - уникален для проекта, может иметь и элемент и модификатор.
* **Элемент** - уникален для блока, может иметь только модификатор.
* **Модификатор** - уникален для блока или элемента. Если модификатор глобальный, то уникален для проекта.

```
.block-name
.block-name_mod-key_mod-value
.block-name__element-name
.block-name__element-name_mod-key_mod-value
```

* Названия блоков и элементов должны соответствовать их назначению и функции, а не тому, как они отображаются.
* В одном селекторе может быть только один элемент или модификатор.
* [Полезная информация](http://bemclub-in.herokuapp.com/#b-e-m)
