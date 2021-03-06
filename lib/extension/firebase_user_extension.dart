part of 'extensions.dart';

extension FirebaseUserExtension on auth.User {
  User convertToUser(
          {String name,
          List<String> selectedGenres,
          String SelectedLanguage,
          int balance}) =>
      User(this.uid, this.email,
          name: name,
          balance: balance,
          selectedGenres: selectedGenres,
          selectedLanguage: SelectedLanguage);
}
