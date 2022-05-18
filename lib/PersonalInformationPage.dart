import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      bottom: false,
      left: true,
      top: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
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
          color: Colors.white,
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
                        child: const Text("娅",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w500),),
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
                            child: const Text("崔娅",style: TextStyle(fontSize: 25,color: Colors.black),),
                          ),
                          GestureDetector(
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
                                children: [
                                  const Icon(Icons.edit,color: Colors.blue,),
                                  const SizedBox(width: 5,),
                                  const Text("Edit profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
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
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(30,10, 30, 20),
                child: const Text("my car: model 3",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w500),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(30,10, 30, 20),
                child: const Text("my favorit: ",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w500),),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 3,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.arrow_drop_down_circle,size: 40,),
                        title: const Text('Card title 1',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        subtitle: Text(
                          'Secondary Text',
                          style: TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Image.asset('assets/tsl.png'),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                          style: TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('ACTION 1'),
                          ),
                          FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('ACTION 2'),
                          ),
                        ],
                      ),
                    ],
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