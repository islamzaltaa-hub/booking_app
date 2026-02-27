import 'package:booking_app/core/utils/images.dart';
import 'package:booking_app/core/widgets/main_login_bouttom.dart';
import 'package:flutter/material.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key});

  static String get routeName => "EventDetailsPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const EventHeader(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 45),
                      const Text(
                        "International Band\nMusic Concert",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF121433),
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildInfoRow(
                        Icons.calendar_month_rounded,
                        "14 December, 2021",
                        "Tuesday, 4:00PM - 9:00PM",
                      ),
                      _buildInfoRow(
                        Icons.location_on_rounded,
                        "Gala Convention Center",
                        "36 Guild Street London, UK",
                      ),
                      const OrganizerTile(),
                      const SizedBox(height: 20),
                      const Text(
                        "About Event",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Enjoy your favorite dish and a lovely time with your friends and family. Food from local food trucks will be available for purchase. Read More...",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 120),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: mainbotuom(
              text: "BUY TICKET \$120",
              onPressed: () {
                print("Ticket Purchased!");
              },
            ),
          ),
        ],
      ),
    );
  }

  // Helper method لإضافة الصفوف (التاريخ والمكان) لتقليل تكرار الكود
  Widget _buildInfoRow(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF5669FF).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: const Color(0xFF5669FF)),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EventHeader extends StatelessWidget {
  const EventHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 240,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.detels1),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
              const Text(
                "Event Details",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.bookmark, color: Colors.white),
              ),
            ],
          ),
        ),

        Positioned(
          bottom: -30,
          left: 40,
          right: 40,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 80,
                  height: 30,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 14,
                        backgroundImage: AssetImage(Images.images1),
                      ),
                      Positioned(
                        left: 15,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundImage: AssetImage(Images.images2),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundImage: AssetImage(Images.images3),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "+20 Going",
                  style: TextStyle(
                    color: Color(0xFF3F38DD),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5669FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Invite",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class OrganizerTile extends StatelessWidget {
  const OrganizerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          Images.images4,
          width: 45,
          height: 45,
          fit: BoxFit.cover,
        ),
      ),
      title: const Text(
        "Ashfak Sayem",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const Text("Organizer"),
      trailing: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF5669FF).withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text("Follow", style: TextStyle(color: Color(0xFF5669FF))),
      ),
    );
  }
}
