import 'package:caviapp/screens/splash/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'providers/selected_provider.dart';
import 'service/firebase_auth_methods.dart';
import 'app_router.dart';
import 'providers/theme_provider.dart';
import 'resources/utils/const.dart';
import 'screens/login/login_screen.dart';
import 'screens/main_controller.dart';
import 'screens/main_screen.dart';
import 'service/flight_provider.dart';

// import 'package:flutter_login_facebook/flutter_login_facebook.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // if (kIsWeb) {
  //   FacebookAuth.i.webInitialize(
  //     appId: "1129634001214960", // Replace with your app id
  //     cookie: true,
  //     xfbml: true,
  //     version: "v12.0",
  //   );
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAuthMethods>(
          create: (_) => FirebaseAuthMethods(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<FirebaseAuthMethods>().authState,
          initialData: null,
        ),
        ChangeNotifierProvider<MainController>(
          create: (_) => MainController(),
        ),
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
        ChangeNotifierProvider<FlightProvider>(create: (_) => FlightProvider()),
        ChangeNotifierProvider(create: (context) => SelectedStep()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return MaterialApp(
            title: 'Cavi App Main',
            debugShowCheckedModeBanner: false,
            theme: themeProvider.isDarkMode
                ? Constants.darkTheme
                : Constants.lightTheme,
            // home: const AuthWrapper();
            home: FutureBuilder<bool>(
              future: Future.delayed(const Duration(seconds: 3),
                  () => true), // Giả lập quá trình khởi tạo
              builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Hiển thị SplashScreen trong quá trình khởi tạo
                  return const SplashScreen();
                } else {
                  // Quá trình khởi tạo hoàn tất, hiển thị AuthWrapper
                  return const AuthWrapper();
                }
              },
            ),
            onGenerateRoute: AppRouter.generateRoute,
          );
        },
      ),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return const MainScreen();
    }
    return const LoginScreen();
    // return SplashScreen();
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Firebase Auth Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const LoginScreen(),
//       routes: {
//         EmailPasswordSignup.routeName: (context) => const EmailPasswordSignup(),
//         EmailPasswordLogin.routeName: (context) => const EmailPasswordLogin(),
//         PhoneScreen.routeName: (context) => const PhoneScreen(),
//       },
//     );
//   }
// }
