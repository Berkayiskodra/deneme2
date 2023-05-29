import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scorpion_wallet/widgets/market_list.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({super.key});

  @override
  State<MarketScreen> createState() => _MarketsScreenState();
}

class _MarketsScreenState extends State<MarketScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 242, 134, 30),
        title: const Text("Piyasalar"),
      ),
    body: const MarketList(),
    bottomNavigationBar: BottomAppBar(
      color: Color.fromARGB(255, 242, 134, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              context.push('/home');
            },
            color: Colors.white,
            icon: Icon(
              Icons.home,
              size: 35,
              ),
          ),
          IconButton(
            onPressed: () {
              context.push('/market');
            },
            color: Colors.white,
            icon: Icon(
              Icons.candlestick_chart,
              size: 35
              ),
          ),
          IconButton(
            onPressed: () {
              context.push('/search');
            },
            color: Colors.white,
            icon: Icon(
              Icons.search,
              size: 35
              ),
          ),
          IconButton(
            onPressed: () {
              context.push('/splash');
            },
            color: Colors.white,
            icon: Icon(
              Icons.account_box,
              size: 35
              ),
          ),
          IconButton(
            onPressed: () {
              context.push('/login');
            },
            color: Colors.white,
            icon: Icon(
              Icons.logout,
              size: 35
              ),
          ),
        ],
      ),
    ),
    );
  }
}
