---
title: "3.2. Основы MongoDb. Работа с документами."
---

1. Напишите функцию, увеличивающую на единицу оценку студента:

    ```
    fun incGrade(course: String, studentName: String)
    ```

    Используя функции из лекций, протестируйте ее:

    ```
    fillStudentsAndCourse()
    setGrade("Math", "Penny", 5)
    setGrade("Math", "Sheldon", 6)
    prettyPrintCursor(mCourses.find(Course::name eq "Math"))
    incGrade("Math", "Sheldon")
    prettyPrintCursor(mCourses.find(Course::name eq "Math"))
    incGrade("Math","Raj")
    prettyPrintCursor(mCourses.find(Course::name eq "Math"))
    ```

2. Прочитайте про операторы [in](https://docs.mongodb.com/manual/reference/operator/query/in/) (в kmongo записывается как ``` `in` ```) и [push](https://docs.mongodb.com/manual/reference/operator/update/push/index.html).

    Реализуйте функцию, которая добавляет студента в список студентов и записывает его на курсы:

    ```
    fun addStudent(name: String, group: String, courses: List<String>)
    ```

    Протестируйте ее и сделайте выводы:
    
    ```
    addStudent("Stuart", "Boys", listOf("Math", "Phys"))
    addStudent("Emily", "Girls", listOf("Math", "Chem"))
    prettyPrintCursor(mCourses.find())
    ```

3. Ознакомьтесь с [all positional operator](https://litote.org/kmongo/dokka/kmongo/org.litote.kmongo/kotlin.reflect.-k-property1/all-pos-op.html).

    Реализуйте функцию, выставляющую одну оценку всем студентам на курсе:

    ```
    fun setAllValue(course: String, value: Int)
    ```

    Протестируйте ее:

    ```
    setAllValue("Math", 3)
    prettyPrintCursor(mCourses.find(Course::name eq "Math"))
    ```