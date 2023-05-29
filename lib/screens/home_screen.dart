// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var data = [
    {'icon':'assets/images/yemek.png','title':'Food','subtitle':'2023-02-27','amount':r'$25'},
    {'icon':'assets/images/fatura.png','title':'Bill','subtitle':'2023-01-03','amount':r'$124'},
    {'icon':'assets/images/sepet.png','title':'Shopping','subtitle':'2022-12-31','amount':r'$40'},
    {'icon':'assets/images/yemek.png','title':'Food','subtitle':'2022-12-24','amount':r'$12'},
    {'icon':'assets/images/yemek.png','title':'Food','subtitle':'2022-12-23','amount':r'$7'},
    {'icon':'assets/images/fatura.png','title':'Bill','subtitle':'2022-11-03','amount':r'$90'}
  ];
  @override
  Widget build(BuildContext context) {
    return initWidget();
}


initWidget() {
  return Scaffold(
    body: 
      
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
            width: double.infinity,
            height: 230,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              color: Color(0xffF5591F),
              gradient: LinearGradient(
                colors: [(new Color(0xffF5591F)), new Color(0xffF2861E)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
          ),
            child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top :90,),
                      child: Column(
                        children: [
                          Text(
                            "Total Balance",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                          ),
                          SizedBox(
                            height: 2
                            ),
                          Text(
                            r"$1.430",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                             Padding(
                               padding: const EdgeInsets.only(top:10 ,left: 15,),
                               child: Text(
                                "Last Expenses",
                                  style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                    ),
                                  ),
                             ),
                              Padding(
                                padding: const EdgeInsets.only(top:20, right: 15),
                                child: Text(
                                  "Wiew All",
                                  style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                       ),
                       ),
                              ),
                      ],
                    ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: ((context, index) => ListTile(
                      leading: CircleAvatar(
                      child: Image.asset(data[index]['icon'].toString()),
                      backgroundColor: Colors.white,
                  ),
                  title: Text(
                    data[index]['title'].toString(),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    data[index]['subtitle'].toString(),
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(
                    data[index]['amount'].toString(),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                 ),
                ),
              )),
            ),
          ],
        ),
      ),
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
              context.push('/btc');
            },
            color: Colors.white,
            icon: Icon(
              Icons.calendar_month,
              size: 35
              ),
          ),
          IconButton(
            onPressed: () {
              context.pop('/login');
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
