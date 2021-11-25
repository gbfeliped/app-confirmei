import 'package:flutter/material.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({key}) : super(key: key);

  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes consulta'),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Consulta',
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
                                'Atenção! A consulta está pendente de confirmação.',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              height: 5,
                            ),
                            Container(
                              height: 0.35,
                              color: Colors.black,
                            ),
                            Container(
                              height: 15,
                            ),
                            TextFormField(
                              initialValue: '15/05/2022 - 15:20',
                              enabled: false,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(fontSize: 18),
                                labelText: 'Data e hora',
                              ),
                            ),
                            TextFormField(
                              initialValue: 'Clínica saúde bem',
                              enabled: false,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(fontSize: 18),
                                labelText: 'Clínica',
                              ),
                            ),
                            TextFormField(
                              initialValue: 'Dr. Marcio Barbosa',
                              enabled: false,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(fontSize: 18),
                                labelText: 'Médico',
                              ),
                            ),
                            TextFormField(
                              initialValue: 'Oftalmologista',
                              enabled: false,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(fontSize: 18),
                                labelText: 'Especialidade',
                              ),
                            ),
                            TextFormField(
                              initialValue:
                                  'Av das Americas 250, Kennedy, Contagem - MG',
                              enabled: false,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(fontSize: 18),
                                labelText: 'Endereço',
                              ),
                            ),
                            TextFormField(
                              initialValue: 'Pendente de confirmação',
                              enabled: false,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(fontSize: 18),
                                labelText: 'Status',
                              ),
                            ),
                            Container(
                              height: 50,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.red),
                                    ),
                                    child: Text('Cancelar'),
                                    onPressed: () => showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text('Cancelar consulta'),
                                        content: const Text(
                                            'Você realmente deseja cancelar a consulta?'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => {},
                                            child: const Text('Não'),
                                          ),
                                          TextButton(
                                            onPressed: () => {},
                                            child: const Text('Sim'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 30,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.blue),
                                    ),
                                    child: Text('Confirmar'),
                                    onPressed: () => showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text('Confirmar consulta'),
                                        content: const Text(
                                            'Você realmente deseja confirmar a consulta?'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => {},
                                            child: const Text('Não'),
                                          ),
                                          TextButton(
                                            onPressed: () => {},
                                            child: const Text('Sim'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
