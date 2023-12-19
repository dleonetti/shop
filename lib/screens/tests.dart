import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class TestsScreen extends StatefulWidget {
  const TestsScreen({super.key});

  @override
  State<TestsScreen> createState() {
    return _TestsScreenState();
  }
}

class _TestsScreenState extends State<TestsScreen> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
    appBar: AppBar(
      title: Text(AppLocalizations.of(context)!.testTitle),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Add the following code
          Localizations.override(
            context: context,
            //locale: const Locale('es'),
            // Using a Builder to get the correct BuildContext.
            // Alternatively, you can create a new widget and Localizations.override
            // will pass the updated BuildContext to the new widget.
            child: Builder(
              builder: (context) {
                // A toy example for an internationalized Material widget.
                return Column(
                  children: [
                    Text(AppLocalizations.of(context)!.testMessage,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CalendarDatePicker(
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                      onDateChanged: (value) {},
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
  }
}
