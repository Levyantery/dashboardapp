import 'package:flutter/material.dart';
import 'package:dashboard_app/theme.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String count;

  InfoCard({required this.title, required this.icon, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, 
      height: 120, 
      decoration: BoxDecoration(
        border: Border.all(color: kBlackColor, width: 0.5), 
        borderRadius: BorderRadius.circular(8),
      ),
  
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Icon(icon, size: 30, color: kPrimaryColor),
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color.fromARGB(255, 255, 0, 0),
                    child: Text(count, style: const TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ],
              ),


              const SizedBox(height: 4),
              Text(
                title,
                style: const TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize:13,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
    );
  }
}
