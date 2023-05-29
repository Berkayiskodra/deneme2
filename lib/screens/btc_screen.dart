import 'package:flutter/material.dart';
import 'package:crypto_market/crypto_market.dart';
import 'package:crypto_market/Crypto_Market/Model/coin_model.dart';


class BtcScreen extends StatefulWidget {
  const BtcScreen({super.key});
  

  @override
  State<BtcScreen> createState() => _BtcScreenState();
}

class _BtcScreenState extends State<BtcScreen> {
  List<Coin> coinsList = [
  Coin(
    id: '1',
    image: 'https://s2.coinmarketcap.com/static/img/coins/64x64/1.png',
    name: 'Bitcoin',
    shortName: 'BTC',
    price: '123456',
    lastPrice: '123456',
    percentage: '-0.5',
    symbol: 'BTCUSDT',
    pairWith: 'USDT',
    highDay: '567',
    lowDay: '12',
    decimalCurrency: 4,
    ),
  ];
  
  List<String> currencyList = [
  'USDT',
  'INR',
  'BNB',
];

  List<String> tickerList = [
  "btcusdt@ticker",
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BTC/USDT'),
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 242, 134, 30),
      ),
      body: Container(
        child: CandleChart(
          coinData: coinsList.elementAt(0),
          inrRate: 77.0,
          intervalSelectedTextColor: Colors.red,
          intervalTextSize: 20,
          intervalUnselectedTextColor: Colors.black,
        ),
      ),
    );
  }
}