import 'package:caviapp/screens/home/searchTab/searchStep/step1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/selected_provider.dart';
import '../../../providers/theme_provider.dart';
import '../../../resources/utils/const.dart';
import 'searchStep/step2.dart';
import 'searchStep/step3.dart';
import 'searchStep/step4.dart';
import 'searchStep/step5.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = '/search';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int currentStep = 0;
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Flight'),
      ),
      body: isCompleted
          ? buildCompleted()
          : Container(
              color: themeProvider.isDarkMode
                  ? Constants.darkBG
                  : Constants.lightBG,
              child: Stepper(
                // type: StepperType.horizontal,
                steps: getSteps(),
                currentStep: currentStep,
                onStepCancel: currentStep == 0
                    ? null
                    : () => setState(() => currentStep -= 1),
                onStepTapped: (step) {
                  //kiểm tra đk getStep
                  if (step <= currentStep) {
                    setState(() => currentStep = step);
                  }
                },
                onStepContinue: () {
                  final isLastStep = currentStep == getSteps().length - 1;
                  final isCurrentStepValid = isStepValid(currentStep);

                  if (isLastStep && isCurrentStepValid) {
                    final selectedStep =
                        Provider.of<SelectedStep>(context, listen: false);
                    selectedStep
                        .complete(); // Gọi phương thức complete() trong SelectedStep
                    setState(() => isCompleted = true);
                    print("Completed");
                  } else if (isCurrentStepValid) {
                    setState(() => currentStep += 1);
                  }
                },
                controlsBuilder:
                    (BuildContext context, ControlsDetails controls) {
                  final isLastStep = currentStep == getSteps().length - 1;
                  return Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        if (currentStep != 0)
                          Expanded(
                            child: ElevatedButton(
                              onPressed: controls.onStepCancel,
                              child: const Text("Back"),
                            ),
                          ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: controls.onStepContinue,
                            child: Text(isLastStep ? "Confirm" : "Next"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }

  List<Step> getSteps() => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: const Text("Choose Departure Date"),
          content: Step1(context: context),
        ),
        Step(
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: const Text("Choose Departure Airport"),
          content: Step2(),
        ),
        Step(
          state: currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 2,
          title: const Text("Ticket Order"),
          content: Step3(),
        ),
        Step(
          state: currentStep > 3 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 3,
          title: const Text("Ticket Confirm"),
          content: Step4(),
        ),
        Step(
          state: currentStep > 4 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 4,
          title: const Text("Ticket Payment"),
          content: Step5(),
        ),
      ];

  bool isStepValid(int step) {
    switch (step) {
      case 0:
        return isStep1Valid();
      case 1:
        return isStep2Valid();
      case 2:
        return isStep3Valid();
      case 3:
        return isStep4Valid();
      case 4:
        return isStep5Valid();
      default:
        return false;
    }
  }

  bool isStep1Valid() {
    // Kiểm tra xem Step1 đã hoàn thành hay chưa
    final selectedStep = Provider.of<SelectedStep>(context, listen: false);
    return selectedStep.departureDate1 != null;
  }

  bool isStep2Valid() {
    // Kiểm tra xem Step2 đã hoàn thành hay chưa
    final selectedStep = Provider.of<SelectedStep>(context, listen: false);
    return selectedStep.airlineCode1 != null &&
        selectedStep.airlineName1 != null;
  }

  bool isStep3Valid() {
    // Kiểm tra xem Step3 đã hoàn thành hay chưa
    final selectedStep = Provider.of<SelectedStep>(context, listen: false);
    return selectedStep.flightCode != null;
  }

  bool isStep4Valid() {
    // Kiểm tra xem Step4 đã hoàn thành hay chưa
    // Thêm các kiểm tra khác tại đây nếu cần
    return true;
  }

  bool isStep5Valid() {
    // Kiểm tra xem Step5 đã hoàn thành hay chưa
    // Thêm các kiểm tra khác tại đây nếu cần
    return true;
  }

  Widget buildCompleted() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 64.0,
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Build Completed!',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isCompleted = false;
                currentStep = 0;
              });
            },
            child: const Text('Restart'),
          ),
        ],
      ),
    );
  }
}
