# Проектное задание на Swift

Одним из вариантов реализации индивидуального проекта вы моежет выбрать десктопное приложение под MacOS или мобильное.  

В качестве примера будет рассматриваться MacOS приложение.  

Для написания используется:   

* **Swift**  
* **SwiftUI**
* **PostgresClientKit**  
* **XCode**

Также вам необходим PSQL сервер и база данных на нем. Как это сделать вы можете прочитать [здесь](CreateYourOwnDatabase.md).  

Так как Swift не умеет нативно работать с PSQL, понадобится сторонняя библиотека. Вы можете использовать свою, но в демо-проекте используется [**PostgresClientKit**](https://github.com/codewinsdotcom/PostgresClientKit).      

---

## Пример проекта

В качестве демо-проекта выступает приложение для отслеживания прогресса изучения, где реализовывается авторизация пользователя. 

![login](../../../Tech/images/project-swift/login-preview.png)

![education](../../../Tech/images/project-swift/education-preview.png)

![preview](../../../Tech/images/project-swift/account-preview.png)

Логин - ***email***
Пароль - ***Номер студенческого***     

В своем проекте вы можете расширить возможности приложения: брать из базы данных предметы, прогресс, преподавателей и так далее. Но для демо-версии сделана только авторизация пользователя и отображение его данных в профиле.        

Интерфейс для приложения уже написан, можете взять его, но если хотите, то создайте свой. SwiftUI не требует много знаний для создания простых интерфейсов.   

---

### Структура проекта

В папке **Managers** есть файл [**PostgreSQLManager.swift**](./SQLApp/SQLApp/Managers/PostgreSQLManager.swift) - это главный класс, который вам придется написать. Этот класс отвечает за работу с PSQL.  

Для подключения к PSQL необходимо выставить настройки:   

```swift
let hostName: String = "127.0.0.1"
let port: Int = 5432
let databaseName: String = "blackfox"
let userName: String = "admin"
let password: String = "123456"
```

> Небольшая подсказка: выключите SSL / TSL защиту, так как из-за нее у вас будут проблемы с подключением. Как это обойти - я не знаю, можете покопаться в конфигах PSQL сервера, если интересно, но самое просто решение - отключить SSL при конфигурации подключения, тогда также не нужно будет использовать пароль.

```swift
var configuration = PostgresClientKit.ConnectionConfiguration()
configuration.ssl = false
```

Более подробно вы сможете почитать в документации к пакету [**PostgresClientKit**](https://github.com/codewinsdotcom/PostgresClientKit). 

Также обязательно включите возможность входящего и исходящего подключения к вашему приложению в настройках проекта. Иначе приложение не сможет подключиться к серверу.      

![xcode-network](../../../Tech/images/project-swift/network-xcode.png)  

### Model

В папке **Models** есть файл [**AccountModel.swift**](./SQLApp/SQLApp/Models/AccountModel.swift) где описана модель данных аккаунта. Это те данные, которые мы получаем от сервера и отправляем на клиент для отрисовки.  

### Authorization  

В папке **./Core/Authorization/ViewModel** есть файл [**AuthorizationViewModel.swift**](./SQLApp/SQLApp/Core/Authorization/ViewModel/AuthorizationViewModel.swift), в нем описана функция, которая производит авторизацию пользователя с использованием класса **PostgreSQLManager**. Функция вызывается по нажатию на кнопку авторизации.    

---

### Вопросы и проблемы

Проблемы сюда:  

![issues](../../../Tech/images/issue.png)  

Вопросы и предложения сюда:
[<img src="../../../Tech/images/tg-icon.svg" height='50' align="center">](https://t.me/KeoFoxy)