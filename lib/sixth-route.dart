import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SixthRoute extends StatefulWidget {
  static const routeName = '/sixthRoute';
  @override
  _SixthRouteState createState() => _SixthRouteState();
}

class _SixthRouteState extends State<SixthRoute> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarSection(),
      body: _bodySection(),
    );
  }

  AppBar _appBarSection() {
    return AppBar(
      title: Text("Sixth Route"),
    );
  }

  Stepper _bodySection() {
    return Stepper(
      type: StepperType.vertical,
      currentStep: _index,
      onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () {
        if (_index >= 0 && _index < 4) {
          setState(() {
            _index += 1;
          });
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps: <Step>[
        Step(
          title: const Text('New Account'),
          isActive: true,
          state: StepState.complete,
          content: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Email Address'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ],
          ),
        ),
        Step(
          isActive: false,
          state: StepState.editing,
          title: const Text('Address'),
          content: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Home Address'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Postcode'),
              ),
            ],
          ),
        ),
        Step(
          isActive: false,
          state: StepState.editing,
          title: const Text('Credit Card'),
          content: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Credit Card Number'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'CVV'),
              ),
            ],
          ),
        ),
        Step(
          isActive: false,
          state: StepState.editing,
          title: const Text('DOB'),
          content: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'DD-MM-YYYY'),
              ),
            ],
          ),
        ),
        Step(
          state: StepState.error,
          title: const Text('Avatar'),
          subtitle: const Text("Error!"),
          content: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.red,
              )
            ],
          ),
        ),
      ],
    );
  }
}
