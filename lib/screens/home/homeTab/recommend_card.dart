import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/flight.dart';
import '../../../resources/widgets/cards/ticket_separator.dart';

class RecommendCard extends StatelessWidget {
  const RecommendCard({
    Key? key,
    required this.flight,
  }) : super(key: key);

  final Flight flight;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              flight.flightCode ?? "UNKNOWN",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    DateFormat('dd-MM-yyyy').format(flight.departureDate) ??
                        "UNKNOWN",
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    DateFormat('dd-MM-yyyy').format(flight.arrivalDate) ??
                        "UNKNOWN",
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
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
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Stack(
                      children: [
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
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('hh:mm a').format(
                          DateFormat('HH:mm').parse(flight.departureTime)) ??
                      "UNKNOWN",
                  style: const TextStyle(fontSize: 12),
                ),
                Text(
                  flight.getTotalDurationString() ?? "UNKNOWN",
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  DateFormat('hh:mm a').format(
                          DateFormat('HH:mm').parse(flight.arrivalTime)) ??
                      "UNKNOWN",
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
