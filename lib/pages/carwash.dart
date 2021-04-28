import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:madmax2/components/commonDrawer.dart';
//import 'package:madmax2/components/DropDownButton.dart';
import 'package:madmax2/components/commonDrawer.dart';

void main() {
  runApp(
    CarWashPage(),
  );
}

class CarWashPage extends StatefulWidget {
  @override
  _CarWashPageState createState() => _CarWashPageState();
}

class _CarWashPageState extends State<CarWashPage> {
  bool valuefirst = false;
  bool valuesecond = false;
  String dropdownValue = 'TOYOTA';
  List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      appBar: AppBar(
        title: Text('CarWashApp'),
      ),
      drawer: CommonDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image(
                height: 300.0,
                width: 500.0,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1605164599901-f8a1464a2c87?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Choose your Service',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            CheckboxListTile(
              title: const Text(
                'Full Service',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //value: timeDilation != 1.0,
              value: this.valuefirst,
              onChanged: (bool value) {
                setState(() {
                  //timeDilation = value ? 2.0 : 1.0;
                  this.valuefirst = value;
                });
              },
              secondary: const Icon(Icons.water_damage),
            ),
            CheckboxListTile(
              title: const Text(
                'Wash Only',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //value: timeDilation != 1.0,
              value: this.valuesecond,
              onChanged: (bool value) {
                setState(() {
                  //timeDilation = value ? 2.0 : 1.0;
                  this.valuesecond = value;
                });
              },
              secondary: const Icon(Icons.water_damage),
            ),
            CheckboxListTile(
              title: const Text(
                'Engine Wash',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: timeDilation != 1.0,
              onChanged: (bool value) {
                setState(() {
                  timeDilation = value ? 2.0 : 1.0;
                });
              },
              secondary: const Icon(Icons.water_damage),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['TOYOTA', 'HONDA', 'KIA', 'PROTON']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton(
                isExpanded: true, //Step 1
                items: [
                  new DropdownMenuItem(
                    child: Text(
                        "Long text that overflow the size.. wrapped or ellipsized",
                        overflow: TextOverflow.ellipsis), //Step 2
                  ),
                ],
                onChanged: (val) {}),
            ToggleButtons(
              borderColor: Colors.black,
              fillColor: Colors.grey,
              borderWidth: 2,
              selectedBorderColor: Colors.black,
              selectedColor: Colors.white,
              borderRadius: BorderRadius.circular(0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Open 24 Hours',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Custom Hours',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
              onPressed: (int index) {
                setState(() {
                  for (int i = 0; i < isSelected.length; i++) {
                    isSelected[i] = i == index;
                  }
                });
              },
              isSelected: isSelected,
            )
          ],
        ),
      ),
    );
  }
}
