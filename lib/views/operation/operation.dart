import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timelines/timelines.dart';

import '../../utils/datetime_format.dart';
import '../../widgets/buttons.dart';

import '../../models/operation/operation.dart';
import '../../widgets/display.text.dart';

class OperationView extends StatelessWidget {
  final Operation operation;
  final bool isSameAccount;
  const OperationView({
    Key? key,
    required this.operation,
    required this.isSameAccount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> details = [
      if (operation is TransactionOperation)
        OperationDetailCard(
          keyText: 'Amount Transacted',
          value: '${operation.amount} mutez',
        ),
      InkWell(
        onTap: () {
          Clipboard.setData(ClipboardData(text: operation.sender.address));
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Address copied to clipboard!'),
              duration: const Duration(seconds: 2),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
        },
        child: OperationDetailCard(
          keyText: isSameAccount ? 'Sent to' : 'From',
          value: isSameAccount
              ? operation.target?.address ?? ''
              : operation.sender.address,
        ),
      ),
      OperationDetailCard(
        keyText: 'Tx Hash',
        value: operation.hash,
        valueFontSize: 12,
      ),
      OperationDetailCard(
        keyText: 'Block Hash',
        value: operation.block,
        valueFontSize: 12,
      ),
      OperationDetailCard(
        keyText: 'Gas Used',
        value: operation.gasUsed.toString(),
      ),
      OperationDetailCard(
        keyText: 'Gas Limit',
        value: operation.gasLimit.toString(),
      ),
      OperationDetailCard(
        keyText: 'Baker Fee',
        value: operation.bakerFee.toString(),
      ),
      OperationDetailCard(
        keyText: 'Timestamp',
        value: formatDateTime(operation.timestamp),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Details'),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        leading: const SizedBox.expand(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Stack(
          children: [
            Timeline.tileBuilder(
              theme: TimelineThemeData(
                nodePosition: 0,
                connectorTheme: const ConnectorThemeData(
                  thickness: 2.5,
                  color: Colors.grey,
                ),
                indicatorTheme:
                    const IndicatorThemeData(color: Colors.green, size: 25),
              ),
              builder: TimelineTileBuilder.connectedFromStyle(
                connectionDirection: ConnectionDirection.before,
                connectorStyleBuilder: (context, index) =>
                    ConnectorStyle.solidLine,
                lastConnectorStyle: ConnectorStyle.transparent,
                indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                itemCount: details.length,
                contentsBuilder: (context, index) => details[index],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedDisplayTextButton(
                  text: 'Go Back',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OperationDetailCard extends StatelessWidget {
  final String keyText;
  final String value;
  final double? keyTextFontSize;
  final FontStyle? keyTextFontStyle;
  final FontWeight? keyTextFontWeight;
  final double? valueFontSize;
  final FontWeight? valueFontWeight;
  final Color? keyTextColor;

  const OperationDetailCard({
    Key? key,
    required this.keyText,
    required this.value,
    this.keyTextFontSize = 16,
    this.keyTextFontStyle = FontStyle.italic,
    this.keyTextFontWeight = FontWeight.w700,
    this.valueFontSize = 14,
    this.valueFontWeight = FontWeight.w600,
    this.keyTextColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              DisplayText(
                text: keyText,
                color: keyTextColor,
                fontSize: keyTextFontSize,
                fontWeight: keyTextFontWeight,
                fontStyle: keyTextFontStyle,
              ),
              DisplayText(
                text: value,
                fontSize: valueFontSize,
                fontWeight: valueFontWeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
