import 'package:flutter/material.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  // ตัวแปร State และเมธอดต่างๆ จะอยู่ที่นี่
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ฟอร์มล็อกอิน')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          // เพิ่มวิดเจ็ต Form
          key: _formKey, // กำหนด key
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // ยืดปุ่มทีหลัง
            children: <Widget>[
              const Text(
                'กรุณาป้อนข้อมูลเข้าระบบ:',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20), // ตัวเว้นวรรค
              // TextFormFields จะมาที่นี่
              // ปุ่ม Submit จะมาที่นี่
            ],
          ),
        ),
      ),
    );
  }
}
