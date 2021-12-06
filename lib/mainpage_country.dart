import 'package:flutter/material.dart';

class ExhibitionWidgetCountry extends StatefulWidget {
  final List<String> countries;

  const ExhibitionWidgetCountry({Key? key, required this.countries})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _ExhibitionWidgetCountry();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ExhibitionWidgetCountry extends State<ExhibitionWidgetCountry> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true, //icon置右
      hint: Container(
        alignment: Alignment.center,
        child: const Text(
          '請選擇',
        ),
      ),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 45,
      alignment: AlignmentDirectional.centerStart,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.black38,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: widget.countries
          // <String>['台北市', '桃園市', '台中市', '台南市']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          alignment: AlignmentDirectional.center,
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
