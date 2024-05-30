import 'package:flutter/material.dart';
import 'package:aime1/home.dart';

class Anonimo1 extends StatelessWidget {
  final String parametro;

  Anonimo1(this.parametro);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ao usar a forma anônima você não poderá salvar sua consulta nem seu resultado e toda a consulta com a IA será perdida após seu término, deseja continuar?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Sim'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          proxT(context, Home());
                        },
                        child: Text('Não'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void proxT(ctx, page) {
    Navigator.push(
      ctx,
      MaterialPageRoute(builder: (BuildContext context) {
        return page;
      }),
    );
  }
}
