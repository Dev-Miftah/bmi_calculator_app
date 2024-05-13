import 'package:flutter/material.dart';
import 'widgets/bmi_charts.dart';
import 'widgets/bmi_radial_meter.dart';
import 'widgets/custom_icon_button.dart';
import 'widgets/custom_text_field.dart';

enum Gender {
  male,
  female,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _ageTEController = TextEditingController();
  final TextEditingController _heightFtTEController = TextEditingController();
  final TextEditingController _heightInTEController = TextEditingController();
  final TextEditingController _weightTEController = TextEditingController();
  double? ans;
  double? maleBmi;
  double? femaleBmi;
  Gender selectedGender = Gender.male; // Default to male

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        actions: [
          CustomIconButton(onTap: (){resetBmi();}, icon:  Icons.refresh),
          CustomIconButton(onTap: (){}, icon: Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTextField(text: 'Age', controller: _ageTEController, fieldWidth: 70),
                  CustomTextField(text: 'Ht (ft)', controller: _heightFtTEController, fieldWidth: 70),
                  CustomTextField(text: 'Ht (in)', controller: _heightInTEController, fieldWidth: 70),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomIconButton(onTap: (){
                    setState(() {
                      selectedGender = Gender.male;
                      print(selectedGender);
                    });
                  },
                      icon: Icons.male,
                    size: 30,
                    color: selectedGender == Gender.male
                        ? Colors.red
                        : Colors.black,

                  ),
                  const Text('|', style: TextStyle(fontSize: 28)),
                  CustomIconButton(onTap: (){
                    setState(() {
                      selectedGender = Gender.female;
                      print(selectedGender);
                    });
                  },
                      icon: Icons.female,
                      size: 30,
                    color: selectedGender == Gender.female
                        ? Colors.red
                        : Colors.black,
                  ),
                  CustomTextField(
                      text: 'Weight (kg)',
                      controller: _weightTEController,
                    fieldWidth: 120,
                  ),
                  CustomIconButton(onTap: ()=> calculateBMI(),
                      icon: Icons.check)
                ],
              ),
            const SizedBox(height: 20),
            BmiRadialMeter(ans: ans),
              BmiCharts(ans: ans)
            ],
          ),
        ),
      ),
    );
  }
  void calculateBMI() {
    double? weight = double.tryParse(_weightTEController.text) ?? 0;
    double? heightFt = double.tryParse(_heightFtTEController.text) ?? 0;
    double? heightIn = double.tryParse(_heightInTEController.text) ?? 0;

    double? heightMeters = ((heightFt * 12) + heightIn) * 0.0254;

    if (selectedGender == Gender.male) {
      setState(() {
        maleBmi = weight / (heightMeters * heightMeters);
        femaleBmi = null;
        ans = maleBmi;
      });
    } else {
      setState(() {
        femaleBmi = weight / (heightMeters * heightMeters);
        maleBmi = null;
        ans = femaleBmi;
      });
    }
  }

  resetBmi(){
    _ageTEController.clear();
    _heightFtTEController.clear();
    _heightInTEController.clear();
    _weightTEController.clear();
    ans = 0;
    setState(() {});
  }


  @override
  void dispose() {
    super.dispose();
    _ageTEController.dispose();
    _heightFtTEController.dispose();
    _heightInTEController.dispose();
    _weightTEController.dispose();
  }
}









