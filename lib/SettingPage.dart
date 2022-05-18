import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  final Map? arguments;
  const SettingPage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      bottom: false,
      left: true,
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Setting"),
        ),
        body:Container(
          color: const Color.fromRGBO(224, 246, 255, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  //边框圆角设置
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Column(
                  // physics: const NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  children: [
                    Container(
                      height: 70,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("edit home work",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.grey[800],size: 30,),
                        ],
                      ),
                    ),
                    const Divider(height: 1,color: Colors.black,),
                    Container(
                      height: 70,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("map history",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.grey[800],size: 30,),
                        ],
                      ),
                    ),
                    const Divider(height: 1,color: Colors.black,),
                    Container(
                      height: 70,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("dark model",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.grey[800],size: 30,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 50),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    Navigator.pushNamedAndRemoveUntil(context, "/LoginPage", (route) => false);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: const Text("Log Out",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w800),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
