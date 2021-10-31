import 'package:animations/animations.dart';
import 'package:anthos/views/operation/operation.dart';
import 'package:flutter/material.dart';

import '../../../models/operation/operation.dart';
import '../../../utils/datetime_format.dart';
import '../../../widgets/display.text.dart';

class OperationTile extends StatelessWidget {
  final Operation operation;
  const OperationTile({
    Key? key,
    required this.operation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: OpenContainer<bool>(
        openElevation: 0,
        closedElevation: 0,
        openBuilder: (__, _) {
          return OperationView(
            operation: operation,
          );
        },
        closedBuilder: (_, __) => Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[300]!,
                width: 1,
              ),
              top: BorderSide(
                color: Colors.grey[300]!,
                width: 1,
              ),
            ),
          ),
          child: ListTile(
            title: DisplayText(
              text: '+ ${operation.amount} mutez',
              fontWeight: FontWeight.w600,
              color: Colors.green[400],
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                DisplayText(
                  text: 'From ${operation.sender.address}',
                  textOverflow: TextOverflow.ellipsis,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DisplayText(
                      text: formatTime(operation.timestamp),
                      fontSize: 14,
                      textOverflow: TextOverflow.ellipsis,
                      color: Colors.grey,
                    ),
                    DisplayText(
                      text: formatDate(operation.timestamp),
                      fontSize: 14,
                      textOverflow: TextOverflow.ellipsis,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
