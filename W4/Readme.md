# *Praktikum 1: Eksperimen Tipe Data List*
## **Step 1**
![alt text](img/P1/Codelab04-P1-L1.png)

### **Explanation :**
#### What Happens:
In this example, we first create a list containing three elements: [1, 2, 3]. To confirm that the list was created correctly, we verify that its length is 3 and that the element at index 1 is 2. When printed, the length of the list indeed shows 3, and the element at index 1 is displayed as 2. Next, we modify the list by changing the element at index 1 from 2 to 1. After this update, we verify again that the element at index 1 now holds the value 1, which is also confirmed when we print it. This demonstrates how lists allow both element access and modification by index.

## **Step 2**
![alt text](img/P1/Codelab04-P1-L3.png)

### **Explanation :**
#### What Happens:
In this case, we use final List<String?> to create a list whose reference cannot be changed. By calling List.filled(5, null), we initialize a list with five elements, all set to null. The type String? allows each element to hold either a String value or null. We then assign the name "Baskoro Seno Aji" to index 1 and the student ID "2341720063" to index 2. Although the list is declared as final, this only prevents the list reference from being reassigned; the elements inside the list can still be modified. Since the code is written correctly and uses the appropriate data type, no errors occur during execution.

# *Praktikum 2: Eksperimen Tipe Data Set*
## **Step 1**
![alt text](img/P2/Codelab04-P2-L1.png)

### **Explanation :**
#### What Happens:
The given code is correct and will run without error inside the void main() function. It creates a Set that contains five halogen element names. A Set in Dart is a collection type that does not allow duplicate values and does not guarantee any specific order of its elements. When we call print(halogens), it displays all the elements in the set, though the order of the output may vary since sets are unordered collections.

## **Step 3**
### **Run But No Output**
![alt text](img/P2/Codelab04-P2-L3.png)
### **Two Way Declaring**
![alt text](img/P2/Codelab04-P2-L3-Fix.png)

### **Explanation :**
#### What Happens:
In this example, we see different ways to declare and use Set and Map in Dart. The variable names1 is defined as var names1 = <String>{};, which explicitly specifies a generic type of String using a set literal with a type parameter. Similarly, names2 is declared as Set<String> names2 = {};, which uses an explicit type declaration along with an implicit constructor. On the other hand, when we write var names3 = {};, Dart interprets it as a Map rather than a Set, since curly braces {} without a type default to a Map. For sets, we can add elements using the .add() method for a single element or .addAll() to insert multiple elements at once. In contrast, for Map objects such as names3, elements are stored as key–value pairs, and assignments are made using keys because Map does not provide an .add() method. Since the code is written with the correct syntax and the appropriate methods are used for each data type, no errors occur during execution.

# *Praktikum 3: Eksperimen Tipe Data Maps*
## **Step 1**
![alt text](img/P3/Codelab04-P3-L1.png)

### **Explanation :**
#### What Happens:
In this example, two Map objects are created with different key types. The first, gifts, uses String keys with values of mixed types, including both String and int. The second, nobleGases, uses int keys, again with values of mixed types. Dart allows Map objects to store values of different types, so mixing String and int values does not cause any errors. Since the syntax is correct and Dart supports mixed value types in a Map, the code runs without any issues.

## **Step 3**
### **Original Code**
![alt text](img/P3/Codelab04-P3-L3.png)
### **Additional Requirements**
![alt text](img/P3/Codelab04-P3-L3-Fix.png)

### **Explanation :**
#### What Happens:
In this example, several variations of Map declarations are demonstrated. When we write var gifts = {...} or var nobleGases = {...}, Dart creates maps of type _LinkedHashMap<dynamic, dynamic>, meaning that both the keys and values can be of any type. In contrast, when we explicitly declare var mhs1 = Map<String, String>(), the resulting map is of type _LinkedHashMap<String, String>, which restricts both keys and values to String. Similarly, var mhs2 = Map<int, String>() produces a _LinkedHashMap<int, String>, allowing only int keys and String values. There are no errors in either the original code or the modifications. For consistency, the value of nobleGases[18] was updated from 2 to 'argon', and the value of gifts['fifth'] was updated from 1 to 'golden rings'. Additionally, both the student name and NIM were added to all four maps in ways that respect their respective type constraints.

# *Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators*
## **Step 1**
![alt text](img/P4/Codelab04-P4-L1.png)

### **Explanation :**
#### What Happens:
The Erorr occured because the list1 doesn't define or it doesn't have any references or value yet to be print or store

## **Step 2**
![alt text](img/P4/Codelab04-P4-L2.png)

### **Explanation :**
#### What Happens:
Fix the reference of List1 and change the List to List1 so it could proceed the ouput with a correct reference of variable 

## **Step 3**
### **Error Original Code**
![alt text](img/P4/Codelab04-P4-L3.png)
### **Fix and Adding NIM Spread Operator**
![alt text](img/P3/Codelab04-P3-L3-Fix.png)

### **Explanation :**
#### What Happens:
In this example, the null-aware spread operator (...?) is used to safely extract elements from a list that might be null. If list1 is null, the operator ensures that no error occurs and nothing is added to the new list. This makes the code safer by preventing runtime exceptions when handling potentially null lists. It is also important to note that while ...?list1 prevents errors from spreading a null list, individual list elements themselves can still be null, since Dart allows null as a valid element in a list if the type is declared accordingly.

## **Step 4**
### **Error Original Code**
![alt text](img/P4/Codelab04-P4-L4.png)
### **Fix and PromoActive**
![alt text](img/P4/Codelab04-P4-L4-Fix.png)

### **Explanation :**
#### What Happens:
In this example, Dart’s collection if feature is demonstrated. The expression if (promoActive) 'Outlet' conditionally adds the string 'Outlet' to a list only when the boolean variable promoActive is true. If promoActive is false, the element is simply omitted, and no error occurs. This allows developers to build collections dynamically based on conditions, making the code more concise and expressive compared to manually modifying the list after its creation. In the program shown, when promoActive is set to true, the resulting list nav contains ['Home', 'Furniture', 'Plants', 'Outlet']. When promoActive is set to false, the 'Outlet' element is excluded, and nav becomes ['Home', 'Furniture', 'Plants']. This illustrates how Dart collections can be constructed with conditional logic directly inside their literal definitions.

## **Step 5**
### **Error Original Code**
![alt text](img/P4/Codelab04-P4-L5.png)
### **Fix and PromoActive**
![alt text](img/P4/Codelab04-P4-L5-Fix.png)

### **Explanation :**
#### What Happens:
In this example, Dart’s pattern matching feature is applied inside a collection using if (login case 'Manager'). This expression checks whether the variable login matches the value 'Manager'. If the condition is true, the string 'Inventory' is added to the list; otherwise, it is skipped. This allows conditional list construction based on more specific patterns rather than just simple boolean checks. In the program, when login is 'Manager', the resulting list nav2 is ['Home', 'Furniture', 'Plants', 'Inventory']. However, if login is 'Employee' or 'Guest', the 'Inventory' element is excluded, resulting in ['Home', 'Furniture', 'Plants']. This demonstrates how Dart combines pattern matching with collection literals to provide expressive and concise ways of building dynamic lists.

## **Step 6**
### **Original Code**
![alt text](img/P4/Codelab04-P4-L6.png)

### **Explanation :**
#### What Happens:
In this example, Dart’s collection for feature is demonstrated. The expression for (var i in listOfInts) '#$i' iterates over each element in listOfInts and generates a new string in the format '#<value>'. For instance, if listOfInts is [1, 2, 3], then the resulting list of strings becomes ['#0', '#1', '#2', '#3'] because the first element '#0' was manually added before the loop, and the subsequent elements are generated from the iteration. This feature is especially useful for transforming or mapping existing lists into new forms directly within a collection literal, making the code concise and expressive.
To summarize the benefits of these Dart collection features:

- Spread Operator (...): allows easy combination of lists and enables making a copy of an existing list while adding extra elements.
- Null-aware Spread Operator (...?): prevents runtime errors when spreading from a list that could be null, making code safer when handling uncertain data sources.
- Collection If: enables dynamic list creation based on conditions, producing cleaner code compared to using separate if-else statements.
- Collection For: allows in-place transformation of data and makes it possible to build new lists from existing lists in a single expression.
- Together, these features illustrate how Dart collections are both flexible and expressive, supporting dynamic, safe, and concise data structure manipulation.

# *Praktikum 5: Eksperimen Tipe Data Records*
## **Step 1**
![alt text](img/P5/Codelab04-P5-L1.png)

### **Explanation :**
#### What Happens:
The Erorr occured because the are no comma separated ";" for the last line

## **Step 2**
![alt text](img/P5/Codelab04-P5-L2.png)

### **Explanation :**
#### What Happens:
In this example, Dart’s record type is demonstrated. The declaration ('first', a: 2, b: true, 'last') creates a record with four fields in total: two positional fields ('first' and 'last') and two named fields (a: 2 and b: true). Records in Dart are lightweight, immutable data structures that allow developers to group related values without the need to define a full class. When the record is printed, it displays all its fields in the order they were declared, providing a convenient way to package multiple values together in a single expression. This makes records especially useful for returning multiple values from a function or handling structured data in a concise manner.

## **Step 3**
![alt text](img/P5/Codelab04-P5-L3.png)

### **Explanation :**
#### What Happens:
In this example, the function tukar() demonstrates how records in Dart can be used with destructuring and returned in a modified form. The function is declared as (int, int) tukar((int, int) record), meaning it accepts a record consisting of two integers and returns another record of the same type. Inside the function, the line var (a, b) = record; performs destructuring assignment, extracting the two values from the record into separate variables a and b. The return statement return (b, a); then constructs and returns a new record where the positions of the two values are swapped. For example, if the input record is (5, 10), the function outputs (10, 5). This shows how Dart records can be used not only to group values but also to conveniently manipulate them with pattern matching and destructuring.

## **Step 4**
### **Error Original Code**
![alt text](img/P5/Codelab04-P5-L4.png)
### **Fix and Initialization for Mahasiswa Using Name and NIM**
![alt text](img/P5/Codelab04-P5-L4-Fix.png)

### **Explanation :**
#### What Happens:
In this step, a record is used with an explicit type annotation. The variable mahasiswa is declared with the type (String, int), which means this record contains two fields: one String and one int. The record is then initialized with the value ('Baskoro Seno Aji', 2341720063). The advantage of using type annotations is that the compiler performs strict type checking, ensuring that the record can only hold values with the correct data types. To access the fields, $1 is used for the first position (the student’s name), and $2 for the second position (the student’s ID number). It’s important to note that record fields in Dart are always indexed starting from $1, not $0, which differs from lists or array


## **Step 5**
### **Original Code**
![alt text](img/P5/Codelab04-P5-L5.png)
### **Additional Requirements using Record**
![alt text](img/P5/Codelab04-P5-L5-Fix.png)

### **Explanation :**
#### What Happens:
In Dart, a record can contain a combination of both positional fields and named fields. Positional fields are accessed using $1, $2, $3, and so on, while named fields are accessed directly using their identifiers such as .a, .b, or .semester. This flexibility makes records very powerful for grouping related data. One of the main advantages of using records is their ability to return multiple values from a function without needing to create a separate class. Dart also enforces type safety, meaning each field is checked at compile-time to ensure it matches the expected type. Additionally, records support destructuring, allowing values to be extracted into individual variables in a clean and concise way. Since records are immutable by default, their values cannot be changed after initialization, making them safer for managing data. They are also more efficient than defining a new class when working with simple structured data. Overall, records provide a lightweight yet expressive way to manage and manipulate grouped values in Dart.

# *Tugas Praktikum*
## **02.Jelaskan yang dimaksud Functions dalam bahasa Dart!**
Function is a block of code designed to perform a specific task, and it can be called multiple times. Functions help make code more modular, readable, and maintainable.

## **03.Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!**
[text](<src/Tugas Praktikum/03.JenisParameter-Functions.dart>)
**1. Positional Parameters**
Definition: Parameters that are passed in a fixed order.
Behavior: When calling the function, you must supply arguments in the same order as defined.
Use case: Best when parameters are required and order is natural (e.g., width, height).

**2. Optional Positional Parameters ([])**
Definition: Parameters that can be skipped, marked inside square brackets.
Behavior: If no value is provided, they default to null unless you assign a default value.
Use case: Useful when an argument is not always required.

**3. Named Parameters ({})**
Definition: Parameters passed using their names, defined inside curly braces.
Behavior: The caller must specify the parameter name. By default, named parameters are optional.
Use case: Improves readability, especially when a function has many parameters.

**4. Default Parameters**
Definition: Named or optional parameters can have default values.
Behavior: If the caller doesn’t pass a value, the default is used.
Use case: Helps avoid null checks by ensuring parameters always have a value.

## **04.Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!**\
[text](<src/Tugas Praktikum/04.Functions-FirstClassObjects.dart>)
In Dart, functions are objects. This means they can:
- Be stored in variables
- Be passed as parameters
- Be returned from other functions

## **05.Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!**\
[text](<src/Tugas Praktikum/05.AnonymousFunction.dart>)
Anonymous functions are functions without a name. They are often used directly as arguments or expressions.

## **06.Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!**\
[text](<src/Tugas Praktikum/06.LexicalScope-LexicalClosures.dart>)
**A. Lexical Scope**
- Definition: Lexical scope means that the scope of a variable is determined by where it is written in the code, not by where it is called.
- Dart uses static (lexical) scoping, so a function can only access variables that are declared in its own scope or any outer scope.

**B. Lexical Closures**
- Definition: A closure is a function object that has access to variables from its lexical scope, even after that scope has finished execution.
- In other words, a closure "remembers" variables from the environment in which it was created.

## **07.Jelaskan dengan contoh cara membuat return multiple value di Functions!**\
[text](<src/Tugas Praktikum/07.ReturnMultipleFunctions.dart>)
Actually Dart does not directly support returning multiple values like some languages, but there are several techniques to achieve it.

**1. Using a List**
- Explanation: Put all values inside a List and return it.
- Limitation: Values are accessed by index, so readability may suffer.

**2. Using a Map**
- Explanation: Use key–value pairs to make results more descriptive.
- Advantage: Clearer than a list since you use keys.

**3. Using a Class (Custom Object)**
- Explanation: Create a model class to hold multiple return values.
- Advantage: Best for complex results; gives type safety.

**4. Using Records (Dart 3+)**
- Explanation: Records allow returning multiple typed values without creating a class.
- Advantage: Very clean, strongly typed, and destructurable.