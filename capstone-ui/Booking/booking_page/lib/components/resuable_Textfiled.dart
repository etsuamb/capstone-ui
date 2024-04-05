import 'package:flutter/material.dart';
class ReusableTextField extends StatefulWidget {
  final String? name;
  String? hint;
  final List<String>? categories;
  final int? lineNumber;
  ReusableTextField(
      {required this.name,
      this.categories,
      this.lineNumber,
      required this.hint});

  @override
  _ReusableTextFieldState createState() => _ReusableTextFieldState();
}

class _ReusableTextFieldState extends State<ReusableTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.name!,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          TextField(
            maxLines: widget.lineNumber,
            decoration: InputDecoration(
              suffixIcon: widget.name == 'Category'
                  ? PopupMenuButton(
                      icon: Icon(Icons.keyboard_arrow_down),
                      itemBuilder: (BuildContext context) {
                        return widget.categories!.map((String item) {
                          return PopupMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList();
                      },
                      onSelected: (String selectedItem) {
                        setState(() {
                          widget.hint = selectedItem;
                        });
                      },
                    )
                  : null,
              hintText: widget.hint,
              hintStyle: TextStyle(color: Color(0xFF8F92A1), fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
