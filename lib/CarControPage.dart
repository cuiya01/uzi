
import 'package:flutter/material.dart';

class CarControPage extends StatefulWidget {
  final Map? arguments;
  const CarControPage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _CarControPageState();
}

class _CarControPageState extends State<CarControPage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool _buttonOne = false;

  bool _buttonTwoL = false;

  bool _buttonTwoR = false;

  bool _buttonThreeL = false;

  bool _buttonThreeR = false;

  bool _buttonFour = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      bottom: false,
      left: true,
      top: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(22, 23, 24, 1),
          elevation: 0.0,
          title: const Text(""),

        ),
        body:Container(
          alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/carpic.png"),
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:Column(
              children: [
                SizedBox(height: 40,),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    setState((){
                      _buttonOne = !_buttonOne;
                    });
                  },
                  child:  CircleAvatar(
                    maxRadius: 50,
                    backgroundColor:const Color.fromRGBO(233, 233, 233, 0.3),
                    child: Icon(_buttonOne ? Icons.lock_open_rounded :Icons.lock_outlined,color: _buttonOne ? const Color.fromRGBO(37, 97, 161, 1) : Colors.white,size: 40,),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        setState((){
                          _buttonTwoL = !_buttonTwoL;
                        });
                      },
                      child:  CircleAvatar(
                        maxRadius: 50,
                        backgroundColor:const Color.fromRGBO(233, 233, 233, 0.3),
                        child: Icon(_buttonTwoL ? Icons.lock_open_rounded :Icons.lock_outlined,color: _buttonTwoL ? const Color.fromRGBO(37, 97, 161, 1) : Colors.white,size: 40,),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        setState((){
                          _buttonTwoR = !_buttonTwoR;
                        });
                      },
                      child:  CircleAvatar(
                        maxRadius: 50,
                        backgroundColor:const Color.fromRGBO(233, 233, 233, 0.3),
                        child: Icon(_buttonTwoR ? Icons.lock_open_rounded :Icons.lock_outlined,color: _buttonTwoR ? const Color.fromRGBO(37, 97, 161, 1) : Colors.white,size: 40,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        setState((){
                          _buttonThreeL = !_buttonThreeL;
                        });
                      },
                      child:  CircleAvatar(
                        maxRadius: 50,
                        backgroundColor:const Color.fromRGBO(233, 233, 233, 0.3),
                        child: Icon(_buttonThreeL ? Icons.lock_open_rounded :Icons.lock_outlined,color: _buttonThreeL ? const Color.fromRGBO(37, 97, 161, 1) : Colors.white,size: 40,),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        setState((){
                          _buttonThreeR = !_buttonThreeR;
                        });
                      },
                      child:  CircleAvatar(
                        maxRadius: 50,
                        backgroundColor:const Color.fromRGBO(233, 233, 233, 0.3),
                        child: Icon(_buttonThreeR ? Icons.lock_open_rounded :Icons.lock_outlined,color: _buttonThreeR ? const Color.fromRGBO(37, 97, 161, 1) : Colors.white,size: 40,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 180,),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    setState((){
                      _buttonFour = !_buttonFour;
                    });
                  },
                  child:  CircleAvatar(
                    maxRadius: 50,
                    backgroundColor:const Color.fromRGBO(233, 233, 233, 0.3),
                    child: Icon(_buttonFour ? Icons.lock_open_rounded :Icons.lock_outlined,color: _buttonFour ? const Color.fromRGBO(37, 97, 161, 1) : Colors.white,size: 40,),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}


