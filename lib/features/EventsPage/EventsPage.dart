import 'package:booking_app/core/widgets/main_login_bouttom.dart';
import 'package:booking_app/features/EventsPage/AllEventsPage.dart';
import 'package:flutter/material.dart';

import 'package:booking_app/core/utils/images.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});
  static const routeName = 'events';

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Events",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25),
            ),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              labelColor: Colors.blueAccent,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(text: "UPCOMING"),
                Tab(text: "PAST EVENTS"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                buildEmptyEventsView(context),

                const Center(child: Text("No Past Events")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildEmptyEventsView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const Spacer(),

          Image.asset(
            Images.emageevent,
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),

          const SizedBox(height: 20),

          const Text(
            "No Upcoming Events",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const Spacer(),

          mainbotuom(
            text: "EXPLORE EVENTS",
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => AllEventsPage()),
              );
            },
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
