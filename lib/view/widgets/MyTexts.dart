import 'package:flutter/material.dart';

NormalWhiteText(a){
  return Text(a.toString(),textDirection: TextDirection.rtl,style: TextStyle( color: Colors.white,fontSize: 16,fontWeight: FontWeight.w800),);
}

NormalWhiteTextWithUnderLine(a){
  return Text(a.toString(),textDirection: TextDirection.rtl,style: TextStyle( color: Colors.white,fontSize: 18,decoration: TextDecoration.underline),);
}

NormalCustomText(a,b,c){
  return Text(a.toString(),textDirection: TextDirection.rtl,style: TextStyle( color: b,fontSize: c,fontWeight: FontWeight.w900),);
}

NormalCustomTextWithWeight(a,b,c,d){
  return Text(a.toString(),textDirection: TextDirection.rtl,style: TextStyle( color: b,fontSize: c,fontWeight: d),);
}

TowTexts(text_a,text_b){
  return Row(
    textDirection: TextDirection.rtl,
    children: [
      Text(text_a,style: TextStyle(color: Colors.black),textDirection: TextDirection.rtl,),
      Text(text_b,style: TextStyle(color: Colors.black54),textDirection: TextDirection.rtl,),
    ],
  );
}