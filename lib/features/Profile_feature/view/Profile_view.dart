import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class PersonalInfoScreen extends StatefulWidget {
  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  TextEditingController nameController =
      TextEditingController(text: "Mohamed Magdy");
  TextEditingController emailController =
      TextEditingController(text: "Mohamed.Magdy@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "********22**");
  TextEditingController phoneController = TextEditingController();
  TextEditingController idController = TextEditingController();
  String selectedGender = "Male";
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: context.translate.accountInformation),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Color.fromARGB(255, 223, 221, 221),
                      child: Icon(Icons.person,
                          size: 60, color: Color.fromARGB(255, 175, 171, 171)),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 0,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: context.color.primaryColor,
                        child: Icon(IconlyLight.camera,
                            color: Colors.white, size: 24),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              buildTextField(context.translate.name, nameController),
              buildTextField(context.translate.email, emailController,
                  enabled: false),
              buildTextField(context.translate.password, passwordController,
                  isPassword: true),
              buildTextField(context.translate.phone_number, phoneController),
              buildTextField(context.translate.nationalId, idController),
              CustomDropdownField(
                  onChanged: (value) {},
                  items: ["Male", "Female"],
                  title: context.translate.gender,
                  dropDownType: DropDownType.dropDownType),
              const SizedBox(height: 20),
              CustomTextField(
                showTitle: true,
                onTap: () => _selectDate(context),
                hintText: context.translate.birthDate,
                titleText: selectedDate == null
                    ? context.translate.birthDate
                    : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
                controller: phoneController,
                suffixIcon: Icon(IconlyLight.calendar, size: 24),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  width: double.infinity,
                  onPressed: () {},
                  title: context.translate.save,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller,
      {bool isPassword = false, bool enabled = true}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          const SizedBox(height: 4),
          CustomTextField(
            controller: controller,
            isPassword: isPassword,
          )
        ],
      ),
    );
  }
}
