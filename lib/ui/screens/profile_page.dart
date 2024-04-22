import 'package:flutter/material.dart';
import 'package:plant_project/constants.dart';
import 'package:plant_project/ui/screens/widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: size.height,
          width: size.width,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              child: const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.transparent,
                backgroundImage: ExactAssetImage('assets/images/profile_1.png'),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Constants.primaryColor.withOpacity(.5),
                  width: 5.0,
                )
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width*.24,
              child: Row(
                children: [
                  Text('Team IT',style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 20,
                  ),),
                  SizedBox(
                    height: 24.0,
                    child: Image.asset('assets/images/verified.png'),
                  ),
                ],
              ),
            ),
            Text('abc@gmail.com',style: TextStyle(
              color: Constants.blackColor.withOpacity(.3)
            ),),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              height: size.height*.7,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ProfileWidget(icon: Icons.person,title: 'My Profile',),
                  ProfileWidget(icon: Icons.settings,title: 'Settings',),
                  ProfileWidget(icon: Icons.logout,title: 'Log Out',),
                ],
              ),
            )
          ],
          ),
        ),
      ),
    );
  }
}
