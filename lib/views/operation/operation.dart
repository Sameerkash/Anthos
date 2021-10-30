import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../models/operation/operation.dart';
import '../../widgets/display.text.dart';

class OperationView extends StatelessWidget {
  final Operation operation;
  const OperationView({
    Key? key,
    required this.operation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> details = [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DisplayText(
            text: '${operation.amount} mutez was received',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DisplayText(
            text: 'from ${operation.sender.address}',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DisplayText(
            text: 'with the transaction hash ${operation.hash}',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DisplayText(
            text: 'on block ${operation.block}',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DisplayText(
            text: 'with ${operation.gasUsed} gas used',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DisplayText(
            text: 'and  ${operation.gasLimit} gas limit',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      DisplayText(
        text: operation.bakerFee.toString(),
        fontSize: 14,
        fontWeight: FontWeight.w400,
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
          child: FixedTimeline.tileBuilder(
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
              // itemExtent: 70.0,
              itemCount: details.length,
              contentsBuilder: (context, index) => details[index],
            ),
          )),
    );
  }
}
