import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const SelectDatePage());
}

class SelectDatePage extends StatefulWidget {
  const SelectDatePage({Key? key}) : super(key: key);

  @override
  _SelectDatePageState createState() => _SelectDatePageState();
}

class _SelectDatePageState extends State<SelectDatePage> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Marque seu horário!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black, // Cor do texto preta
              fontFamily: 'go3v2',
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
          color: Color.fromARGB(
              255, 234, 229, 178), // Cor de fundo para toda a tela
          child: SingleChildScrollView(
            child: content(),
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20), // Espaçamento acima dos botões
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Selecione barbeiro',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black, // Cor do texto preta
                  fontFamily: 'go3v2',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
            height: 20), // Espaçamento entre o título e os botões de barbeiro
        _buildProfessionalButtons(),
        const SizedBox(
            height:
                20), // Espaçamento entre os botões de barbeiro e o texto "Selecione data"
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Selecione data',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Cor do texto preta
                fontFamily: 'go3v2',
              ),
            ),
          ),
        ),
        const SizedBox(
            height:
                10), // Espaçamento entre o texto "Selecione data" e o calendário
        _buildCalendar(),
        const SizedBox(
            height:
                10), // Espaçamento entre o calendário e o texto "Selecione horário"
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Selecione horário',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black, // Cor do texto preta
                fontFamily: 'go3v2',
              ),
            ),
          ),
        ),
        const SizedBox(
            height:
                10), // Espaçamento entre o texto "Selecione horário" e os botões de horário
        _buildTimeButtons(),
        const SizedBox(height: 20), // Espaçamento abaixo dos botões de horários
      ],
    );
  }

  Widget _buildProfessionalButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildProfessionalButton('Barbeiro 1', 'imagem6.png'),
              _buildProfessionalButton('Barbeiro 2', 'imagem6.png'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildProfessionalButton('Barbeiro 3', 'imagem6.png'),
              _buildProfessionalButton('Barbeiro 4', 'imagem6.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfessionalButton(String name, String imagePath) {
    return ElevatedButton(
      onPressed: () {
        // Lógica para lidar com o clique no botão do profissional
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: const BorderSide(color: Colors.black), // Borda preta
        ),
        backgroundColor:
            Colors.black.withOpacity(0.75), // Cor de fundo preta com opacidade
        textStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.white, // Cor do texto branca
        ),
      ),
      child: Row(
        children: [
          Image.asset('assets/$imagePath', width: 30, height: 30),
          const SizedBox(width: 10),
          Text(name),
        ],
      ),
    );
  }

  Widget _buildCalendar() {
    return Container(
      child: TableCalendar(
        locale: "en_US",
        rowHeight: 43,
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
        ),
        availableGestures: AvailableGestures.all,
        selectedDayPredicate: (day) => isSameDay(day, today),
        focusedDay: today,
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        onDaySelected: _onDaySelected,
      ),
    );
  }

  Widget _buildTimeButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTimeButton('8:00'),
              _buildTimeButton('8:30'),
              _buildTimeButton('9:00'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTimeButton('9:30'),
              _buildTimeButton('10:00'),
              _buildTimeButton('10:30'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTimeButton('11:00'),
              _buildTimeButton('11:30'),
              _buildTimeButton('13:30'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTimeButton('14:00'),
              _buildTimeButton('14:30'),
              _buildTimeButton('15:00'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTimeButton('15:30'),
              _buildTimeButton('16:00'),
              _buildTimeButton('16:30'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTimeButton('17:30'),
              _buildTimeButton('18:00'),
              _buildTimeButton('18:30'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimeButton(String time) {
    return ElevatedButton(
      onPressed: () {
        // Lógica para lidar com o clique no botão
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(color: Colors.black), // Borda preta
        ),
        backgroundColor:
            Colors.black.withOpacity(0.75), // Cor de fundo preta com opacidade
        textStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.white, // Cor do texto branca
        ),
      ),
      child: Text(time),
    );
  }
}
