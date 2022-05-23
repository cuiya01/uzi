import 'package:flutter/material.dart';
import 'package:neveruseless/neveruseless.dart';

class PersonalInformationPage extends StatefulWidget {
  final Map? arguments;
  const PersonalInformationPage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String _name = "cecilia";
  String _car = "model 3";


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      bottom: false,
      left: true,
      top: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(224, 246, 255, 1),
          elevation: 0.0,
          title: const Text(""),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body:Container(
          color: const Color.fromRGBO(224, 246, 255, 1),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 60,
                      backgroundColor:const Color.fromRGBO(50, 109, 102, 1),
                      child: Container(
                        width: 60,
                        height: 60,
                        alignment: Alignment.center,
                        child: const Text("ceci",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w500),maxLines: 1,),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: Text(_name,style: TextStyle(fontSize: 25,color: Colors.black),),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: (){
                              Navigator.pushNamed(context, "/EditPorfilePage",arguments: {
                               "name"  : _name,
                               "car" : _car,
                              }).then((value){
                                if(value == null){
                                  return;
                                }
                                try{
                                  List v = value as List;
                                  setState((){
                                    _name = v[0].toString();
                                    _car = v[1].toString();
                                  });
                                }catch(e){

                                }
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                //边框圆角设置
                                border: Border.all(width: 1, color: const Color.fromRGBO(0, 0, 0, 0.6)),
                                borderRadius: const BorderRadius.all(Radius.circular(99.0)),
                              ),
                              width: 150,
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.edit,color: Colors.blue,),
                                  SizedBox(width: 5,),
                                  Text("Edit profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                        color: Colors.grey,
                        offset:Offset(5,5)
                    ),
                  ],
                ),
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: RichText(
                  text: TextSpan(text: "my car : ",style: const TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w500),
                  children: [
                      TextSpan(text: _car,style: TextStyle(fontSize: 20,color: Colors.grey[800],fontWeight: FontWeight.w300),),
                  ]),
                  // const Text("my car: model 3",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w500),),,
                )
              ),
              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                        color: Colors.grey,
                        offset:Offset(5,5)
                    ),
                  ],
                ),
                margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    neverBus.emit("BottomBarToggle",1);
                  },
                  child: Column(
                    children: [
                      Container(
                        child: const Text("my Favourite: ",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w500),),
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      ),
                      // ListTile(
                      //   leading: const Icon(Icons.arrow_drop_down_circle,size: 40,),
                      //   title: const Text('Model 3',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      //   subtitle: Text('Secondary Text', style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                      // ),
                      Image.asset('assets/tsl.png'),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Based on an all-electric platform, it offers excellent acceleration, long range and fast charging capability.',
                          style: TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      // ButtonBar(
                      //   alignment: MainAxisAlignment.start,
                      //   children: [
                      //     FlatButton(
                      //       textColor: const Color(0xFF6200EE),
                      //       onPressed: () {
                      //         // Perform some action
                      //       },
                      //       child: const Text('ACTION 1'),
                      //     ),
                      //     FlatButton(
                      //       textColor: const Color(0xFF6200EE),
                      //       onPressed: () {
                      //         // Perform some action
                      //       },
                      //       child: const Text('ACTION 2'),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                )
              ),

            ],
          ),
        ),
      ),
    );
  }
}