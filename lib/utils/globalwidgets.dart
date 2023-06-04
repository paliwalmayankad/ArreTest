import 'package:areetest/utils/globalutils.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

commonLinearTap(String? title, IconData? icon ,{VoidCallback? ontap}){
  return
    InkWell(
        onTap: (){
          ontap?.call();
        },
        child:
    Container(

    decoration: BoxDecoration(borderRadius: BorderRadius.circular(05.0), color: tapBGColor,),
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 12),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
        Row(children: [
          SizedBox.fromSize(
            size: Size(20, 20), // button width and height
            child: ClipOval(
              child: Material(
                color: primaryColor, // button color
                child:   Icon(icon,size: 14,color: Colors.white,),
              ),
            ),
          ),
          SizedBox(width: 10,),
          Text(title??"",style:TextStyle(fontFamily: 'AcuminPro', color: textTitleColor,fontWeight: FontWeight.w700,fontSize: 14),),
        ],),


      Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,)
      
    ],),
    
  ));
}
commonLinearTextTap(String? title){
  return Container(


    margin: EdgeInsets.only(top: 00),
    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 12),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
      Text(title??"",style: TextStyle(fontFamily: 'AcuminPro',color: textTitleColor,fontWeight: FontWeight.w400,fontSize: 14),),


      Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,)

    ],),

  );
}
commonLinearSwitchTap(String? title, bool value,VoidCallback ontap ){
  return Container(


    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 12),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
      Text(title??"",style: TextStyle(fontFamily: 'AcuminPro',color: textTitleColor,fontWeight: FontWeight.w400,fontSize: 14),),


      Switch(value: value, onChanged: (value){
        ontap.call();
        },)

    ],),

  );
}

languageListITemView({required bool isSelected,String? title,String? subtitle ,VoidCallback? ontap }){
  return Container(

      child:
    InkWell(
        onTap: (){
          ontap?.call();
        },
        child:  Stack(children: [

        Container(

          decoration: BoxDecoration(borderRadius: BorderRadius.circular(05.0), color: tapBGColor,border: Border.all(color: isSelected?orangePrimaryColor:primaryColor,width: 0.5)),
          margin: EdgeInsets.only(top: 10,right: 10),

          child:



         Align(alignment: Alignment.center,child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,children: [
         Text(title??"",style: TextStyle(fontFamily: 'AcuminPro',color: isSelected?orangePrimaryColor:primaryColor,fontWeight: FontWeight.w400,fontSize: 12),),
         SizedBox(height: 3,),
         Text(subtitle??"",style: TextStyle(fontFamily: 'AcuminPro',color: isSelected?orangePrimaryColor:primaryColor,fontWeight: FontWeight.w400,fontSize: 12),),

       ],)),
        ),

         isSelected? Positioned(
            right: 5,
            top: 5,
            child:CircleAvatar(
            radius: 10,
            backgroundColor: tapBGColor,
  child:Icon(
              Icons.task_alt_outlined,
              color: orangePrimaryColor,size: 20,
            )),
          ):SizedBox()],

        )));
}

customAppBar(BuildContext context){
 return Container(alignment: Alignment.center,
    height: screenHeight(context)/14,
    margin: EdgeInsets.only(top: statusBarHeight(context)),
    child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: textTitleColor,size: 18,)),
      SizedBox(width: 00,),
      Text('My Account',style: TextStyle(fontFamily: 'AcuminPro',color: textTitleColor,fontWeight: FontWeight.w700,fontSize: 18),),

    ],),

  );
}