import 'sheet_actions.dart';
import 'package:flutter/material.dart';

class TransactionInfo extends StatelessWidget {
  const TransactionInfo({
    Key? key,
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
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
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
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
