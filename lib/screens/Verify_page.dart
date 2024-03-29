import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: depend_on_referenced_packages
import 'package:timer_count_down/timer_count_down.dart';
import 'package:app_ui/screens/Bio_security.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 240, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 240, 255),
        leading: GestureDetector(
          child: const Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,
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
                  text: '2',
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
              "asset/Verified-amico.svg",
              width: 250,
              height: 250,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Veryfication",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 7, 20, 17),
              child: Text(
                "Enter 4 digit number that sent to your number",
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 45,
                        width: 64,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 45,
                        width: 64,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 45,
                        width: 64,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 45,
                        width: 64,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.headlineLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
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
                              MaterialPageRoute(
                                  builder: (context) => const Fourthpage()));
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
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Re-send code in ",style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 15,
                    color: Color.fromRGBO(160, 32, 240, 1),
                  ),),
                  const Text("0:",style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 15,
                    color: Color.fromRGBO(160, 32, 240, 1),
                    fontWeight: FontWeight.w900
                  ),),
                  Countdown(
                    // controller: _controller,
                    seconds: 30,
                    build: (_, double time) => Text(
                      time.toString(),
                      style: const TextStyle(
                        fontFamily: 'Nunito',
                        color: Color.fromRGBO(160, 32, 240, 1),
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                      ),
                    ),
                    interval: const Duration(milliseconds: 1000),
                    onFinished: () {
                      
                    },
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
