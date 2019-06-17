import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:frieght_bro/blocs/inherited_bloc.dart';
import 'package:frieght_bro/blocs/search_bloc.dart';
import 'package:frieght_bro/resources/post_data.dart';

class OriginPort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Origin(),
    );
  }
}

class Origin extends StatefulWidget {
 
  @override
  State<StatefulWidget> createState() {
    return OriginState();
  }
}

class OriginState extends State<Origin> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Select Origin Port'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: OriginSearch()
              );
            },
          )
        ],
      ),
    );
  }
}

class OriginSearch extends SearchDelegate<String> {

  List<Post> list = List();

  @override
  List<Widget> buildActions(BuildContext context) {
    //actions for app bar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading icon on the left of app bar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //show some results based on selection
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Search Item must be longer than two letters',
            ),
          )
        ],
      );
    }

    return Column(
      children: <Widget>[
        StreamBuilder(
          stream: bloc.allData,
          builder: (context, AsyncSnapshot<Post> snapshot) {
            if (!snapshot.hasData) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: CircularProgressIndicator()),
                ],
              );
            } else if(list.length == 0) {
              return Column(
                children: <Widget>[
                  Text('No Results Found !'),
                ],
              );
            } else {
              var results = snapshot.data;
              return ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(results.search_query),
                  );
                },
              );
            }
          },
        )
      ],
    ); 
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //show when someone searches for something
    return Column();
  }
}
