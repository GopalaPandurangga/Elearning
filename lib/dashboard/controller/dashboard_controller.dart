import 'package:flutter/material.dart';

import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  bool isCardTapped = false;

  void _toggleTextColor() {
    setState(() {
      isCardTapped = !isCardTapped;
    });
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
