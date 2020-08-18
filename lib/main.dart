import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}

//class AboutPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('About'),
//        bottom: PreferredSize(
//          preferredSize: Size.fromHeight(130.0),
//          child: Column(
//            children: <Widget>[
//              _buildUserInfo(context: context),
//              SizedBox(height: 16),
//            ],
//          ),
//        ),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'Advanced Provider Tutorials',
//              style: Theme.of(context).textTheme.headline5,
//            ),
//            SizedBox(height: 32),
//            Text(
//              'by Andrea Bizzotto',
//              style: Theme.of(context).textTheme.headline6,
//            ),
//            SizedBox(height: 32),
//            Text(
//              'codingwithflutter.com',
//              style: Theme.of(context).textTheme.headline6,
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//
//  Widget _buildUserInfo({BuildContext context}) {
//    final database = Provider.of<FirestoreService>(context, listen: false);
//    return StreamBuilder<AvatarReference>(
//      stream: database.avatarReferenceStream(),
//      builder: (context, snapshot) {
//        final flashchat = snapshot.data;
//        return prof(
//          photoUrl: avatarReference?.downloadUrl,
//          radius: 50,
//          borderColor: Colors.black54,
//          borderWidth: 2.0,
//        );
//      },
//    );
//  }
//}
