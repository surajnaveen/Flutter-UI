import 'package:app_ui/third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
//import 'package:app_ui/button.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 240, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 240, 255),
        title: RichText(
            text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
              TextSpan(
                  text: "Step ",
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 16,
                      color: Color.fromRGBO(160, 32, 240, 0.6),
                      decoration: TextDecoration.none)),
              TextSpan(
                  text: '1',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Color.fromRGBO(160, 32, 240, 0.6),
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.none)),
              TextSpan(
                  text: "/6",
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    color: Color.fromRGBO(160, 32, 240, 0.6),
                    decoration: TextDecoration.none,
                    fontSize: 16,
                  ))
            ])),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SvgPicture.asset(
              "asset/Profile data-rafiki.svg",
              width: 250,
              height: 250,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Registration",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 20),
              child: Text(
                "It is a long established fact that a reader will be distracted ",
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  color: Color.fromARGB(90, 0, 0, 0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 200,
              width: 345,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(
                                119, 0, 0, 0), // Border color
                            width: 2.0, // Border width
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {
                            //print(number.phoneNumber);
                          },
                          onInputValidated: (bool value) {
                            //print(value);
                          },
                          selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          ),
                          inputDecoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          // inputBorder: const OutlineInputBorder(
                          //     borderSide: BorderSide(
                          //         color: Color.fromRGBO(255, 255, 255, 0.3))),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle:
                              const TextStyle(color: Colors.black),
                          initialValue: PhoneNumber(isoCode: 'NG'),
                          textStyle:
                              const TextStyle(fontFamily: 'CountryIcons'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 370,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  const ThirdPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(160, 32, 240, 1),
                        ),
                        child: const Text(
                          "Continue",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito',
                              letterSpacing: 5,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
