import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:cryptotraq/components/google_sign_in.dart';
// import 'package:cryptotraq/pages/sign_in_page.dart';

// Widget profilePic() {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: CircleAvatar(
//       backgroundImage: NetworkImage(
//           user.photoURL!,
//           scale: 0.5),
//       backgroundColor: Colors.transparent,
//     ),
//   );
// }

class ProfilePic extends StatefulWidget {
  const ProfilePic({ Key? key }) : super(key: key);

  @override
  _ProfilePicState createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    final User? user= FirebaseAuth.instance.currentUser;

    return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      backgroundImage: NetworkImage(
          user?.photoURL ?? 'https://images.unsplash.com/photo-1646051683275-3a6e58860f12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
          scale: 0.5),
      backgroundColor: Colors.transparent,
    ),
  );
  }
}