import 'package:flutter/material.dart';

class S5421 extends StatelessWidget {
  const S5421({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ListPicker();
  }
}

class ListPicker extends StatefulWidget {
  const ListPicker({super.key});

  @override
  State<ListPicker> createState() => _ListPickerState();
}

const List<String> categoryList = [
  'Dart',
  'C++',
  'Java',
  'Python',
  'C#',
  'JavaScript'
];

class _ListPickerState extends State<ListPicker> {
  /// Bestimmt den Index von dem ListTile, das ausgewählt wurde
  TextEditingController controller = TextEditingController();
  int? selectedCategoryIndex;
  String? errorText;

  void highlightItem(int index) {
    setState(() {
      selectedCategoryIndex = index;
    });
  }

  void clearHighlight() {
    setState(() {
      selectedCategoryIndex = -1;
    });
  }

  void showErrorSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              /// Ist der index gleich dem ausgewählten Index wird das ListTile blau
              tileColor: index == selectedCategoryIndex ? Colors.blue : null,
              title: Text(categoryList[index]),
              onTap: () {},
            );
          },
        ),
        TextField(
          controller: controller,
          onChanged: (value) {
            clearHighlight();
            setState(() {
              errorText = '';
            });
          },
          onSubmitted: (value) {
            try {
              int index = int.parse(value);
              if (index >= 0 && index < categoryList.length) {
                highlightItem(index);
              } else {
                showErrorSnackbar('Index außerhalb des Bereichs');
              }
            } catch (e) {
              showErrorSnackbar('Keine gültige Zahl');
            }
          },
          decoration: const InputDecoration(border: OutlineInputBorder()),
        ),
      ],
    );
  }
}
