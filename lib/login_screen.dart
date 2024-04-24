import 'package:flutter/material.dart';
import 'reset_password_screen.dart';
import 'home_page.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscured = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              color: Color.fromARGB(255, 234, 229, 178),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 40.0),
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          height: 175,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/ninja.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          height: 125,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/logo.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(height: 0.0),
                        const Text(
                          'Corte como um ninja, estilo como um mestre!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'go3v2'),
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          controller: _usernameController,
                          style: const TextStyle(
                              color: Color.fromARGB(
                                  255, 0, 0, 0)), // Cor das letras ao digitar
                          decoration: InputDecoration(
                            labelText: 'Digite seu usuário',
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(
                                    255, 0, 0, 0)), // Cor do texto do label
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 0, 0, 0)
                                .withOpacity(0.3), // Opacidade do fundo
                            suffixIcon: const Icon(Icons.person,
                                color: Color.fromARGB(
                                    255, 0, 0, 0)), // Cor do ícone
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, digite seu usuário';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 15.0),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: _isObscured,
                          style: const TextStyle(
                              color: Color.fromARGB(
                                  255, 0, 0, 0)), // Cor das letras ao digitar
                          decoration: InputDecoration(
                            labelText: 'Digite sua senha',
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(
                                    255, 0, 0, 0)), // Cor do texto do label
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 0, 0, 0)
                                .withOpacity(0.3), // Opacidade do fundo
                            suffixIcon: IconButton(
                              icon: _isObscured
                                  ? const Icon(Icons.visibility_off,
                                      color: Color.fromARGB(
                                          255, 0, 0, 0)) // Cor do ícone
                                  : const Icon(Icons.visibility,
                                      color: Colors.white), // Cor do ícone
                              onPressed: () {
                                setState(() {
                                  _isObscured = !_isObscured;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Cadastre-se',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          children: [
                            Checkbox(
                              value: _isChecked,
                              onChanged: (value) {
                                setState(() {
                                  _isChecked = value!;
                                });
                              },
                              checkColor:
                                  Colors.white, // Cor do ícone do checkbox
                              fillColor:
                                  MaterialStateProperty.resolveWith((states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Color.fromARGB(255, 31, 31,
                                      31); // Cor de preenchimento do checkbox quando selecionado
                                }
                                return const Color.fromARGB(0, 255, 255,
                                    255); // Cor de preenchimento do checkbox quando não selecionado
                              }),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                side: BorderSide(
                                    color: Colors
                                        .white), // Cor da borda do checkbox
                              ),
                            ),
                            const Text('Lembre-me',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0))),
                            const Spacer(),
                            TextButton(
                              onPressed: () {
                                // Navegar para a tela de redefinição de senha
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ResetPassword()),
                                );
                              },
                              child: const Text(
                                'Esqueceu a senha?',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                              const EdgeInsets.symmetric(vertical: 10.0),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors
                                  .white, // Defina a cor do texto aqui diretamente
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
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
