import 'package:flutter/material.dart';
import 'package:kievpastrans/widgets/schedule.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        primaryColor:   Colors.green,
      ),
      title: "Simple Material App",
      home: Stops()));
}

class Stops extends StatefulWidget {
  @override
  StopsState createState() => StopsState();
}

class StopsState extends State<Stops> {
  // init the step to 0th position
  int current_step = 0;
  List<Step> my_steps = [
    Step(
      // Title of the Step
        title: Text("Кільцева дорога"),
        content: Text("10 хв"),
    ),
    Step(
        title: Text("бул. Ромена Роллана"),
        content: Text("12 хв"),
    ),
    Step(
        title: Text("вул. Академіка Серкова"),
        content: Text("23 хв")
    ),
    Step(
        title: Text("вул. Гната Юри"),
        content: Text("40 хв")
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body
      body: Container(
          child: Stepper(
            // Using a variable here for handling the currentStep
            currentStep: this.current_step,
            // List the steps you would like to have
            steps: my_steps,
            // Define the type of Stepper style
            // StepperType.horizontal :  Horizontal Style
            // StepperType.vertical   :  Vertical Style
            type: StepperType.vertical,
            // Know the step that is tapped
            onStepTapped: (step) {
              // On hitting step itself, change the state and jump to that step
              setState(() {
                // update the variable handling the current step value
                // jump to the tapped step
                current_step = step;
              });
              // Log function call
              print("onStepTapped : " + step.toString());
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Schedule()),
              );
            },
            onStepCancel: () {
              // On hitting cancel button, change the state
              setState(() {
                // update the variable handling the current step value
                // going back one step i.e subtracting 1, until its 0
                if (current_step > 0) {
                  current_step = current_step - 1;
                } else {
                  current_step = 0;
                }
              });
              // Log function call
              print("onStepCancel : " + current_step.toString());
            },
            // On hitting continue button, change the state
            onStepContinue: () {
              setState(() {
                // update the variable handling the current step value
                // going back one step i.e adding 1, until its the length of the step
                if (current_step < my_steps.length - 1) {
                  current_step = current_step + 1;
                } else {
                  current_step = 0;
                }
              });
              // Log function call
              print("onStepContinue : " + current_step.toString());
            },
          )),
    );
  }
}