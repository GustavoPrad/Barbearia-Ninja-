import 'package:flutter/material.dart';
import 'select_date.dart'; // Importe a página select_date.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Barbearia Ninja!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 0, 0, 0),
            fontFamily: 'go3v2',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Color.fromARGB(255, 234, 229, 178),
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/imagem6.png',
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                    filterQuality: FilterQuality.high,
                    frameBuilder: (BuildContext context, Widget child,
                        int? frame, bool wasSynchronouslyLoaded) {
                      return Container(
                        decoration: frame == null
                            ? null
                            : BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1.0),
                              ),
                        child: child,
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Olá! usuário',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 234, 229, 178),
              padding: EdgeInsets.all(8.0), // Define o padding desejado
              child: Image.asset(
                'assets/imagem5.png',
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                frameBuilder: (BuildContext context, Widget child, int? frame,
                    bool wasSynchronouslyLoaded) {
                  return Container(
                    decoration: frame == null
                        ? null
                        : BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                          ),
                    child: child,
                  );
                },
              ),
            ),
            Container(
              color: Color.fromARGB(255, 234, 229, 178),
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                'Selecione o serviço',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'go3v2',
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 234, 229, 178),
              padding: EdgeInsets.all(8.0), // Define o padding desejado
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: [
                  Container(
                    padding: EdgeInsets.all(
                        8.0), // Define o padding para criar a borda
                    child: Image.asset(
                      'assets/imagem1.png',
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                      filterQuality: FilterQuality.high,
                      frameBuilder: (BuildContext context, Widget child,
                          int? frame, bool wasSynchronouslyLoaded) {
                        return Container(
                          decoration: frame == null
                              ? null
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 2.0),
                                ),
                          child: child,
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                        8.0), // Define o padding para criar a borda
                    child: Image.asset(
                      'assets/imagem2.png',
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                      filterQuality: FilterQuality.high,
                      frameBuilder: (BuildContext context, Widget child,
                          int? frame, bool wasSynchronouslyLoaded) {
                        return Container(
                          decoration: frame == null
                              ? null
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 2.0),
                                ),
                          child: child,
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                        8.0), // Define o padding para criar a borda
                    child: Image.asset(
                      'assets/imagem3.png',
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                      filterQuality: FilterQuality.high,
                      frameBuilder: (BuildContext context, Widget child,
                          int? frame, bool wasSynchronouslyLoaded) {
                        return Container(
                          decoration: frame == null
                              ? null
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 2.0),
                                ),
                          child: child,
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                        8.0), // Define o padding para criar a borda
                    child: Image.asset(
                      'assets/imagem4.png',
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                      filterQuality: FilterQuality.high,
                      frameBuilder: (BuildContext context, Widget child,
                          int? frame, bool wasSynchronouslyLoaded) {
                        return Container(
                          decoration: frame == null
                              ? null
                              : BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 2.0),
                                ),
                          child: child,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 234, 229, 178),
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () {
                  // Navega para a página select_date.dart
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectDatePage(),
                    ),
                  );
                },
                child: Text(
                  '. . .',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'go3v2',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
