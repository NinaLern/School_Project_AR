import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class CertificationPressCodePage extends StatefulWidget {
  const CertificationPressCodePage({Key? key}) : super(key: key);

  @override
  PressCodeTyping createState() => PressCodeTyping();
}

class PressCodeTyping extends State<CertificationPressCodePage> {
  late FocusNode myFocusNode;
  bool _onEditing = true;
  late String _code;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(232, 197, 169, 100),
        iconTheme: const IconThemeData.fallback(),
        title: const Text(
          '驗證碼輸入',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/mainpage.jpeg'),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const Text("請輸入通關驗證碼",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 70,
            ),
            // const SizedBox(
            //   child: TextField(
            //     textAlign: TextAlign.center,
            //     decoration: InputDecoration(
            //       enabledBorder: UnderlineInputBorder(
            //         borderSide: BorderSide(color: Colors.black87),
            //       ),
            //       focusedBorder: UnderlineInputBorder(
            //         borderSide: BorderSide(color: Colors.grey),
            //       ),
            //       hintText: "輸入展覽通關驗證碼進入",
            //       // errorText: '錯誤的驗證碼',
            //     ),
            //     keyboardType: TextInputType.number,
            //   ),
            // ),
            VerificationCode(
              textStyle: const TextStyle(fontSize: 20.0, color: Colors.black87),
              keyboardType: TextInputType.number,
              // in case underline color is null it will use primaryColor: Colors.red from Theme
              underlineColor: Colors.orange[300],
              underlineWidth: 2,
              length: 5,
              // clearAll is NOT required, you can delete it
              // takes any widget, so you can implement your design
              clearAll: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'clear all',
                  style: TextStyle(
                      fontSize: 14.0,
                      decoration: TextDecoration.underline,
                      color: Colors.grey),
                ),
              ),
              onCompleted: (String value) {
                setState(() {
                  _code = value;
                });
              },
              onEditing: (bool value) {
                setState(() {
                  _onEditing = value;
                });
                if (!_onEditing) FocusScope.of(context).unfocus();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: _onEditing
                    ? const Text('Please enter full code')
                    : Text('Your code: $_code'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
