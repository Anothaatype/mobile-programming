# Practical 1 :  Basic State with Model-View

### 1. Complete the lab steps, then document the final results with a GIF and explanation in the file README.md! If you find any errors or issues, please fix them.

<p align="center">
  <img src="img\Practicum1.gif" width="250" alt="1" />
</p>
In this practicum the app keeps its data inside the PlanScreen using a local list variable. Whenever the user adds a new task, that list is updated and the UI is refreshed by calling setState().

**Final Result**

The completed app allows the user to add tasks with the FloatingActionButton and shows those tasks inside one plan. All data lives only in that screen’s local state, so nothing is persisted when the app restarts. At this stage the data model and the UI are still mixed together — no separate model layer or external state management is used.

### 2. Explain the purpose of step 4 in the practicum! Why is this done?
Step 4 creates a class to represent a single plan item (for example, a Plan or Task). This provides a clear place to store each item’s properties (like its title and whether it’s done), makes it easy to add or remove items, and helps separate model logic from UI code so the app is easier to manage and extend.

### 3. Why is the plan variable needed in step 6 of the lab? Why is it a constant?
The plan list holds every Plan/Task the user creates and is the source the UI reads to render the list. Declaring it final prevents the variable from being reassigned while still allowing you to modify its contents (add/remove items). This keeps the reference stable but lets the collection itself change as users interact with the app.

```dart
final List<Plan> plan = [];
```

**Function**

This variable is used to store all the plan items that users create.  
It allows the UI to display the list of plans and update their states (**checked** or **unchecked**) dynamically when users interact with the app.

**Why It’s Declared as final**

Declaring the variable as `final` means the reference to the list itself cannot be changed, but its contents can still be modified (such as adding or removing plans).

This provides two key advantages:
1. It prevents the list reference from being accidentally reassigned.  
2. It keeps the internal data structure stable while still allowing modifications to its contents.

In short, the list remains constant in memory, but the data inside it can evolve based on user actions.

### 4. Capture the results of Step 9 as a GIF, then explain what you have created!

<p align="center">
   <img src="img\Practicum1.gif" width="250" alt="1" />
</p>

The GIF shows the Master Plan app in action: users can view the list of tasks, check items as completed, and add new tasks. All interactions update the screen immediately, demonstrating the stateful widget approach.

### 5. What is the use of the methods in Steps 11 and 13 in the lifecycle state ?
* initState() to initialize data or load existing plans when the widget is created.
* dispose() is used to properly dispose of the TextEditingController to prevent memory leaks.

### 6. Submit your practicum report in the form of a commit link or GitHub repository to the agreed lecturer!
----

# Practical 2 :  InheritedWidget

### 1. Complete the lab steps, then document the final results with a GIF and explanation in the file README.md! If you find any errors or issues, please fix them.

<p align="center">
  <img src="img\Practicum2.gif" width="250" alt="1" />
</p>

### 2. Explain what is meant InheritedWidgetby step 1! Why is it used InheritedNotifier?
**InheritedWidget**
An InheritedWidget provides a way to share data with all widgets below it in the widget tree without passing props through every constructor. It’s useful for simple, app-wide data.

**InheritedNotifier**
InheritedNotifier builds on that by combining InheritedWidget with a ChangeNotifier so only widgets that actually depend on the notifier rebuild when the data changes. That makes updates more efficient for frequently changing state.

### 3. Explain the purpose of the method in step 3 of the practicum! Why is this done?
The of(context) method gives other widgets a convenient way to retrieve the shared data from the Inherited widget using the current BuildContext. It acts like a global accessor so widgets can read or listen to the shared state without creating new provider instances or threading data through many constructors.

### 4. Capture the results of Step 9 as a GIF, then explain what you have created!
<p align="center">
  <img src="img\Practicum2.gif" width="250" alt="1" />
</p>

The GIF demonstrates a small app where a counter is shown and can be increased or decreased. The counter is controlled via an InheritedNotifier, so the UI updates reactively but only for widgets that depend on the counter — illustrating lightweight, efficient state sharing without external libraries.


### 5. Submit your practicum report in the form of a commit link or GitHub repository to the agreed lecturer!
----

# Practical 3 :   State in Multiple Screens

### 1. Complete the lab steps, then document the final results with a GIF and explanation in the file README.md! If you find any errors or issues, please fix them.
<p align="center">
  <img src="img\Practicum3.gif" width="250" alt="1" />
</p>

### 2. Based on the Practical 3 that you have done, explain the meaning of the following diagram!
The diagram describes how state is lifted and shared across multiple screens by placing it in a top-level InheritedNotifier (the PlanProvider). This structure lets different pages access and modify the same List<Plan> without passing it through many constructors, enabling consistent state across the app while keeping widgets decoupled.

**Main Page (PlanCreatorScreen)**

* MaterialApp
The root widget of the Flutter app that handles themes, navigation, and routes between screens.

* PlanProvider
An InheritedNotifier that holds the global state as a List<Plan>.
All widgets under it can access and modify the plan list without manually passing data through constructors (avoiding prop drilling).

* PlanCreatorScreen
The first page that displays all existing plans and allows the user to add new ones.

* Column
Arranges widgets vertically. Contains a TextField and a plan list (Expanded → ListView).

* TextField
Input field used to create a new plan.

* Expanded → ListView
Displays all existing plans.
When a plan is tapped, it triggers navigation using Navigator.push() to open the detail page (PlanScreen).

**Navigator Push**
Navigator.push() to open the plan detail screen and passes the selected plan object so both screens operate on the same shared data.

**Plan Detail Page (PlanScreen)**

* MaterialApp
Still within the same app context.

* PlanScreen
Displays detailed information of a selected plan, including its task list.

* Scaffold
Provides the main layout of the page, including AppBar, body, and FloatingActionButton.

* Column
Arranges the content vertically, showing the task list and the progress summary below.

* Expanded → ListView
Contains the list of tasks that can be checked or edited using Checkbox and TextFormField.

* SafeArea → Text
Displays the completion status (e.g., “3 out of 5 tasks complete”) at the bottom of the screen.

### 3. Capture the results of Step 14 as a GIF, then explain what you have created!
<p align="center">
  <img src="img\Practicum3.gif" width="250" alt="1" />
</p>

This GIF shows that state lifted to the PlanProvider is accessible from multiple screens: you can create plans from the main screen, open a plan’s detail view, and see/task changes reflected across screens because both pages share the same underlying List<Plan> managed by the InheritedNotifier.


### 4. Submit your practicum report in the form of a commit link or GitHub repository to the agreed lecturer!