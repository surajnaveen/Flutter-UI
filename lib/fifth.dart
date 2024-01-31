import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({super.key});

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
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
                  text: '4',
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
                "One step away to your account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 20),
              child: Text(
                "Now we need to veryfiy your identy",
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  color: Color.fromARGB(90, 0, 0, 0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Container(
                height: 100,
                width: 335,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(45.0), //or 15.0
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              color: const Color.fromARGB(255, 26, 255, 0),
                              child: const Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Color.fromARGB(252, 255, 252, 252),
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            "   Use Identity Card",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(21, 0, 0, 0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(160, 32, 240, 0.701),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ) // green shaped
                                  ),
                              child: const Text(
                                "Recommended",
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    color: Color.fromARGB(220, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 10, 0),
                        child: Text(
                          "Get the full feature of your IndoAliz you can store up to IDR 10",
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              color: Color.fromARGB(165, 0, 0, 0)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Container(
                height: 100,
                width: 335,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(45.0), //or 15.0
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              color: const Color.fromARGB(255, 26, 255, 0),
                              child: const Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      color: Color.fromARGB(252, 255, 252, 252),
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            "   Without Identity Card",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 10, 0),
                        child: Text(
                          "You only can store IDR 1 Milion to 10 your IndoAliz wallert",
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              color: Color.fromARGB(165, 0, 0, 0)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: 370,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 20, 5),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => const PopUpBox(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(160, 32, 240, 1),
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
    );
  }
}

class PopUpBox extends StatelessWidget {
  const PopUpBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: MediaQuery.of(context).size.height * 0.5, 
        child: Column(
          children: [
            SvgPicture.asset(
              "asset/undraw_done_re_oak4.svg",
              width: 200,
              height: 200,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
              child: Text(
                "Congratulation",
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 14,
                  color: Color.fromARGB(163, 0, 0, 0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Now you are registered",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
              child: Text(
                "Get start with idndoAlliz Wallet",
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  color: Color.fromARGB(138, 0, 0, 0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: SizedBox(
                height: 55,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FifthPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(160, 32, 240, 1),
                  ),
                  child: const Text(
                    "Start Now",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito',
                        letterSpacing: 8,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
