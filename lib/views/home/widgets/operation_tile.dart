import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import '../../../models/account/account.dart';
import '../../operation/operation.dart';

import '../../../models/operation/operation.dart';
import '../../../utils/datetime_format.dart';
import '../../../widgets/display.text.dart';

class OperationTile extends StatelessWidget {
  final Operation operation;
  final UserAccountLocal? user;
  const OperationTile({
    Key? key,
    required this.operation,
    required this.user,
  }) : super(key: key);

  bool get isSameAccount => operation.sender.address == user?.address;
  bool get isRevealOpration => operation.target == null;

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
            isSameAccount: isSameAccount,
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
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DisplayText(
                  text: isRevealOpration
                      ? 'Reveal'
                      : '${isSameAccount ? '-' : '+'}  ${operation.amount} mutez',
                  fontWeight: FontWeight.w600,
                  color: isSameAccount ? Colors.red[400] : Colors.green[400],
                ),
                DisplayText(
                  text: '${operation.status}',
                  fontWeight: FontWeight.w600,
                  fontSize: 11,
                  color: operation.status == 'applied'
                      ? Colors.green[400]
                      : Colors.amber[400],
                ),
              ],
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                DisplayText(
                  text: operation.target?.address != null
                      ? isSameAccount
                          ? 'To ${operation.target?.address}'
                          : 'From ${operation.sender.address}'
                      : 'Reveal Operation',
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
