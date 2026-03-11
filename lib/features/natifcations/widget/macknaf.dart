import 'package:flutter/material.dart';

Widget buildNotificationItem({
  required String name,
  required String actionText,
  required String time,
  required String image,
  bool hasButtons = false, // خاصية للتحكم في ظهور الأزرار
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // الصورة الشخصية
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image), // أو NetworkImage لو من النت
        ),
        const SizedBox(width: 15),

        // محتوى الإشعار
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " $actionText"),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(color: Colors.grey[500], fontSize: 13),
                  ),
                ],
              ),

              // الأزرار (تظهر فقط لو hasButtons تساوي true)
              if (hasButtons) ...[
                const SizedBox(height: 12),
                Row(
                  children: [
                    // زر Reject
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.grey.shade300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          "Reject",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // زر Accept
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                            0xFF5669FF,
                          ), // نفس درجة الأزرق في الصورة
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          "Accept",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ],
    ),
  );
}
