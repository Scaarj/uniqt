# uniqt

uniqt - обёртка над Qt (5.15) и Aurora Sdk, для того чтобы можно было разрабатывать кроссплатформенные преложения под Аврору ОС, Андроид и декстоп. Кроссплатформенность десктоп ОС - win, macos, linux подразумевается, что уже поддерживаются на уровне фреймворка Qt. Возможно в будущем добавится отдельная кастомизация компонент для декстопа(win/macos/limnux) и андроида, на данный это одна кодовая база.

В библиотеке помимо обёрток над стандартными компонентами QML (Rectangle, Button, Item, RowLayout и т.п.) будут добавлены новые компоненты и свойства.
Аврора ОС использует Qt 5.6.3, поэтому в C++ части фреймворка может не хватить некоторых методов и классов. По мере возможности эти методы и классы будут дополняться до уровня Qt 5.15(Qt 6).

Однако, это не приорететная задача и там где это не сделано/невозможно сделать без большого количества нового кода, предлагается использовать директивы препроцессора на уровне клиентского кода.

## Версия 1.0
#### Сделано:
- Проект настроен на использование в прикладных приложения для Aurora/Android/Desktop через подключение соотвествующего pri файла.
- Checkbox, ColumnLayout, Combobox, Container, CoverPage, GridLayout, HorizontalSpacer, Item, Label, LayoutControl, LayoutPolitic, ListModel, Page, PasswordField, Rectangle, 
Repeater, RowLayout, SliderButton, TextField, VerticalSpacer, Image, Button, MouseArea, Column, Grid, Row, Modifiers, ButtonGroup, DropShadow, InnerShadow, Animation, Flickable, ListView
- Пример использования библиотеки и демонстрация компонент.

#### В планах
- Unit-тесты

## Версия 2.0
#### В планах
- Notification, TableView, TreeView
- Разработать аналог PropertyChanges - т.к. базовый не получается завернуть

### Copyright

```
Dubrov Stepan 2023
```

### License

```
Apache License 2.0
```
