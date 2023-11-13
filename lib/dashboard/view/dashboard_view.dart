import 'package:flutter/material.dart';

import '../../core.dart';
import '../../main.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: myColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(color: myColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 32),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24.0,
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Good Morning 👋🏻",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "Michael",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.search,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            const Icon(
                              Icons.notifications_outlined,
                              size: 20.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 140,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              32.0), // Atur radius sesuai keinginan
                          topRight: Radius.circular(
                              32.0), // Atur radius sesuai keinginan
                        )),
                    child: Column(),
                  ),
                ),
                Positioned(
                  left: 32,
                  right: 32,
                  top: 280,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Your Class",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        SizedBox(
                          height: 50,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              LayoutBuilder(
                                builder: (context, constraint) {
                                  List items = [
                                    {
                                      'id': 1,
                                      'category_name': 'Design',
                                      "on_tap": () =>
                                          Get.to(const ProfileView()),
                                    },
                                    {
                                      'id': 2,
                                      'category_name': 'Ilustration',
                                      'on_tap': () =>
                                          Get.to(const ProfileView()),
                                    },
                                    {
                                      'id': 3,
                                      'category_name': 'Marketing',
                                      'on_tap': () =>
                                          Get.to(const ProfileView()),
                                    },
                                    {
                                      'id': 4,
                                      'category_name': 'Finance',
                                      'on_tap': () =>
                                          Get.to(const ProfileView()),
                                    },
                                    {
                                      'id': 5,
                                      'category_name': 'Olahraga',
                                      'on_tap': () =>
                                          Get.to(const ProfileView()),
                                    },
                                    {
                                      'id': 6,
                                      'category_name': 'Makanan',
                                      'on_tap': () =>
                                          Get.to(const ProfileView()),
                                    },
                                    {
                                      'id': 7,
                                      'category_name': 'Komputer',
                                      'on_tap': () =>
                                          Get.to(const ProfileView()),
                                    },
                                    {
                                      'id': 8,
                                      'category_name': 'Rumah Tangga',
                                      'on_tap': () =>
                                          Get.to(const ProfileView()),
                                    },
                                    {
                                      'id': 9,
                                      'category_name': 'Hobi',
                                      'on_tap': () =>
                                          Get.to(const ProfileView()),
                                    },
                                    {
                                      'id': 10,
                                      'category_name': 'Mainan',
                                      'on_tap': () =>
                                          Get.to(const ProfileView()),
                                    },
                                  ];
                                  return Wrap(
                                    children: List.generate(
                                      items.length,
                                      (index) {
                                        var item = items[index];
                                        bool selected = index == 5;
                                        return InkWell(
                                          onTap: () => item["on_tap"],
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            color: selected ? myColor : null,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Text(
                                                "${item["category_name"]}",
                                                style: const TextStyle(
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "Design Tutorials",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "90 days become",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4.0,
                                      ),
                                      Text(
                                        "UX designer",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12.0,
                                      ),
                                      Text(
                                        "Rp 200.000",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange[400],
                                            size: 16.0,
                                          ),
                                          Text(
                                            "4.8",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8.0,
                                          ),
                                          const Icon(
                                            Icons.circle,
                                            color: Colors.black,
                                            size: 4.0,
                                          ),
                                          const SizedBox(
                                            width: 2.0,
                                          ),
                                          Text(
                                            "By Gopala Pandurangga",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 90,
                                  margin: EdgeInsets.only(right: 10.0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://plus.unsplash.com/premium_photo-1663100678842-d89cb7b084ee?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTY5NjMxNjI4Ng&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    color: Colors.blue[400],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 600,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: myColor,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Populer Tutorials",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            SizedBox(
                              height: 108.0,
                              child: ListView.builder(
                                itemCount: 3,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  var item = {};
                                  bool selected = index == 0;

                                  return Card(
                                    margin: EdgeInsets.only(right: 16.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    child: SizedBox(
                                      width: 160,
                                      height: 100,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 88,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://images.unsplash.com/photo-1561070791-36c11767b26a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTY4MTMyMTIzNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(2.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 8.0,
                                                          left: 8.0,
                                                          top: 2.0),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.orange[400],
                                                        size: 12.0,
                                                      ),
                                                      Text(
                                                        "4.8",
                                                        style: TextStyle(
                                                          fontSize: 8.0,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      const Icon(
                                                        Icons.circle,
                                                        color: Colors.black,
                                                        size: 4.0,
                                                      ),
                                                      const SizedBox(
                                                        width: 2.0,
                                                      ),
                                                      Text(
                                                        "By Gopala Pandurangga",
                                                        style: TextStyle(
                                                          fontSize: 9.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 100,
                    left: 32,
                    right: 32,
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "News for you",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        "Get Training Class on the",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4.0,
                                      ),
                                      Text(
                                        "Platform.",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      Container(
                                        height: 28,
                                        width: 100,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: myColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  10.0), // Ubah nilai ini untuk mengatur sudut yang sedikit bulat
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: const Text(
                                            "Try Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://images.unsplash.com/photo-1534670007418-fbb7f6cf32c3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTY4MTMyMTg5Mw&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    color: Colors.blue[400],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
