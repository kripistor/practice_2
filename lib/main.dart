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
                      fillColor: Colors.grey.withOpacity(0.2),
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
                      fillColor: Colors.grey.withOpacity(0.2),
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
                  activeColor: Colors.grey.withOpacity(0.9),
                ),
                const Text(
                  "Запомнить меня",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF9F9EA3),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0B6BFE),
                      textStyle: const TextStyle(color: Colors.white),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    'Войти',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(color: Color(0xFF357DC1)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side:
                      const BorderSide(color: Color(0xFF357DC1), width: 1),
                    ),
                  ),
                  child: const Text(
                    'Регистрация',
                    style: TextStyle(
                        color: Color(0xFF357DC1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const Text(
              'Восстановить пароль',
              style: TextStyle(color: Color(0xFF9F9EA3), fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
