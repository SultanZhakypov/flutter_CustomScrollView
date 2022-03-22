import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/widgets/add_container.dart';
import 'package:flutter_application_4/screens/widgets/categories.dart';
import 'package:flutter_application_4/screens/widgets/circleavatar.dart';
import 'package:flutter_application_4/screens/widgets/employeeList.dart';
import 'package:flutter_application_4/screens/widgets/gridview.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        SliverAppBar(
          pinned: true,
          snap: true,
          floating: true,
          expandedHeight: 250,
          flexibleSpace:
              Image.asset('assets/images/appbarimage.jpg', fit: BoxFit.fill),
          title: const Center(
            child: Text(
              'SLIVER',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              const [
                CircleAvatarClass(),
                Categories(),
                Emplyoee(),
                AddedEmployee(),
                GridviewClass(),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
