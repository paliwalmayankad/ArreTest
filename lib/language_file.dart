import 'package:areetest/riverpodcontroller/languagecontroller.dart';
import 'package:areetest/utils/colors.dart';
import 'package:areetest/utils/globalutils.dart';
import 'package:areetest/utils/globalwidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageFile extends ConsumerWidget{


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modelList = ref.watch(LanguageController.provider);
  return  Container(

margin: EdgeInsets.only(left: 05,right: 05),
    child: Column(children: [
      SizedBox(height: 20,),
      Container(height: 03,width: screenWidth(context)/10,color: Colors.white,),
      SizedBox(height: 30,),
      Text("Edit Language",style: TextStyle(fontFamily: 'AcuminPro',color: textTitleColor,fontWeight: FontWeight.w700,fontSize: 20),),
      SizedBox(height: 15,),
      Text("Select the languages VoicePods to be in",style: TextStyle(fontFamily: 'AcuminPro',color: textTitleColor,fontWeight: FontWeight.w400,fontSize: 14),),
      SizedBox(height: 15,),
    GridView.builder(shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // number of items per row
        crossAxisCount: 3,
        childAspectRatio: screenHeight(context)/(screenWidth(context)+100),
        crossAxisSpacing: 03,mainAxisSpacing: 05
        // vertical spacing between the items

      ),
      // number of items in your list
      itemCount: modelList.length, itemBuilder: (BuildContext context, int index) {
        return languageListITemView(isSelected: modelList[index].isSelected??false,title: modelList[index].title,subtitle: modelList[index].subTitle,ontap:
            (){
          ref.read(LanguageController.provider.notifier).updateLanguage(modelList[index].id,modelList[index]);
        });
      },
    ),],));
  }
}