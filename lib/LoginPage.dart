import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Map? arguments;
  const LoginPage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

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
        // appBar: AppBar(//224 246  255
        //   title: const Text("工单"),
        // ),
        body:GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            color: const Color.fromRGBO(224, 246, 255, 1),
            child:ListView(
              children: [
                const SizedBox(height: 40,),
                CircleAvatar(
                  maxRadius: 80,
                  backgroundColor:Colors.white,
                  child: Container(
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,
                    child: const Text("TrApp",style: TextStyle(fontSize: 18,color: Color.fromRGBO(255, 65, 131, 1),fontWeight: FontWeight.w800),),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.fromLTRB(40, 40, 20, 20),
                  alignment: Alignment.centerLeft,
                  child: const Text("Sign In",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w800),),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 20, 20),
                  alignment: Alignment.centerLeft,
                  child: const Text("Email",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                    child: Container(
                      color: Colors.white,
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          labelStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'email address',
                          hintStyle: TextStyle(color: Colors.black,fontSize: 15),
                        ),
                        controller: _emailController,
                        autocorrect:false,

                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.black,fontSize: 15),
                      ),
                    )
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 20, 20),
                  alignment: Alignment.centerLeft,
                  child: const Text("Password",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                    child: Container(
                      color: Colors.white,
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          labelStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'password',
                          hintStyle: TextStyle(color: Colors.black,fontSize: 15),
                        ),
                        controller: _passwordController,
                        autocorrect:false,
                        obscureText:true,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.black,fontSize: 15),
                      ),
                    )
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      // Navigator.pushNamed(context, '/CommunityAnnouncementPage');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(236, 39, 97,  1),
                        borderRadius: BorderRadius.all( Radius.circular(6.0)),
                      ),
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                      alignment: Alignment.center,
                      child: const Text("Sign In",style: TextStyle(fontSize: 16,color: Colors.white),),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 20, 20),
                  alignment: Alignment.center,
                  child: const Text("or User one of your social profiles",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(40, 0, 10, 0),
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: (){

                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(45, 155, 240,  1),
                              borderRadius: BorderRadius.all( Radius.circular(6.0)),
                            ),
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                            alignment: Alignment.center,
                            child: const Text("Twitter",style: TextStyle(fontSize: 16,color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 40, 0),
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: (){

                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(65, 76, 178,  1),
                              borderRadius: BorderRadius.all( Radius.circular(6.0)),
                            ),
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                            alignment: Alignment.center,
                            child: const Text("FaceBook",style: TextStyle(fontSize: 16,color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(40, 0, 10, 0),
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: (){

                          },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                            alignment: Alignment.centerLeft,
                            child: const Text("Forgot Password",style: TextStyle(fontSize: 16,color: Colors.black),),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 40, 0),
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: (){

                          },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                            alignment: Alignment.centerRight,
                            child: const Text("Sign Up",style: TextStyle(fontSize: 16,color:Color.fromRGBO(236, 39, 97,  1),),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Expanded(child: SizedBox(),),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 40, 0),
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: (){
                            // Navigator.pushNamed(context, "/HomePage");
                            // Navigator.pushAndRemoveUntil(context, "/HomePage", (route) => false);
                            // Navigator.pushReplacementNamed(context, "/HomePage");
                            Navigator.pushNamedAndRemoveUntil(context, "/HomePage", (route) => false);
                          },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                            alignment: Alignment.centerRight,
                            child: const Text("Skip",style: TextStyle(fontSize: 16,color:Color.fromRGBO(236, 39, 97,  1),),),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
