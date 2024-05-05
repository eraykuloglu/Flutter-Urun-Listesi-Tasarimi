// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:urunler_app/data/entity/urunler.dart';

class DetaySayfa extends StatefulWidget { //widget buraya erişmemizi sağlıyor
  
  Urunler urun;
  DetaySayfa({required this.urun});
  
  
  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.urun.ad)),
      body: Center(
        child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
          Image.asset("resimler/${widget.urun.resim}",height: 300,width: 300,),
          Text("${widget.urun.fiyat} ₺",style: const TextStyle(fontSize: 50),),
         ],
        ),
      ),
    );
  }
}