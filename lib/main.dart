import 'package:flutter/material.dart';

void main()=> runApp(const MaterialApp(
  title: "TODO APP",
  home: TODOAPP(),
));

class TODOAPP extends StatefulWidget {
  const TODOAPP({super.key});

  @override
  State<TODOAPP> createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
// ignore: prefer_typing_uninitialized_variables
late String  value;
  var listTODO = [''];
  addTODO(String item){
    setState(() {
      listTODO.add(item);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TODO APP"),
        centerTitle: true,
      ),
     floatingActionButton: FloatingActionButton(
      onPressed: addTODO(value),
      child: const Icon(Icons.add),
     ),
     body: ListView.builder(
      itemBuilder: (context, index){
      return index ==0? Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          onChanged: (val){
            setState(() {
              value= val;
            });
          }
        ),
      ): ListTile(
        leading: const Icon(Icons.work),
        title: Text(listTODO[index],style: const TextStyle(fontWeight: FontWeight.bold)),
      );
     }),


      // body: ListView(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: TextFormField(),
      //     ),
      //     const ListTile(
      //       title: Text("welcome"),
      //       leading: Icon(Icons.info),
      //     ),
      //     const ListTile(
      //       title: Text("Hello"),
      //       leading: Icon(Icons.info),
      //     ),

      //     const ListTile(
      //       title: Text("Hi"),
      //       leading: Icon(Icons.info),
      //     ),




      //   ],
      // )
    );
  }
}
 



