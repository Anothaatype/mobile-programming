import 'package:flutter/material.dart';

class InputSelectionWidget extends StatefulWidget {
  const InputSelectionWidget({super.key});

  @override
  State<InputSelectionWidget> createState() => _InputSelectionWidgetState();
}

class _InputSelectionWidgetState extends State<InputSelectionWidget> {
  final TextEditingController _nameController = TextEditingController();
  bool _isChecked = false;
  String _selectedRadio = 'Option 1';
  double _sliderValue = 50;
  String _dropdownValue = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input and Selection Widget')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextField
            const Text(
              'TextField:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Masukkan Nama',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),

            // Checkbox
            const Text(
              'Checkbox:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: const Text('Setuju dengan syarat dan ketentuan'),
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value ?? false;
                });
              },
            ),
            const SizedBox(height: 20),

            // Radio Button
            const Text(
              'Radio Button:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile<String>(
              title: const Text('Option 1'),
              value: 'Option 1',
              groupValue: _selectedRadio,
              onChanged: (String? value) {
                setState(() {
                  _selectedRadio = value ?? 'Option 1';
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Option 2'),
              value: 'Option 2',
              groupValue: _selectedRadio,
              onChanged: (String? value) {
                setState(() {
                  _selectedRadio = value ?? 'Option 1';
                });
              },
            ),
            const SizedBox(height: 20),

            // Slider
            const Text(
              'Slider:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              label: _sliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text('Value: ${_sliderValue.round()}'),
            const SizedBox(height: 20),

            // Dropdown
            const Text(
              'Dropdown:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: _dropdownValue,
              isExpanded: true,
              items: <String>['Item 1', 'Item 2', 'Item 3', 'Item 4']
                  .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                  .toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _dropdownValue = newValue ?? 'Item 1';
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
