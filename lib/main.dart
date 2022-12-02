import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(
      items: List<String>.generate(10000, (i) => 'Item $i'),
    ),
  );
}

class MyApp extends StatelessWidget {
   final List<String> items;

   const MyApp({super.key, required this.items});

   @override
   Widget build(BuildContext context) {
      const title = 'ListView';
      const items = <String>['第一項', '第二項', '第三項', '第四項', '第五項', '第六項', '第七項', '第八項', '第九項', '第十項', '第十一項', '第十二項'];
      const icons = <String>['assets/0.png', 'assets/1.png', 'assets/2.png', 'assets/3.png', 'assets/4.png', 'assets/5.png', 'assets/6.png', 'assets/7.png', 'assets/8.png', 'assets/9.png', 'assets/10.png', 'assets/11.png', 'assets/12.png'];

      return MaterialApp(
            title: title,
            home: Scaffold(
            appBar: AppBar(title: const Text(title),),

            body: ListView.builder(
                itemCount: items.length,
                prototypeItem: ListTile(title: Text(items.first),),
                itemBuilder: (context, index) {
                  return ListTile(
                     title: Text(items[index]),
                     //onTap: () => textWrapper.setText('點選' + items[index]),
                     leading: Container(
                        child: CircleAvatar(backgroundImage: AssetImage(icons[index],),),
                        padding: EdgeInsets.symmetric(vertical:8, horizontal:5),),
                     subtitle:Text('項目說明', style: TextStyle(fontSize: 16),),
                   //separatorBuilder: (context, index) => Divider(),
                  );
               },
            ),
         ),
      );
   }
}
