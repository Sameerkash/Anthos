import 'package:flutter/material.dart';

import '../../../models/account/account.dart';

import '../../../models/operation/operation.dart';
import '../../../widgets/display.text.dart';
import 'operation_tile.dart';
import 'sheet_actions.dart';

class TransactionInfo extends StatelessWidget {
  final List<Operation> operatoins;
  final bool isLoading;
  final Future<void> Function() onRefresh;
  final UserAccountLocal? user;
  const TransactionInfo({
    Key? key,
    required this.operatoins,
    this.isLoading = false,
    required this.onRefresh,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: DraggableScrollableSheet(
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
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                if (isLoading)
                  const SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 200, left: 100),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                if (!isLoading) ...[
                  const SheetActions(),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 26.0, vertical: 16),
                      child: Text(
                        'Transactions',
                        style: TextStyle(fontSize: 22, color: Colors.indigo),
                      ),
                    ),
                  ),
                ],
                if (!isLoading && operatoins.isEmpty) ...[
                  const SliverToBoxAdapter(
                      child: Padding(
                    padding: EdgeInsets.only(top: 200, left: 100),
                    child: DisplayText(
                      text: 'Oops, No Operations to show',
                    ),
                  )),
                ],
                if (!isLoading && operatoins.isNotEmpty) ...[
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return OperationTile(
                          operation: operatoins[index],
                          user: user,
                        );
                      },
                      childCount: operatoins.length,
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
