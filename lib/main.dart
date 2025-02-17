import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      locale: const Locale('ar', 'AE'), // تعيين اللغة العربية
      supportedLocales: const [
        Locale('ar', 'AE'), // إضافة اللغة العربية
      ],
      localizationsDelegates: const [
        // إضافة المندوبين المحليين لدعم اللغة العربية
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),

          /// **اللوجو والعنوان**
          Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/img/image1.png", // تأكد من وضع الصورة في assets
                  width: 120,
                  height: 120,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),

          const SizedBox(height: 20),

          /// **كونتينر الحقول، ممتد لأسفل الشاشة بالكامل**
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(
                color: Color(0xFF059FB3), // تعديل اللون هنا
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// **حقل اسم المستخدم**
                  TextField(
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      hintText: "اسم المستخدم أو الإيميل",
                      hintStyle: const TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Color(0xFF059FB3), // نفس لون الكونتينر
                      prefixIcon: const Icon(Icons.person, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.white, width: 1), // إطار أبيض رفيع
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  /// **حقل كلمة المرور**
                  TextField(
                    textDirection: TextDirection.rtl,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "كلمة المرور",
                      hintStyle: const TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Color(0xFF059FB3), // نفس لون الكونتينر
                      prefixIcon: const Icon(Icons.lock, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.white, width: 1), // إطار أبيض رفيع
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

               
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Color(0xFF059FB3),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(
                            color: Colors.white, width: 1), // إطار أبيض
                      ),
                    ),
                    child: const Text(
                      "إنشاء حساب",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  /// **رابط نسيت كلمة المرور**
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "هل نسيت كلمة المرور؟",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),

                  /// **أيقونات تسجيل الدخول عبر جوجل وفيسبوك**
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.facebook),
                        color: Colors.white,
                      ),
                      const SizedBox(width: 30),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.google),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
