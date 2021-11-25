// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:confirmeiapp/pages/dashboard/request_page.dart';
import 'package:confirmeiapp/pages/dashboard/requests_item.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 180,
            child: Image.asset('assets/img/logo_appbar.png'),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width <= 500
                ? MediaQuery.of(context).size.width
                : 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width <= 500
                        ? MediaQuery.of(context).size.width
                        : 500,
                    child: Card(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Consultas',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Atenção! Você tem XX consultas pendente de confirmação.',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            height: 20,
                          ),
                          Container(
                            height: 0.35,
                            color: Colors.black,
                          ),
                          RequestItem(
                            txtConsulta: 'Consulta - 15/05/2022 as 15:20',
                            onClick: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RequestPage(),
                              ),
                            ),
                          ),
                          RequestItem(
                            txtConsulta: 'Consulta - 13/02/2022 às 15:20',
                            onClick: () => {},
                          ),
                          RequestItem(
                            txtConsulta: 'Consulta - 05/11/2021 às 15:20',
                            onClick: () => {},
                          ),
                          RequestItem(
                            txtConsulta: 'Consulta - 18/10/2018 às 15:20',
                            onClick: () => {},
                            color: Colors.yellow,
                          ),
                          RequestItem(
                            txtConsulta: 'Consulta - 22/09/2017 às 15:20',
                            onClick: () => {},
                            color: Colors.green,
                          ),
                          RequestItem(
                            txtConsulta: 'Consulta - 13/11/2016 às 15:20',
                            onClick: () => {},
                            color: Colors.green,
                          ),
                          RequestItem(
                            txtConsulta: 'Consulta - 14/11/2015 às 15:20',
                            onClick: () => {},
                            color: Colors.yellow,
                          ),
                          RequestItem(
                            txtConsulta: 'Consulta - 22/09/2017 às 15:20',
                            onClick: () => {},
                            color: Colors.green,
                          ),
                          RequestItem(
                            txtConsulta: 'Consulta - 13/11/2016 às 15:20',
                            onClick: () => {},
                            color: Colors.green,
                          ),
                          RequestItem(
                            txtConsulta: 'Consulta - 14/11/2015 às 15:20',
                            onClick: () => {},
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
