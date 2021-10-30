import 'package:flutter/material.dart';

import 'package:anthos/models/operation/operation.dart';
import 'package:anthos/widgets/display.text.dart';
import 'package:intl/intl.dart';

import 'sheet_actions.dart';

class TransactionInfo extends StatelessWidget {
  final List<Operation> operatoins;
  final bool isLoading;
  const TransactionInfo({
    Key? key,
    required this.operatoins,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      minChildSize: 0.63,
      builder: (BuildContext context, ScrollController scrollController) {
        return Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          color: Colors.white,
          child: CustomScrollView(controller: scrollController, slivers: [
            if (isLoading)
              const SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            if (!isLoading && operatoins.isEmpty)
              const SliverToBoxAdapter(
                  child: DisplayText(
                text: 'Oops, No Operations to show',
              )),
            if (!isLoading && operatoins.isNotEmpty) ...[
              const SheetActions(),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Transactions',
                    style: TextStyle(fontSize: 22, color: Colors.indigo),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return OperationTile(
                      operation: operatoins[index],
                    );
                  },
                  childCount: operatoins.length,
                ),
              ),
            ],
          ]),
        );
      },
    );
  }
}

class OperationTile extends StatelessWidget {
  final Operation operation;
  const OperationTile({
    Key? key,
    required this.operation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
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
            )),
        child: ListTile(
          title: DisplayText(
            text: '${operation.amount} mutez',
            fontWeight: FontWeight.w600,
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
    );
  }
}

String formatDate(String date) {
  return DateFormat('EEE, dd MMM yy')
      .format(DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(date));
}

String formatTime(String date) {
  return DateFormat('hh:mm a')
      .format(DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(date));
}
