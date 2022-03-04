part of 'models.dart';

import 'dart:html';

class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String profilePicture;
  final List<String> selectedGenres;
  final String selectedLanguage;
  final int balance;

  User(user.id, 
      this.email, 
      {this.name, 
      this.profilePicture, 
      this.balance,
      this.selectedGenres, 
      this.selectedLanguage});

      @Override 
      List<Object> get props [
        id,
        email,
        name,
        profilePicture,
        selectedLanguage,
        balance
      ]
}
