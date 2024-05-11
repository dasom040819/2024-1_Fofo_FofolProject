// import 'package:flutter/material.dart';
// // import 'package:fofo_app/colors/screen.colors.dart';

// class Signup extends StatelessWidget {
//   const Signup({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // backgroundColor : Colors.white;
//     // backgroundColor: ScreenColors.mainblueColor;
//     return Stack(
//       alignment : AlignmentDirectional.topCenter,
//       clipBehavior: Clip.none,
//       children: [
//         Positioned(
//           top : -50,
//           left: -100,
//           child:Container(
//             height : 300,
//             width : 300,
//             // child : Icon(Icons.gpp_good, color:Colors.green, size:48),
//             decoration:BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color : Colors.black.withOpacity(0.5),
//                   blurRadius: 5.0,
//                   spreadRadius: 1.0,
//                   offset: Offset(0,1),
//                 )
//               ],
//               gradient: LinearGradient(
//                 begin : Alignment.centerLeft,
//                 end : Alignment.centerRight,
//                 colors: [
//                   Color(0xffBCECFF),
//                   Color(0xffC2BBFF),
//                 ]
//               ),
//               shape: BoxShape.circle,
//             ),
//           ),
//         ),
//         Positioned(
//           top : 500,
//           right: -100,
//           child:Container(
//             height : 200,
//             width : 200,
//             // child : Icon(Icons.gpp_good, color:Colors.green, size:48),
//             decoration:BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color : Colors.black.withOpacity(0.5),
//                   blurRadius: 5.0,
//                   spreadRadius: 1.0,
//                   offset: Offset(0,1),
//                 ),
//               ],
//               gradient: LinearGradient(
//                 begin : Alignment.centerLeft,
//                   end : Alignment.centerRight,
//                 colors: [
//                   Color(0xffBCECFF),
//                   Color(0xffC2BBFF),
//                 ]
//               ),
//               shape: BoxShape.circle,
//             ),
//           ),
//         ),
//         Positioned(
//           top : 700,
//           left: -100,
//           child:Container(
//             height : 300,
//             width : 300,
//             // child : Icon(Icons.gpp_good, color:Colors.green, size:48),
//             decoration:BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color : Colors.black.withOpacity(0.5),
//                   blurRadius: 5.0,
//                   spreadRadius: 1.0,
//                   offset: Offset(0,1),
//                 ),
//               ],
//               gradient: LinearGradient(
//                   begin : Alignment.centerLeft,
//                   end : Alignment.centerRight,
//                   colors: [
//                     Color(0xffBCECFF),
//                     Color(0xffC2BBFF),
//                   ]
//               ),
//               shape: BoxShape.circle,
//             ),
//           ),
//         ),
//         Positioned(
//           top: 100,
//             child: Text ('Fofol',
//             style: TextStyle(
//               fontSize: 65,
//               fontWeight: FontWeight.w100,
//               color: Color(0xff636FA4),
//             ),
//             ),
//         ),
//       ],

//     );
//   }
// }


// import 'dart:html';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final username = TextEditingController();
  final email = TextEditingController();
  final id = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: SingleChildScrollView(
          key : formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  
                // copy the previous textfield
                ListTile(
                  title:Text(
                    "Fofol",
                    style:TextStyle(
                      fontSize:65, 
                      color: Color(0xff636FA4),
                      fontWeight: FontWeight.w100,
                      fontFamily: 'YES24GothicR',
                    )),
                ),

                // controller
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical:6),
                  decoration : BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:Colors.deepPurple.withOpacity(0.2),
                  ),
                  child: TextFormField(
                    controller: username,
                    validator: (value) {
                      if (value!.isEmpty){
                        return '사용자명을 작성해주세요.';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      icon : Icon(Icons.person),
                      border:InputBorder.none,
                      hintText: "사용자명",
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical:6),
                  decoration : BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:Colors.deepPurple.withOpacity(0.2),
                  ),
                  child: TextFormField(
                    controller: id,
                    validator: (value) {
                      if (value!.isEmpty){
                        return '아이디를 작성해주세요.';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      icon : Icon(Icons.key),
                      border:InputBorder.none,
                      hintText: "아이디",
                    ),
                  ),
                ),
                
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical:6),
                  decoration : BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:Colors.deepPurple.withOpacity(0.2),
                  ),
                  child: TextFormField(
                    controller: email,
                    validator: (value) {
                      if (value!.isEmpty){
                        return '이메일을 작성해주세요.';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      icon : Icon(Icons.email),
                      border:InputBorder.none,
                      hintText: "이메일",
                    ),
                  ),
                ),
                
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical:6),
                  decoration : BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:Colors.deepPurple.withOpacity(0.2),
                  ),
                  child: TextFormField(
                    controller: password,
                    validator: (value) {
                      if (value!.isEmpty){
                        return '비밀번호를 작성해주세요.';
                      }
                      return null;
                    },
                    obscureText: !isVisible,
                    decoration: InputDecoration(
                      icon : Icon(Icons.lock),
                      border:InputBorder.none,
                      hintText: "비밀번호",
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(isVisible
                            ? Icons.visibility
                            : Icons.visibility_off), 
                        ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical:6),
                  decoration : BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:Colors.deepPurple.withOpacity(0.2),
                  ),
                  child: TextFormField(
                    controller: confirmpassword,
                    validator: (value) {
                      if (value!.isEmpty){
                        return '비밀번호를 재작성해주세요.';
                      }
                      return null;
                    },
                    obscureText: !isVisible,
                    decoration: InputDecoration(
                      icon : Icon(Icons.lock),
                      border:InputBorder.none,
                      hintText: "비밀번호 확인",
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(isVisible
                            ? Icons.visibility
                            : Icons.visibility_off), 
                        ),
                    ),
                  ),
                ),

                // Container(
                //   height: 55,
                //   width: MediaQuery.of(context).size.width * .9,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     color:Colors.deepPurple),
                //     child: TextButton(
                //       onPressed: (){
                //         if(formKey.currentContext.validate()){
                //
                //         }
                //       },
                //       child: Text(
                //         "SIGNUP",
                //         style: TextStyle(color:Colors.white),
                //       ),
                //     ),
                // ),
            ],),
          ),
        ),
      ),
      );
  }
}