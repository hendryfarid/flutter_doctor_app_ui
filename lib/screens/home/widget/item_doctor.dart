import 'package:flutter/material.dart';
import 'package:flutter_doctor_app_ui/screens/doctor/doctor_screen.dart';


class ItemDoctor extends StatelessWidget {

  final String title, subtitle, image;
  final Color color;
  const ItemDoctor({super.key, required this.title, required this.subtitle, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => const DoctorScreen()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).colorScheme.primary.withOpacity(.2),
              spreadRadius: 5,
              blurRadius: 5
            )
          ]
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Positioned(
                  left: 0, right: 0,
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 10, 
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.brown
                    ),
                  ),
                ),
                Image.asset(image, width: 60, height: 60,)
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleMedium,),
                Text(subtitle, style: const TextStyle(fontWeight: FontWeight.w300)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
