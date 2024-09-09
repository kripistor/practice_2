import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(
                padding: EdgeInsets.only(top: 70, bottom: 130),
                child: Text(
                  "Авторизация",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 380,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Логин",
                      hintStyle: const TextStyle(
                          color: Color(0xffcecdd2), fontSize: 17),
                      fillColor: const Color(0xfff0eff4),
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 380,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Пароль",
                      hintStyle: const TextStyle(
                          color: Color(0xffcecdd2), fontSize: 17),
                      fillColor: const Color(0xfff0eff4),
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      )),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {},
                  activeColor: const Color(0xff9a9a9c),
                ),
                const Text(
                  "Запомнить меня",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff9a9a9c),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 380,
              height: 50,
              child: Text(
                "Войти",
                style: TextStyle(
                    color: Color(0xfff0eff4), backgroundColor: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
