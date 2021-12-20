import 'package:dose_treatment_cancer/modules/home_page/cubit/cubit.dart';
import 'package:dose_treatment_cancer/modules/home_page/cubit/states.dart';
import 'package:dose_treatment_cancer/shared/components/custom_text_form_field.dart';
import 'package:dose_treatment_cancer/shared/components/show_alert_dialogue.dart';
import 'package:dose_treatment_cancer/shared/components/vertical_text.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    mainColor,
                    secondColorLight,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const VerticalText(text: 'WELCOME'),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Please enter your body measurements to calculate your body area to determine the right dose for you.',
                          style: TextStyle(
                              color: Colors.white, fontSize: 25.0),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomTextFormField(
                                controller: heightController,
                                tegText: 'Height',
                                hintText: 'Please Enter your height in Cm',
                                isPassword: false,
                                inputType: TextInputType.number,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomTextFormField(
                                controller: weightController,
                                tegText: 'Weight',
                                hintText: 'Please Enter your weight in Kg',
                                isPassword: false,
                                inputType: TextInputType.number,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                const Spacer(),
                                MaterialButton(
                                  onPressed: () {
                                    try {
                                      cubit.calculateArea(
                                          double.parse(heightController.text),
                                          double.parse(weightController.text),
                                          context
                                      );
                                    } catch (error) {
                                      showAlertDialog(
                                          context, title: 'Input Error',
                                          content: error.toString(),
                                          defaultActionText: "OK",
                                          defaultAction: (){
                                            Navigator.of(context).pop(false);
                                          });
                                    }
                                  },
                                  child: Container(
                                    width: 90.0,
                                    height: 50.0,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                    child: Center(
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: const [
                                          Text(
                                            'Ok',
                                            style: TextStyle(
                                              color: Colors.teal,
                                            ),
                                          ),
                                          SizedBox(width: 10.0,),
                                          Icon(
                                            Icons.arrow_forward_sharp,
                                            color: Colors.teal,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
