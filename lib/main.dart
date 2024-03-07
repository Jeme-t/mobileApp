import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "yMessage",
      home: Uiface(),

    );
  }
}
class Person{
  String? nom, sexe;
  int? age, taille, nMess, h;
  Person({
    this.age,
    this.taille,
    this.nom,
    this.sexe,
    this.nMess,
    this.h,
  });
}

class Uiface extends StatelessWidget {
  const Uiface({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("yMessage"),),
        backgroundColor: Color(0xff6991d0),
      ),
      body: Content(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff6f7dab),
        child: Icon(Icons.add_box_rounded),
        onPressed: (){},
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 2,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.video_collection_rounded, color: Color(0xff313f3b)), label: "", ),
          NavigationDestination(icon: Icon(Icons.camera_alt_rounded, color: Color(0xff313f3b),), label: ""),
          NavigationDestination(icon: Icon(Icons.message_rounded, color: Color(0xff313f3b),), label: ""),
          NavigationDestination(icon: Icon(Icons.video_call_rounded, color: Color(0xff313f3b),), label: ""),
          NavigationDestination(icon: Icon(Icons.contacts_rounded, color: Color(0xff313f3b),), label: ""),


        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    Person person1 = new Person(nom: "Batman",sexe: 'M', age: 30, taille: 185, nMess: 2, h:13);
    Person person2 = new Person(nom: "Zendaya",sexe: 'F', age: 23, taille: 170, nMess: 3, h:10);
    Person person3 = new Person(nom: "Tony Parker",sexe: 'M', age: 23, taille: 175, nMess: 1, h:10);
    Person person4 = new Person(nom: "Hulk",sexe: 'F', age: 30, taille: 170, nMess: 1, h:9);
    Person person5 = new Person(nom: "Elon Musk",sexe: 'M', age: 47, taille: 170, nMess: 1, h:9);
    Person person6 = new Person(nom: "Tom Sawyer",sexe: 'M', age: 18, taille: 170, nMess: 1, h:8);
    Person person7 = new Person(nom: "Bart Simpson",sexe: 'F', age: 15, taille: 160, nMess: 8, h:7);
    Person person8 = new Person(nom: "Flynn Rider",sexe: 'M', age: 26, taille: 180,  nMess: 8, h:6);
    Person person9 = new Person(nom: "Clark Kent",sexe: 'M', age: 30, taille: 190, nMess: 1, h:6);
    Person person10 = new Person(nom: "Wonder woman",sexe: 'F', age: 27, taille: 190, nMess: 2, h:6);
    Person person11 = new Person(nom: "Schrek",sexe: 'M', age: 41, taille: 210, nMess: 2, h:5);

    var person = [person1, person2, person3, person4, person5, person6, person7,
      person8,person9,person10,person11,
    ];
    return Container(

      padding: EdgeInsets.all(0),
      child: ListView(
        //scrollDirection: Axis.vertical,
        children: [
          ...person.map((e) =>
              InkWell(
                splashColor: Color(0xff6991d0),
                onTap:(){},
                child: ListTile(
                  leading: CircleAvatar(),

                  title: Text(e.nom.toString()),
                  subtitle: Text("Yo, téma-moi ça👇👇 \nMa taille : " + e.taille.toString() + "cm \nMon age: "+e.age.toString() + " ans \nSexe: "+e.sexe.toString()),
                  trailing: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xff6f7dab),
                      shape: BoxShape.circle,
                    ),
                    child: Text(e.nMess.toString()),
                  ),
                ),
              )
          ).toList(),
        ],
      ),
    );

  }
}