import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/flight.dart';
import '../../../resources/widgets/others/ticket_separator.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({
    Key? key,
    required this.flights,
  }) : super(key: key);

  final List<Flight>? flights;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: flights?.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final flight = flights![index];
              return GestureDetector(
                onTap: () {},
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          flight.flightCode ?? "UNKNOWN",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                DateFormat('dd-MM-yyyy')
                                        .format(flight.departureDate) ??
                                    "UNKNOWN",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Text(
                                DateFormat('dd-MM-yyyy')
                                        .format(flight.arrivalDate) ??
                                    "UNKNOWN",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                flight.departureAirport ?? "UNKNOWN",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Stack(
                                  children: const [
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      top: 0,
                                      left: 0,
                                      child: TicketSeparator(
                                        height: 2,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    AnimatedPositioned(
                                        right: 0,
                                        bottom: 0,
                                        top: 0,
                                        left: 0,
                                        duration: Duration(milliseconds: 150),
                                        child: RotatedBox(
                                            quarterTurns: 1,
                                            child: Icon(
                                              Icons.flight,
                                              color: Colors.red,
                                            ))),
                                    Positioned(
                                        left: 0,
                                        bottom: 0,
                                        top: 0,
                                        child: CircleAvatar(
                                          radius: 4,
                                          backgroundColor: Colors.black,
                                        )),
                                    Positioned(
                                        right: 0,
                                        bottom: 0,
                                        top: 0,
                                        child: CircleAvatar(
                                          radius: 4,
                                          backgroundColor: Colors.red,
                                        )),
                                  ],
                                ),
                              )),
                              Text(
                                flight.arrivalAirport ?? "UNKNOWN",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              flight.departureTime ?? "UNKNOWN",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "total time" ?? "UNKNOWN",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              flight.arrivalTime ?? "UNKNOWN",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
