import 'package:flutter/material.dart';
import 'package:practico_1/designers_list/designers_list.dart';
import 'package:practico_1/models/designer.dart';

class Designers extends StatefulWidget {
  const Designers({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DesignersState();
  }
}

class _DesignersState extends State<Designers> {
  @override
  Widget build(BuildContext context) {
    final List<Designer> registeredDesigners = [
      Designer(name: 'David Borg', title: 'Flying Wings', image: 'person2.jpg'),
      Designer(name: 'Lucy Styles', title: 'Growing Up Trouble', image: 'person4.jpg'),
      Designer(name: 'Emily Thompson', title: 'Girlhood', image: 'person1.jpg'),
      Designer(name: 'Jerry Cool West', title: 'Sculptor Diary', image: 'person7.jpg'),
      Designer(name: 'Amelia B. Clark', title: 'Dragons', image: 'person9.jpg'),
      Designer(name: 'Mary Rosier', title: 'Death Eaters', image: 'person6.jpg'),
      Designer(name: 'Daniel Gregory', title: 'Love In March', image: 'person5.jpg'),
      Designer(name: 'Edmund Wetherby', title: 'In The Sun', image: 'person8.jpg'),
      Designer(name: 'Charlotte Benson', title: 'Acid Rain', image: 'person3.jpg'),
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.purple.shade400, 
                  Colors.purple.shade700,
                ],
              ),
            ),
          ),
          foregroundColor: Colors.white,
          leading: const BackButton(),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.menu_rounded)),
          ],
          bottom: const TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 20.0),
            unselectedLabelStyle: TextStyle(fontSize: 14.0),
            tabs: [
              Tab(
                text: 'Designer',
              ),
              Tab(
                text: 'Category',
              ),
              Tab(
                text: 'Attention',
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(child: DesignersList(designers: registeredDesigners)),
          ],
        ),
      ),
    );
  }
}
