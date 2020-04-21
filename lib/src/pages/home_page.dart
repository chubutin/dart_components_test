import 'package:components_project_course/src/pages/alert_page.dart';
import 'package:flutter/material.dart';

import 'package:components_project_course/src/providers/menu_provider.dart';
import 'package:components_project_course/src/utils/icon_string_utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component Text'),
      ),
      body: _createViewList(),
    );
  }

  Widget _createViewList() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    List<Widget> options = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_right, color: Colors.blue),
        onTap: () {

          Navigator.pushNamed(context, opt['ruta']);

        },
      );

      options..add(widgetTemp)..add(Divider());
    });

    return options;
  }
}
