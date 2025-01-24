import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final VoidCallback onTap;  // เพิ่มพารามิเตอร์ onTap

  // เพิ่ม onTap ให้กับ constructor
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,  // กำหนด onTap ใน constructor
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10), // ใช้ SizedBox เพิ่มความห่าง
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onTap,  // เรียกใช้งาน onTap ที่ส่งมาจาก QuestionsScreen
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 58, 0, 97),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            child: Text(
              answerText,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
