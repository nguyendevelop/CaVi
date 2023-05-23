import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/flight_provider.dart';
import '../../providers/theme_provider.dart';
import '../../resources/utils/const.dart';
import 'recommend_card.dart';
import 'search_card.dart';
import '../../models/flight.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
// final user = context.read<FirebaseAuthMethods>().user;

// return Scaffold(
//   body: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       // when user signs anonymously or with phone, there is no email
//       if (!user.isAnonymous && user.phoneNumber == null) Text(user.email!),
//       if (!user.isAnonymous && user.phoneNumber == null)
//         Text(user.providerData[0].providerId),
//       // display phone number only when user's phone number is not null
//       if (user.phoneNumber != null) Text(user.phoneNumber!),
//       // uid is always available for every sign in method
//       Text(user.uid),
//       // display the button only when the user email is not verified
//       // or isnt an anonymous user
//       if (!user.emailVerified && !user.isAnonymous)
//         CustomButton(
//           onTap: () {
//             context
//                 .read<FirebaseAuthMethods>()
//                 .sendEmailVerification(context);
//           },
//           text: 'Verify Email',
//         ),
//       CustomButton(
//         onTap: () {
//           context.read<FirebaseAuthMethods>().signOut(context);
//         },
//         text: 'Sign Out',
//       ),
//       CustomButton(
//         onTap: () {
//           context.read<FirebaseAuthMethods>().deleteAccount(context);
//         },
//         text: 'Delete Account',
//       ),
//     ],
//   ),
// );

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final flightProvider = Provider.of<FlightProvider>(context);
    final flights = flightProvider.flights;

    // Kiểm tra nếu danh sách chuyến bay trống, gọi phương thức fetchFlights()
    if (flights.isEmpty) {
      flightProvider.fetchFlights();
    }

    final TextEditingController _searchControl = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        color: themeProvider.isDarkMode ? Constants.darkBG : Constants.lightBG,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SearchCard(searchControl: _searchControl),
              Expanded(
                child: ListView.builder(
                  itemCount: flights.length,
                  itemBuilder: (context, index) {
                    final flight = flights[index];
                    return RecommendCard(flight: flight);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
