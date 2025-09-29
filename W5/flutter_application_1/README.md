# *Praktikum 1: Membuat Project Flutter Baru*
## **Results**
![alt text](<assets/img/Praktikum 1.png>)

#### **Explanation :**
##### What Happens:
The image shows the default Flutter counter app running on a device or emulator. This confirms that the new Flutter project was created successfully and can be run without errors.

# *Praktikum 2: Menghubungkan Perangkat Android/IOS/Emulator*
## **Results**
### **Connect by Device**
![alt text](<assets/img/Praktikum 2-Connect Device.png>)

#### **Explanation :**
##### What Happens:
The image displays a physical Android or iOS device connected to the development environment. The device is detected and ready for app deployment and testing directly from the computer.

### **Connect by Emulator**
![alt text](<assets/img/Praktikum 2-Connect Emulator.png>)
#### **Explanation :**
##### What Happens:
The image shows an Android or iOS emulator running. This allows you to test and debug your Flutter app without needing a physical device.

# *Praktikum 3: Membuat Repository Github dan Laporan Praktikum*
#### **Explanation :**
##### What Happens:
A GitHub repository was created for the project. All practicum activities and progress are documented in the README.md file, ensuring version control and easy collaboration.

# *Praktikum 4: Menerapkan Widget Dasar*
## **Results**
### **Text Widget**
![alt text](<assets/img/Praktikum 4-L1.png>)

#### **Explanation :**
##### What Happens:
The image demonstrates the use of the Text widget in Flutter. It shows how text can be displayed on the screen, which is fundamental for any app interface.

### **Image Widget**
![alt text](<assets/img/Praktikum 4-L2.png>)

#### **Explanation :**
##### What Happens:
The image shows the Image widget in action, displaying a picture within the app. This is useful for adding logos, icons, or any visual content.

# *Praktikum 5: Menerapkan Widget Material Design dan IOS Cupertino*
## **Results**
### **Cupertino Button dan Loading Bar**
![alt text](<assets/img/Praktikum 5-Cupertino Button.png>)

#### **Explanation :**
##### What Happens:
The image displays a Cupertino-style button and a loading indicator (activity indicator), which are widgets styled according to iOS design guidelines. This demonstrates how Flutter can create iOS-like interfaces.

### **Floating Action Button (FAB)**
![alt text](<assets/img/Praktikum 5-Cupertino Button.png>)

#### **Explanation :**
##### What Happens:
The image shows a Floating Action Button (FAB), a circular button typically used for primary actions in Material Design apps. It usually floats above the content and is easily accessible.

## **Results**
### **Scaffold Widget**
![alt text](<assets/img/Praktikum 5-Scaffolding Widget.png>)

#### **Explanation :**
##### What Happens:
The image illustrates the use of the Scaffold widget, which provides a basic structure for the app, including an app bar, body, and floating action button. Scaffold is essential for building Material Design layouts in Flutter.

## **Results**
### **Dialog Widget**
![alt text](<assets/img/Praktikum 5-Dialog Widget First Condition.png>)
![alt text](<assets/img/Praktikum 5-Dialog Widget Results.png>)

#### **Explanation :**
##### What Happens:
The first image shows the app before the dialog appears. The second image displays an AlertDialog with a title, message, and an "OK" button. This demonstrates how to show pop-up dialogs for user notifications or confirmations.

## **Results**
### **Input dan Selection Widget**
![alt text](<assets/img/Praktikum 5-Text Field.png>)

#### **Explanation :**
##### What Happens:
The image shows a TextField widget, allowing users to input text. Input and selection widgets are essential for forms and user interactions in any app.

## **Results**
### **Date and Time Pickers**
![alt text](<assets/img/Praktikum 5-Date Time Picker Widget.png>)

#### **Explanation :**
##### What Happens:
The image demonstrates the use of date and time picker widgets, which let users select dates and times through a user-friendly interface. These are commonly used in forms and scheduling features.

# 2. Selesaikan Praktikum 2 dan Anda wajib menjalankan aplikasi hello_world pada perangkat fisik (device Android/iOS) agar Anda mempunyai pengalaman untuk menghubungkan ke perangkat fisik. Capture hasil aplikasi di perangkat, lalu buatlah laporan praktikum pada file README.md.
![alt text](<assets/img/Praktikum 2-Connect Device.png>)
#### **Explanation :**
##### What Happens:
In this term i've already connected with my device idk why it can't be read by the MacOS and i don't have any android phone so actually it will be reproduce the same output.

# 3. Pada praktikum 5 mulai dari Langkah 3 sampai 6, buatlah file widget tersendiri di folder basic_widgets, kemudian pada file main.dart cukup melakukan import widget sesuai masing-masing langkah tersebut!

## **Main Menu**
![alt text](<assets/img-tp/Main Menu.png>)
#### **Explanation :**
##### What Happens:
This main menu show all the possible widgets that could be proceed


## **Scaffold Wigdget**
![alt text](<assets/img-tp/Scaffold Widget.png>)
#### **Explanation :**
##### What Happens:
Scaffold is a fundamental widget in Flutter that provides the basic visual structure for Material Design applications. This widget functions as the main framework that organizes the layout of standard UI components such as AppBar, Body, FloatingActionButton, and BottomNavigationBar.
Components Used:

AppBar: Displays a bar at the top of the application containing a title, menu icon (leading), and action buttons (search and more options). The AppBar provides navigation and quick access to important application functions.
Body: The main content area of the application containing a Center widget with a Column to display informative text about the Scaffold Widget.
FloatingActionButton (FAB): A circular floating button with an add icon (+) typically used for the primary action in an application.
BottomNavigationBar: A navigation bar at the bottom of the screen with three navigation items (Home, Business, School) for switching between pages.

Scaffold provides APIs for displaying drawers, snack bars, and bottom sheets, making it a central component in most Flutter applications.

## **Dialog Widget**
### **Main Menu**
![alt text](<assets/img-tp/Dialog Widget.png>)
### **Alert Dialog Widget**
![alt text](<assets/img-tp/Alert Dialog Widget.png>)
### **Simple Dialog Widget**
![alt text](<assets/img-tp/Simple Dialog Widget.png>)
#### **Explanation :**
##### What Happens:
Dialog Widget is used to display pop-up windows that appear above the main application content. Dialogs function to request user confirmation, display important information, or provide choices to users without leaving the current page.
Types of Dialogs Implemented:

AlertDialog: A dialog that displays a title, message content, and action buttons (Cancel and OK). AlertDialog is suitable for confirming important actions such as deleting data, exiting the application, or saving changes. This dialog forces users to make a decision before continuing.
SimpleDialog: A dialog that displays a list of simple choices. Unlike AlertDialog, SimpleDialog focuses more on selecting options from several alternatives. Each option is represented by a SimpleDialogOption that can be clicked and will close the dialog when selected.

Both types of dialogs use the showDialog() function to display the dialog modally (blocking interaction with the UI behind it) and Navigator.of(context).pop() to close the dialog after the user makes a selection.

## **Input and Selection Widget**
![alt text](<assets/img-tp/Input and Selection Widget.png>)
#### **Explanation :**
##### What Happens:
This widget demonstrates various input and selection components commonly used in Flutter applications to collect data from users. This widget uses StatefulWidget because it requires state management to store and update user input values.
Input and Selection Components:

TextField: A text input field that allows users to enter string data. Equipped with TextEditingController to manage text, decoration for styling (label, border, icon), and input validation.
Checkbox: A boolean selection component (true/false) displayed as a check box. Uses CheckboxListTile to display a checkbox with text label. Suitable for terms and conditions agreement or on/off features.
Radio Button: A component for selecting one option from several mutually exclusive choices. Uses RadioListTile with the same groupValue to group options. When one radio is selected, others are automatically deselected.
Slider: A component for selecting a numeric value within a certain range by sliding. The slider has minimum (0), maximum (100) values, and divisions (10) to create discrete values. The label displays the current value.
Dropdown: A dropdown menu that displays a list of choices when clicked. Uses DropdownButton with items containing a list of DropdownMenuItem. Suitable for selecting from many options without taking up much screen space.

All these components use setState() to update the UI when values change, and TextEditingController is disposed in the dispose() method to prevent memory leaks.

## **Date and Time Picker Widget**
![alt text](<assets/img-tp/Date and Time Picker.png>)
### **Time Picker**
![alt text](<assets/img-tp/Time Picker.png>)
#### **Explanation :**
##### What Happens:
This widget provides an interface for selecting dates and times using Flutter's built-in pickers. This widget is very useful for applications that require date and time input such as calendars, booking systems, reminders, or registration forms.
Picker Components:

Date Picker: Uses the showDatePicker() function which displays an interactive calendar. Users can select a date with the following parameters:
- initialDate: The initial date displayed (default: today's date)
- firstDate: The minimum date that can be selected (2000)
- lastDate: The maximum date that can be selected (2100)

The selected date is stored in the selectedDate variable of type DateTime and displayed in DD/MM/YYYY format.
Time Picker: Uses the showTimePicker() function which displays an analog or digital clock (depending on platform). Users can select hours and minutes with the following parameter:
- initialTime: The initial time displayed (default: current time)

The selected time is stored in the selectedTime variable of type TimeOfDay and displayed in HH:MM format (24-hour). The padLeft(2, '0') method is used to ensure minutes are always displayed with two digits.

Both pickers are asynchronous (using Future) because they wait for user input. The async/await function is used to handle date/time selection, and setState() is called to update the UI with newly selected values.

# 4. Selesaikan Codelabs: Your first Flutter app, lalu buatlah laporan praktikumnya dan push ke repository GitHub Anda!
https://github.com/Anothaatype/mobile-programming/tree/main/W5/flutter_application_2

