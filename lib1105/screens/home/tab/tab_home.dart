import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/flight.dart';
import '../../../providers/api_provider.dart';
import '../components/recommended_item.dart';

class TabHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ApiProvider>(
      builder: (context, apiProvider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('CaVi App Home'),
          ),
          body: FutureBuilder<List<Flight>>(
            future: apiProvider.getFlights(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              } else {
                final flights = snapshot.data;
                if (flights == null || flights.isEmpty) {
                  return Center(
                    child: Text('No flights available'),
                  );
                } else {
//
                  return Stack(
                    children: [
                      // Positioned(
                      //   bottom: 0,
                      //   left: 0,
                      //   right: 0,
                      //   top: 200,
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       color: Colors.grey[100],
                      //       borderRadius: BorderRadius.only(
                      //         topRight: Radius.circular(36),
                      //         topLeft: Radius.circular(36),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Positioned(
                          top: 48,
                          left: 16,
                          right: 16,
                          bottom: 48,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Itneraries",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.settings),
                                    color: Colors.red,
                                  )
                                ],
                              ),
                              Container(
                                height: 58,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: Center(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Search",
                                        hintStyle: TextStyle(fontSize: 24),
                                        icon: Icon(Icons.search),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              RecommendedItem(flights: flights)
                            ],
                          )),
                      Positioned(
                          left: 8,
                          right: 8,
                          bottom: 8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.home_outlined),
                                color: Colors.grey,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.list_alt_outlined),
                                color: Colors.grey,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.location_on_outlined),
                                color: Colors.grey,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.person_outline),
                                color: Colors.grey,
                              ),
                            ],
                          ))
                    ],
                  );
                }
              }
            },
          ),
        );
      },
    );
  }
}
