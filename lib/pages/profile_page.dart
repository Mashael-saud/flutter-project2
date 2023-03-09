import 'package:flutter/material.dart';
import 'package:project_2/season/home_page.dart';
import 'package:project_2/setting/setting_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              final navigator = Navigator.of(context);
              navigator.push(MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  final navigator = Navigator.of(context);
                  navigator.push(MaterialPageRoute(builder: (context) => const SettingPage()));
                },
                icon: const Icon(Icons.settings, color: Colors.white))
          ],
          backgroundColor: const Color(0xfff181a28),
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'تعديل البيانات',
                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                          border: Border.fromBorderSide(BorderSide(color: Colors.white, width: 4)),
                          shape: BoxShape.circle,
                        ),
                        width: 130,
                        height: 130,
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xfff181a28),
                            border: Border.fromBorderSide(BorderSide(color: Colors.white, width: 4)),
                            shape: BoxShape.circle,
                          ),
                          width: 40,
                          height: 40,
                          child: const Icon(Icons.edit, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                buildTextField('Full name', 'Mashael Saud', false),
                buildTextField('E-mail', 'mashael@gmail', false),
                buildTextField('Password', '*******', true),
                buildTextField('Location', 'Riyadh', false),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'CANCEL',
                        style: TextStyle(color: Colors.white, fontSize: 14, letterSpacing: 2.2),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'SAVE',
                        style: TextStyle(color: Colors.white, fontSize: 14, letterSpacing: 2.2),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color(0xfff181a28));
  }

  Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 35,
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Colors.grey,
        ),
        child: TextField(
          decoration: InputDecoration(
            labelText: labelText,
            hintText: placeholder,
            hintStyle: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.only(bottom: 3),
          ),
          obscureText: isPasswordTextField,
        ),
      ),
    );
  }
}
