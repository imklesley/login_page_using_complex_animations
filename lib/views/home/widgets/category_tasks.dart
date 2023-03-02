import 'package:flutter/material.dart';

class CategoryTasks extends StatefulWidget {
  const CategoryTasks({Key? key}) : super(key: key);

  @override
  State<CategoryTasks> createState() => _CategoryTasksState();
}

class _CategoryTasksState extends State<CategoryTasks> {
  List<String> categories = ['Trabalhos', 'Estudos', 'Compras'];

  int _categorySelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            disabledColor: Colors.white30,
            color: Colors.white,
            onPressed: _categorySelected - 1 >= 0
                ? () {
                    setState(() {
                      _categorySelected -= 1;
                    });
                  }
                : null,
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            )),
        Text(
          categories[_categorySelected].toUpperCase(),
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        IconButton(
            disabledColor: Colors.white30,
            color: Colors.white,
            onPressed: _categorySelected + 1 < categories.length
                ? () {
                    setState(() {
                      _categorySelected += 1;
                    });
                  }
                : null,
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
            )),
      ],
    );
  }
}
