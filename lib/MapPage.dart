import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  final Map? arguments;
  const MapPage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _MapPageState();
}

class mModel{
  String? url;
  String? text;
  String? text1;
  String? address;

  String? dialogText;
  String? dialogText1;
  mModel(this.url, this.text,this.text1,this.address,this.dialogText,this.dialogText1);
}

class _MapPageState extends State<MapPage> {


  final TextEditingController _searchController = TextEditingController();

  final List<mModel> _messageList = [
    mModel("assets/tsl.png","Parking Zone","Public parking space","38 woburn PI 5.7mi","free parking lot：35","free charging lot：4"),
    mModel("assets/tsl.png","Parking Zone","Public parking space","38 woburn PI 5.7mi","free parking lot：35","free charging lot：4"),
    mModel("assets/tsl.png","Parking Zone","Public parking space","38 woburn PI 5.7mi","free parking lot：35","free charging lot：4"),
  ];

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
        body:GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            color: const Color.fromRGBO(224, 246, 255, 1),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
                  child:  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor:Colors.white,
                    child: Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      child: const Text("T",style: TextStyle(fontSize: 15,color: Color.fromRGBO(255, 65, 131, 1),fontWeight: FontWeight.w800),),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          labelStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.black,fontSize: 15),
                          icon: Icon(Icons.search,color: Colors.black,size: 30,),
                        ),
                        controller: _searchController,
                        autocorrect:false,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.black,fontSize: 15),
                      ),
                    )
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 0, 20, 10),
                  alignment: Alignment.centerLeft,
                  child: const Text("37 results found",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context){
                              return Center(
                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  height:300,
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          padding: const EdgeInsets.fromLTRB(0, 30, 30, 0),
                                          child: const Icon(Icons.close,size: 40,color: Colors.grey,),
                                        ),
                                        onTap: (){
                                          Navigator.pop(context);
                                        },
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(40,20, 20, 20),
                                            child: CircleAvatar(
                                              maxRadius: 40,
                                              backgroundColor:Colors.white,
                                              backgroundImage:AssetImage(_messageList[index].url!),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(_messageList[index].text!,style: const TextStyle(fontSize: 24,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w700),),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(_messageList[index].dialogText!,style: const TextStyle(fontSize: 15,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w500),),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(_messageList[index].dialogText1!,style: const TextStyle(fontSize: 15,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w500),),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          margin: const EdgeInsets.fromLTRB(30, 30, 30, 10),
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(236, 39, 97,  1),
                                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                          ),
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                          child: const Text("Derections",style: TextStyle(fontSize: 15,color: Colors.white,),),
                                        ),
                                        onTap: (){
                                          Navigator.pop(context);
                                          Navigator.pushNamed(context, "/GoogleMapPage");
                                        },
                                      ),
                                    ],
                                  )
                                ),
                              );
                            }
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(204, 232, 243, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(20,20, 20, 20),
                              child: CircleAvatar(
                                maxRadius: 40,
                                backgroundColor:Colors.white,
                                backgroundImage:AssetImage(_messageList[index].url!),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                    alignment: Alignment.centerLeft,
                                    child: Text(_messageList[index].text!,style: const TextStyle(fontSize: 24,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w700),),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                                    alignment: Alignment.centerLeft,
                                    child: Text(_messageList[index].text1!,style: const TextStyle(fontSize: 15,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w500),),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                                    alignment: Alignment.centerLeft,
                                    child: Text(_messageList[index].address!,style: const TextStyle(fontSize: 18,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w500),),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: _messageList.length,
                )



              ],
            ),
          ),
        )
      ),
    );
  }
}




