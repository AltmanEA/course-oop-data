---
title: "3.1. Основы MongoDb. Основные операции."
---

1. Создайте коллекцию mongo для класса, реализующего счетчики:

    ```
    @Serializable
    data class Count(val name: String, val value: Int = 0)
    ```

    Добавьте в коллекцию счетчики "Tables", "Figures", "Equations".

    Изучите оператор инкремента [inc](https://docs.mongodb.com/manual/reference/operator/update/inc/) и реализуйте функцию, увеличивающую счетчик на единицу:

    ```
     fun incCount(countName: String) 
    ```

    Проверьте работу этой функции на следующем примере и сделайте выводы по работе оператора ```inc```.
    ```
    incCount("Tables")
    incCount("Tables")
    incCount("Equations")
    incCount("Listings")
    prettyPrintCursor(counts.find())
    ```

    Ознакомьтесь с другими [Field Update Operators](https://docs.mongodb.com/manual/reference/operator/update-field/).

2. Прочитайте про опцию [upsert](https://docs.mongodb.com/manual/reference/method/db.collection.update/#update-upsert) функции ```update```. Для того чтобы использовать эту опцию в kmongo, посмотрите в среде разработки определение функции ```updateOne``` с третьим аргументом типа ```UpdateOptions``` и исходный код класса ```UpdateOptions```.
   
    Реализуйте функцию, которая в случае, если счетчика нет – создает его, если счетчик уже есть – увеличивает его на 1:

    ```
    fun incOrCreateCount(countName: String)
    ```

    Протестируйте ее:

    ```
    incOrCreateCount("Tables")
    incOrCreateCount("Listings")
    incOrCreateCount("Listings")
    prettyPrintCursor(counts.find())
    ```

3. Ознакомьтесь со списком [Comparison Query Operators](https://docs.mongodb.com/manual/reference/operator/query-comparison/).

    С помощью операторов этого списка выполните запрос и выведите на экран счетчики, значение которых:
    1. больше 0;
    2. больше или равно 1 и меньше или равно 2.

    Для выполнения второго пункта используйте kmongo функцию ```and```.

  
