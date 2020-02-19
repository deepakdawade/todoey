import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String titleName;
  final Function checkboxCallback;

  TasksTile({this.isChecked, this.titleName, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titleName,
        style: TextStyle(
            fontWeight: isChecked ? FontWeight.w900 : FontWeight.w500,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor:
              isChecked ? Colors.redAccent : Colors.lightBlueAccent,
        ),
        child: Checkbox(
          value: isChecked,
          activeColor: isChecked ? Colors.lightBlueAccent : Colors.redAccent,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
