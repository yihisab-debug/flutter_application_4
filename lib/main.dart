import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();
  final TextEditingController num3 = TextEditingController();
  final TextEditingController num4 = TextEditingController();
  final TextEditingController num5 = TextEditingController();
  final TextEditingController num6 = TextEditingController();


  String resultUsdToKzt = "";
  String resultKztToUsd = "";
  String resultEurToKzt = "";
  String resultKztToEur = "";
  String resultEurToUsd = "";
  String resultUsdToEur = "";

  void usdToKzt() {
    final text = num1.text;
    if (text.isEmpty) {
      setState(() {
        resultUsdToKzt = "Введите USD";
      });
      return;
    }
    double usd = double.parse(text);
    double kzt = usd * 542;
    setState(() {
      resultUsdToKzt = "$usd USD = ${kzt.toStringAsFixed(2)} KZT";
    });
  }

  void kztToUsd() {
    final text = num2.text;
    if (text.isEmpty) {
      setState(() {
        resultKztToUsd = "Введите KZT";
      });
      return;
    }
    double kzt = double.parse(text);
    double usd = kzt / 542;
    setState(() {
      resultKztToUsd = "$kzt KZT = ${usd.toStringAsFixed(2)} USD";
    });
  }

  void eurToKzt() {
    final text = num3.text;
    if (text.isEmpty) {
      setState(() {
        resultEurToKzt = "Введите EUR";
      });
      return;
    }
    double eur = double.parse(text);
    double kzt = eur * 637;
    setState(() {
      resultEurToKzt = "$eur EUR = ${kzt.toStringAsFixed(2)} KZT";
    });
  }

  void kztToEur() {
    final text = num4.text;
    if (text.isEmpty) {
      setState(() {
        resultKztToEur = "Введите KZT";
      });
      return;
    }
    double kzt = double.parse(text);
    double eur = kzt / 637;
    setState(() {
      resultKztToEur = "$kzt KZT = ${eur.toStringAsFixed(2)} EUR";
    });
  }

    void eurToUsd() {
    final text = num5.text;
    if (text.isEmpty) {
      setState(() {
        resultEurToUsd = "Введите EUR";
      });
      return;
    }
    double eur = double.parse(text);
    double usd = eur * 0.86;
    setState(() {
      resultEurToUsd = "$eur EUR = ${usd.toStringAsFixed(2)} USD";
    });
  }

    void usdToEur() {
    final text = num6.text;
    if (text.isEmpty) {
      setState(() {
        resultUsdToEur = "Введите USD";
      });
      return;
    }
    double usd = double.parse(text);
    double eur = usd / 1.17;
    setState(() {
      resultUsdToEur = "$usd USD = ${eur.toStringAsFixed(2)} EUR";
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Конвертер валют'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              TextField(
                controller: num1,
                decoration: InputDecoration(
                  labelText: 'USD',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 179, 255, 0),
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: usdToKzt,
                child: const Text("Перевести USD → KZT"),
              ),

              const SizedBox(height: 10),

              Text(
                resultUsdToKzt,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              TextField(
                controller: num2,
                decoration: InputDecoration(
                  labelText: 'KZT',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 179, 255, 0),
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: kztToUsd,
                child: const Text("Перевести KZT → USD"),
              ),

              const SizedBox(height: 10),

              Text(
                resultKztToUsd,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              TextField(
                controller: num3,
                decoration: InputDecoration(
                  labelText: 'EUR',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 179, 255, 0),
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: eurToKzt,
                child: const Text("Перевести EUR → KZT"),
              ),

              const SizedBox(height: 10),

              Text(
                resultEurToKzt,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              TextField(
                controller: num4,
                decoration: InputDecoration(
                  labelText: 'KZT',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 179, 255, 0),
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: kztToEur,
                child: const Text("Перевести KZT → EUR"),
              ),

              const SizedBox(height: 10),

              Text(
                resultKztToEur,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              TextField(
                controller: num5,
                decoration: InputDecoration(
                  labelText: 'EUR',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 179, 255, 0),
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: eurToUsd,
                child: const Text("Перевести EUR → USD"),
              ),

              const SizedBox(height: 10),

              Text(
                resultEurToUsd,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            
              const SizedBox(height: 30),

              TextField(
                controller: num6,
                decoration: InputDecoration(
                  labelText: 'USD',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 179, 255, 0),
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: usdToEur,
                child: const Text("Перевести USD → EUR"),
              ),

              const SizedBox(height: 10),

              Text(
                resultUsdToEur,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
