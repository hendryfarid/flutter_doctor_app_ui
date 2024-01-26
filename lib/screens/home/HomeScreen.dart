import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_doctor_app_ui/screens/home/widget/item_category.dart';
import 'package:flutter_doctor_app_ui/screens/home/widget/item_doctor.dart';
import 'package:flutter_svg/flutter_svg.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset('assets/svg/menu.svg')
          ),
          scrolledUnderElevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.JPG'),
              ),
            )
          ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const SizedBox(height: 30,),
          Text('Mencari dokter yang \ntepat', style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold
          ),),
          const SizedBox( height: 20, ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primary.withOpacity(.15)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukan isi',
                    border: InputBorder.none
                  ),
                ),
              ),
              Positioned(
                top: 0, right: 0, bottom: 0,
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).colorScheme.primary
                  ),
                  child: const Icon(CupertinoIcons.search, color: Colors.white,),
                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Kategori', style: Theme.of(context).textTheme.titleLarge,),
          ),
          SizedBox(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ItemCategory(title: 'Jantung', icon: Icons.heart_broken, color: Colors.indigo),
                ItemCategory(title: 'Mata', icon: Icons.visibility, color: Colors.teal),
                ItemCategory(title: 'Spesialis Kulit', icon: Icons.back_hand, color: Colors.brown)
              ],
            ),
          ),
          const SizedBox(height: 20,),
          ListTile(
            title: Text('Dokter teratas', style: Theme.of(context).textTheme.titleLarge,),
          ),
          const Column(
            children: [
              ItemDoctor(title: 'Dr Joko', subtitle: 'Spesialis mata', image: 'assets/images/doctor1.png', color: Colors.blue),
              ItemDoctor(title: 'Dr Tety', subtitle: 'Spesialis Jantung', image: 'assets/images/doctor2.png', color: Colors.blue),
              ItemDoctor(title: 'Dr waseso', subtitle: 'Spesialis Syaraf', image: 'assets/images/doctor3.png', color: Colors.blue),
            ],
          )
        ],
      ),
    );
  }
}