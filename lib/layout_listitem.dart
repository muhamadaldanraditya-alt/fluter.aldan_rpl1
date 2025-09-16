import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(heading,style: Theme.of(context).textTheme.headlineMedium);
  }

  @override
  Widget buildSubtitle(BuildContext context){
    return const SizedBox.shrink();
  }
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(sender);
  }

  @override
  Widget buildSubtitle(BuildContext context) {
    return Text(body);
  }
}


class LayoutListitem extends StatelessWidget {
  const LayoutListitem({super.key});

  @override
  Widget build(BuildContext context) {

    final List<ListItem> items = List<ListItem>.generate(
      20,
      (i) => i % 6 == 0
          ? HeadingItem('Judul $i')
          : MessageItem('Sender $i', 'Message $i'),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout List Item'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );
        },
      ),
    );


    return const Placeholder();
  
  }
}