### Langkah 4 Tambah Widget AutoSizeText 
In this practicum the text are read as an error because it haven't defined yet

## Practical Assignments 
1. Complete the practicum, then document and push it 

2. Explain the purpose of step 2 in the practicum! 
- Step 2:
```dart:
flutter pub add auto_size_text
```
Purpose:
This command installs an external Flutter package from pub.dev that supplies the AutoSizeText widget. Its main function is to make text automatically resize so it fits within its container without overflowing.

Once the command is executed, Flutter will automatically update the pubspec.yaml file by including the plugin under the dependencies section.

3.Explain the purpose of step 5 in the practicum! 

- Step 5:
Adding:
```dart:
final String text;
const RedTextWidget({Key? key, required this.text}) : super(key: key);
```

Purpose :

- Introduces a variable (text) to hold the message that the widget will display.

- Adds a constructor that allows the RedTextWidget to receive a text value when it is called from another file (for example, main.dart).

- Uses the required keyword to ensure that the text parameter is always provided, preventing potential null errors.

This approach makes the widget flexible and reusable, as it can display different text values each time it is used.

4. In step 6 there are two widgets added, explain their functions and differences! 

- In Step 6, two widgets were added:

RedTextWidget inside :
```dart:
Container(
  color: Colors.yellowAccent,
  width: 50,
  child: const RedTextWidget(
    text: 'You have pushed the button this many times:',
  ),
),
```

    - Uses the AutoSizeText plugin, so the text automatically resizes to fit inside the container.

    - Text color is red, and it can display up to 2 lines with an ellipsis (…) if too long.

- Text inside:
```dart:
Container(
  color: Colors.greenAccent,
  width: 100,
  child: const Text(
    'You have pushed the button this many times:',
  ),
),
```

- Utilizes Flutter’s built-in Text widget, which doesn’t adjust its size automatically.

- When the text is too lengthy, it may overflow or get cut off.


5. Explain the meaning of each parameter in the plugin based on the links in this auto_size_text documentation ! 

The AutoSizeText widget in the example:
```dart:
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RedTextWidget extends StatelessWidget {
  final String text;

  const RedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
```
Explanation of parameters (Paraphrased):

- text → The string content displayed within the widget; it represents the visible text on the screen.

- style → Specifies the visual appearance of the text, such as color, font size, and weight. In this case, the text is styled in red with a font size of 14.

- maxLines → Sets the maximum number of lines the text can occupy. If it exceeds two lines, the rest will not be shown.

- overflow → Defines how the text behaves when it doesn’t fit the available space. The TextOverflow.ellipsis option adds “…” at the end to indicate truncated content.

Reference: See the AutoSizeText documentation on pub.dev.