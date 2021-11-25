import 'package:flutter/material.dart';

class RequestItem extends StatefulWidget {
  Color color;
  final String txtConsulta;
  final VoidCallback onClick;

  RequestItem(
      {this.color = Colors.red,
      required this.txtConsulta,
      required this.onClick});
  @override
  _RequestItemState createState() => _RequestItemState();
}

class _RequestItemState extends State<RequestItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: ElevatedButton(
            onPressed: widget.onClick,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFFDCDDE0)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/img/icons/medical_history.png'),
                      Container(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          widget.txtConsulta,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.circle,
                          color: widget.color,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
