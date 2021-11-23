import 'package:flutter/material.dart';

class CertificationPressCodePage extends StatefulWidget {
  const CertificationPressCodePage({Key? key}) : super(key: key);

  @override
  PressCodeTyping createState() => PressCodeTyping();
}

class PressCodeTyping extends State<CertificationPressCodePage> {
  late FocusNode myFocusNode;

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
          children: const [
            SizedBox(
              height: 250,
            ),
            Text("通關驗證碼",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: "輸入展覽通關驗證碼進入",
                // errorText: '錯誤的驗證碼',
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}
