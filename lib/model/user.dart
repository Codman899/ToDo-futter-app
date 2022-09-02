import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  final String name;
  final String email;

  const User({required this.name, required this.email});
}

class UserState extends StateNotifier<User?> {
  UserState() : super(null);

  Future<void> login(String email, String password) async {
    state = const User(
      name: "My Name",
      email: "My Email",
    );
  }

  Future<void> logout() async {
    state = null;
  }
}

final userProvider = StateNotifierProvider<UserState, User?>((ref) {
  return UserState();
});
