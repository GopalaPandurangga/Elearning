import 'package:flutter/material.dart';

import '../../core.dart';
import '../../favorite/view/favorite_view.dart';
import '../../order/view/order_view.dart';
import '../controller/main_navigation_controller.dart';


class MainNavigationView extends StatefulWidget {
  MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return Container(
      child: DefaultTabController(
        length: 4,
        initialIndex: controller.selectedIndex,
        child: Scaffold(
          body: IndexedStack(
            index: controller.selectedIndex,
            children: [
              DashboardView(),
              OrderView(),
              FavoriteView(),
              ProfileView(),
            ],
          ),
          bottomNavigationBar: ClipRRect(
            // Wrap with ClipRRect
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(68.0), // Top left corner rounded
              topRight: Radius.circular(68.0), // Top right corner rounded
            ),
            child: BottomNavigationBar(
              currentIndex: controller.selectedIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (newIndex) => controller.updateIndex(newIndex),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_max_outlined),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle_outline),
                  label: "Message",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                  ),
                  label: "User",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
