import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  static const routeName = '/chat';

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget _chatBox(String name, String msg, Color col) {
      return Container(
        height: 100,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: Theme.of(context).primaryColor, width: 1))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Stack(
                children: [
                  Icon(
                    Icons.brightness_1,
                    color: Colors.black,
                    size: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                    child: Icon(
                      Icons.person,
                      color: col,
                      size: 40,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      child: Text('$name',
                          overflow: TextOverflow.fade,
                          softWrap: true,
                          style: Theme.of(context).textTheme.bodyText2)),
                  SizedBox(
                      width: 300,
                      child: Text('$msg',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyText1)),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 237, 237, 1),
      body: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        children: [
          _chatBox('Fast Eddie', 'help my toaster caught on fire', Colors.red),
          _chatBox('Scotty Pimpin\'', 'whatup', Colors.amberAccent),
          _chatBox(
              'Count Duku',
              'Sometimes i wonder what its like on the light side. Do you ever wonder that?',
              Colors.purpleAccent),
          _chatBox('Reemin Fleemin', 'Sometimes I just want to Fleem my Flom',
              Colors.cyanAccent),
          _chatBox('Toats ma Goats', 'where can I buy some goats?',
              Colors.lightBlueAccent),
          _chatBox('Antwan Rickflingerson', 'where i am', Colors.indigoAccent),
          _chatBox('Chevy Chase', ';)', Colors.orangeAccent),
          _chatBox('Scary Terry', 'Boo!', Colors.deepOrangeAccent),
          _chatBox('Big lil', 'check out my mixtape', Colors.green),
        ],
      ),
    );
  }
}
