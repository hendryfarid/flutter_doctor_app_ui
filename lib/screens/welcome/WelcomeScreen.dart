import 'package:flutter/material.dart';
import 'package:flutter_doctor_app_ui/screens/home/HomeScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Text('Doctor App'),
          
      // ),
      body: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50,),
                Text('Pilih doktor yang anda inginkan', style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 10,),
                const Text(
                  'Pilihan tepat untuk mencari dokter terbaik',
                  style: TextStyle(
                    fontWeight: FontWeight.w300, height: 1.5
                ),),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white
                  ),
                  child: const Text('get Started')
                )
              ],
            ),
          ),

          Expanded(child: SvgPicture.asset('assets/svg/welcome.svg')),
        ],
      ),

    );
  }
}