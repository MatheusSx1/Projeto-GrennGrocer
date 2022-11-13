import 'package:flutter/material.dart';
import 'package:lojinha/src/pages/cart/cart_tab.dart';
import 'package:lojinha/src/pages/orders/orders_tab.dart';
import 'package:lojinha/src/pages/profile/profile_tab.dart';

import '../home/home_tab.dart';

class baseScreen extends StatefulWidget {
  const baseScreen({Key? key}) : super(key: key);
  @override
  State<baseScreen> createState() => _baseScreenState();
}

class _baseScreenState extends State<baseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomeTab(),
          CartTab(),
          OrdersTab(),
          profileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            // pageController.jumpToPage(index);
            pageController.animateToPage(
              index,
              duration: const Duration(microseconds: 700),
              curve: Curves.ease,
            );
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_outlined),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
