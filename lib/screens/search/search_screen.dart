import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/search_provider.dart';
import '../../providers/theme_provider.dart';
import '../../resources/utils/const.dart';
import 'choose_airport.dart';
import 'choose_date.dart';
import 'ticket_confirm.dart';
import 'ticket_order.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SearchProvider>(
      create: (_) => SearchProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flight Search'),
        ),
        body: SearchSteps(),
      ),
    );
  }
}

class SearchSteps extends StatefulWidget {
  @override
  _SearchStepsState createState() => _SearchStepsState();
}

class _SearchStepsState extends State<SearchSteps> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    SearchProvider searchProvider = Provider.of<SearchProvider>(context);

    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              ChooseDate(),
              ChooseAirport(),
              TicketOrder(),
              TicketConfirm(),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                if (_currentPage > 0) {
                  _pageController.previousPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              },
              icon: Icon(Icons.arrow_back),
            ),
            IconButton(
              onPressed: () {
                if (_currentPage < 3) {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              },
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Perform ticket confirmation logic here
            // You can access the selected data from the searchProvider
          },
          child: Text('Confirm Ticket'),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
