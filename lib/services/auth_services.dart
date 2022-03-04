part of 'services.dart';

import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
 static FirebaseAuth _auth = FirebaseAuth.instanceFor;

  Static Future<SignInSignUpResult> signUp(
    String email,
    String password,
    String name,
    List<String> selectedGenres,
    String selectedLanguage) async {
  try {
    auth.UserCredential result = await _auth.createUserWithEmailAndPassword(
      email: email, password: password);

    User user = result.user.convertToUser(
      name: name,
      selectedGenres: selectedGenres,
      selectedLanguage: selectedLanguage,

    await UserServices.updateUser(user);

    return SignInSignUpResult(user: user);
  } catch (e) {
    return SignInSignUpResult(message: e.toString());fcfccfctcf g 
  }   
    }
  


}