# N2CadX

![English](https://www.countries-ofthe-world.com/flags/flag-of-United-States-of-America.png)

## About

N2CadX - project which main purpose is full disassembly and recreation of source codes for graphical libraries n2cad640.dll, n2cad800.dll and n2cad1024.dll from "Sudden Strike" game series.

## Graphical libraries

Game engine has 3 graphical libraries, each one is used for corresponding screen resolution in the game:
* n2cad640.dll - used for resolution 640x480
* n2cad800.dll - used for resolution 800x600
* n2cad1024.dll - used for resolution 1024x768

Each library has exported function CADraw_Init. Function CADraw_Init initializes data and functions, which will be used by the game engine (host application). Initialization works in the next way: a pointer to previously initialized structure with data and functions is returned to the host application, which, in turn, makes calls of corresponding functions of graphical library through function pointers.

## Tools

To get started, you will need:
* Microsoft Visual Studio 2013
* IDA v.6.6 with Hex Rays module

## Useful tools

* DxWnd (https://sourceforge.net/projects/dxwnd/) - allows to run DirectDraw software in windowed mode.

## Project structure

Repository consists of the next directories:

Archive - old realization of n2cad640.dll (not finished)
Disassembly - project files for IDA
Documentation - project documentation. All project data will structured and placed here.

## Feedback

If you have any ideas or want to help me with development, please contact me:
* mail: elwray.ru@gmail.com
* skype: dimaermakov

![Russian](https://www.countries-ofthe-world.com/flags/flag-of-Russia.png)

## О проекте

N2CadX - проект, на данный момент, основной целью которого является полное дизассемблирование и восстановление
исходного кода графических библиотек n2cad640.dll, n2cad800.dll и n2cad1024.dll серии игр "Противостояние".

## Графические библиотеки

Игра содержит 3 графические библиотеки, каждая из которых используется для определенного разрешения в игре:
* n2cad640.dll - используется для разрешения 640x480
* n2cad800.dll - используется для разрешения 800x600
* n2cad1024.dll - используется для разрешения 1024x768

Каждая из библиотек имеет экспортируемую функцию CADraw_Init. Функция CADraw_Init иницилизирует данные и функции, которые будут использоваться движком игры (хост-приложением). Инициализация происходит таким образом, что инициализируется структура с данными и функцями и указатель на эту структуру возвращается в хост-приложение, которое в свою очередь, через указатели на функции вызывает функции графической библиотеки.

## Инструменты

Для работы понадобится:
* Microsoft Visual Studio 2013
* IDA v.6.6 с модулем Hex Rays

## Вспомогательные инструменты

* DxWnd (https://sourceforge.net/projects/dxwnd/) - позволяет запускать DirectDraw приложения в оконном режиме.

## Структура проекта

Репозиторий состоит из следующих директорий:
* Archive - старая реализация n2cad640.dll (не завершенная)
* Disassembly - файлы проектов для IDA
* Documentation - документация проекта. Все данные касательно проекта будут структурированы размещены в этой директории

## Обратная связь

Если у Вас есть какие-либо идеи, либо хотит оказать помощь в разработке свяжитесь со мной:
* почта: elwray.ru@gmail.com
* skype: dimaermakov
