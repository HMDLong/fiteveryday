import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login"),
              const SizedBox(height: 6),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(width: 0.5),
                  ),
                  label: Text("Username"),
                  labelStyle: TextStyle(fontSize: 12),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(height: 18),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(width: 0.5),
                  ),
                  label: Text("Password"),
                  labelStyle: TextStyle(fontSize: 12),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(height: 36),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onLogin,
                  child: Text("Đăng nhập"),
                ),
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onLogin,
                  child: Text("Đăng nhập với Google"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onLogin() async {
    context.go("/home");
  }
}
