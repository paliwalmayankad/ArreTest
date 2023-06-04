import 'package:areetest/riverpodcontroller/languagecontroller.dart';
import 'package:areetest/utils/colors.dart';
import 'package:areetest/utils/constantvalues.dart';
import 'package:areetest/utils/globalutils.dart';
import 'package:areetest/utils/globalwidgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'language_file.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mayank Test',debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
        fontFamily: 'AcuminPro'
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {




  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return SafeArea(

        child: Scaffold(
      backgroundColor: backGroundColor,

      body: Container(




          child:
          Column(children: [
            customAppBar(context),


           Expanded(child: SingleChildScrollView(child: Column(

              // horizontal).
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(height: 0.2,color: textTitleColor,),

                SizedBox(height: 10,),
                commonLinearTap('Community Code of Conduct', Icons.privacy_tip),
                commonLinearTap('Help Center',Icons.live_help),
                commonLinearTap('Edit My Language',Icons.abc_outlined,ontap: (){
                  _openBottomSheet(context);
                }),
                // commonLinearSwitchTap('Customize Interface',true,(){
                //
                // }),
                commonLinearTextTap('Terms of Service'),
                commonLinearTextTap('Privacy Policies'),
                commonLinearTextTap('Temporarily Deactivate My Account'),
                commonLinearTextTap('Permanently Delete My Account'),
                commonLinearTap('Logout',Icons.logout),


              ],
            )))
          ],)

      ),

    ));
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor:     Colors.transparent,isScrollControlled: true,
      builder: (BuildContext context) {
        return Wrap(children: [
          Container(

              margin: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(color: backGroundColor,borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0))),
              padding: EdgeInsets.symmetric(horizontal: 10),

              child: Column(children: [
                LanguageFile(),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, style: ElevatedButton.styleFrom(backgroundColor: primaryColor,minimumSize:  Size(screenWidth(context)/3,screenHeight(context)/18),),child:Text("Update",style:TextStyle(fontFamily: 'AcuminPro',color: textTitleColor,fontWeight: FontWeight.w700,fontSize: 14) ,)),
                  TextButton(onPressed: (){Navigator.pop(context);},style: TextButton.styleFrom(minimumSize:  Size(screenWidth(context)/3,screenHeight(context)/18)), child: Text("Cancel",style:TextStyle(fontFamily: 'AcuminPro',color: primaryColor,fontWeight: FontWeight.w700,fontSize: 14) ))
                ],),
                SizedBox(height: 20,),
              ],
              ))
        ],
      );
      },
    );
  }
}



