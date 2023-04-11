import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_page.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  final String phone;
  OTPScreen(this.phone);
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  String? _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(20),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg1.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Center(
                child: Text(
                  'Подтверждение +7${widget.phone}',
                  style: const TextStyle(
                      fontFamily: 'Montserrat2',
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                controller: _pinPutController,
                pinAnimationType: PinAnimationType.fade,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () async {
                    // print(_pinPutController.text);
                    try {
                      await FirebaseAuth.instance
                          .signInWithCredential(PhoneAuthProvider.credential(
                              verificationId: _verificationCode!,
                              smsCode: _pinPutController.text))
                          .then((value) async {
                        if (value.user != null) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SafeArea(child: MyHomePage())),
                              (route) => false);
                        }
                      });
                    } catch (e) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(e.toString())));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color.fromARGB(255, 5, 142, 76),
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(100.0, 50.0),
                  ),
                  child: const Text(
                    "Подвердить",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Montserrat2',
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+7${widget.phone}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SafeArea(child: MyHomePage())),
                  (route) => false);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String? verficationID, int? resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        }
        //timeout: Duration(seconds: 20)
        );
  }

  @override
  void initState() {
    super.initState();
    _verifyPhone();
  }
}
