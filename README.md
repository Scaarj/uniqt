# uniqt

uniqt - обёртка над Qt (5.15) и Aurora Sdk, для того чтобы можно было разрабатывать кроссплатформенные преложения под Аврору ОС и Андроид. Операционные ОС десктопа - win, macos, linux подразумевается, что уже поддерживаются на уровне фреймворка Qt. Возможно в будущем добавится отдельная кастомизация компонент для декстопа.
В библиотеке помимо обёрток над стандартными компонентами QML (Rectangle, Button, Item, RowLayout и т.п.) будут добавлены новые компоненты и свойства.
Аврора ОС использует Qt 5.6.3, поэтому в c++ части фреймворка может не хватит некоторых методов и классов. По мере возможности эти методы и классы будут дополняться до уровня 5.15.

Однако, это не приорететная задача этой библиотеки и там где это не сделано/невозможно сделать без большого количества переписывания кода (например, отсуствие некотоых методов в QJson-классы),
то предлагается решать эту проблему при помощи директив препроцессора на уровне клиентского кода.

## Версия 1.0
#### Сделано:
- Проект настроен на использование в прикладных приложения для Aurora/Android/Desktop через подключение соотвествующего pri файла.
- Checkbox, ColumnLayout, Combobox, Container, CoverPage, GridLayout, HorizontalSpacer, Item, Label, LayoutControl, LayoutPolitic, ListModel, Page, PasswordField, Rectangle, 
Repeater, RowLayout, SliderButton, TextField, VerticalSpacer, Image, Button, MouseArea
- Пример использования библиотеки и демонстрация компонент.

#### В планах
- Animation, Column, DropShadow, Flickable, Grid, GroupButton, InnerShadow, ListView, Modifiers, Notification, Politics(дополнить), Row, TableView, TreeView
- Расширить пример для всех компонет
- Unit-тесты

### Copyright

```
Dubrov Stepan 2023
```

### License

```
Apache License 2.0
```
