import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/bloc_pattern/imc_bloc_pattern_page.dart';
import 'package:flutter_default_state_manager/change_notifier/imc_change_notifier_page.dart';
import 'package:flutter_default_state_manager/setState/imc_setstate_page.dart';
import 'package:flutter_default_state_manager/value_notifier/value_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => page,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToPage(context, ImcSetState()),
              child: Text('SetState'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, ValueNotifierPage()),
              child: Text('ValueNotifier'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, ImcChaneNotifierPage()),
              child: Text('ChangeNotifier'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, ImcBlocPatternPage()),
              child: Text('Bloc Pattern (Strems)'),
            ),
          ],
        ),
      ),
    );
  }
}
