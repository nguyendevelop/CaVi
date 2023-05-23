import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      // radius: 16,
      // isShowShadows: true,
      // shadows: Shadows.shadowsUp,
      child: Row(
        children: [
          // if (data.transactionType == 'Ticket')
          //   const CardTransactionTicket()
          // else
          //   const CardTransactionTopup(),
          // horizontalSpace(Insets.sm),
          Expanded(
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Top Up",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'ticket',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'date d m y',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
