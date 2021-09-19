import 'package:flutter/material.dart';
import 'qoute.dart';
void main() {
  runApp(
    KuList()
    );
}
class KuList extends StatefulWidget {
  const KuList({ Key? key }) : super(key: key);

  @override
  _KuListState createState() => _KuListState();
}

class _KuListState extends State<KuList> {
 List<Qoute>qoutes=
 [
   Qoute(author:"ini siapa",text:"ini teks"),
     Qoute(author:"ini siapa",text:"ini teks"),
        Qoute(author:"ini siapa",text:"ini teks"),
 ];
 Widget idTemplate(qoute)
 {
   return Card
   (
     margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
     
     child: Padding(
       padding: const EdgeInsets.all(18.0),
       
       child: Column
       (
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>
         [
           Text(
             qoute.text,
             style: TextStyle
             (
               fontSize: 18,
               color:Colors.grey[200],
             ),
             ),
             SizedBox
             (
               height: 6,
             ),
             Text(
               qoute.author,
               style: TextStyle
               (
                 backgroundColor: Colors.amber,
                 color: Colors.grey[300],
               ),
               ),
         ],
       ),
     ) ,
   );
 }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.grey[200],
       appBar: AppBar
       (  title: Text("ini qoute list"),
       centerTitle: true,
       backgroundColor: Colors.redAccent,
        ),
        body: Column
        (
            children: qoutes.map((qoute) => idTemplate(qoute)).toList(),
        ),
        ),
    );
  }
}
