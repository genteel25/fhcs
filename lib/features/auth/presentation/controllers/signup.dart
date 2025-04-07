import 'dart:io';

import 'package:fhcs/core/router/route_constants.dart';
import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/features/auth/presentation/controllers/contracts/signup.dart';
import 'package:fhcs/features/auth/presentation/views/contracts/signup.dart';
import 'package:fhcs/features/auth/presentation/views/signup.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phone_form_field/phone_form_field.dart';

class SignUpScreen extends StatefulWidget {
  static const String route = 'forgot_password';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpController();
}

class SignUpController extends State<SignUpScreen>
    implements SignUpControllerContract {
  late SignUpViewContract view;

  @override
  TextEditingController fullNameController = TextEditingController();

  @override
  TextEditingController maritalStatusController = TextEditingController();

  @override
  PhoneController phoneNumberController =
      PhoneController(initialValue: PhoneNumber.parse("+234"));

  @override
  TextEditingController irNumberController = TextEditingController();

  @override
  TextEditingController emailController = TextEditingController();

  @override
  TextEditingController dobController = TextEditingController();

  @override
  TextEditingController residentialAddressController = TextEditingController();

  @override
  TextEditingController permanentAddressController = TextEditingController();

  @override
  TextEditingController deploymentOfficeController = TextEditingController();

  @override
  TextEditingController officeAddressController = TextEditingController();

  @override
  TextEditingController employmentDateController = TextEditingController();

  @override
  File? pickedImagePath;

  @override
  int currentIndex = 0;
  @override
  Map<String, dynamic> firstPercent = {};
  @override
  Map<String, dynamic> secondPercent = {};
  @override
  bool isFirstPercentComplete = false;
  @override
  String selectedMaritalStatus = "";
  @override
  String selectedStateOfOrigin = "";
  @override
  String selectedSalaryGrade = "";
  @override
  bool employmentStatus = false;

  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  GlobalKey<FormState> secondFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    view = SignUpView(controller: this);
    fullNameControllerListener();
    phoneNumberControllerListener();
    irNumberControllerListener();
    emailControllerListener();
    residentialAddressControllerListener();
    permanentAddressControllerListener();
    deploymentOfficeControllerListener();
    officeAddressControllerListener();
  }

  @override
  void onSelectEmploymentStatus(bool status) {
    setState(() {
      employmentStatus = status;
      secondPercent.addAll({"employment_status": true});
    });
  }

  @override
  void fullNameControllerListener() {
    fullNameController.addListener(() {
      if (fullNameController.text.isNotEmpty) {
        setState(() {
          firstPercent.addAll({"full_name": true});
        });
      } else {
        setState(() {
          firstPercent.remove("full_name");
        });
      }
    });
  }

  @override
  void phoneNumberControllerListener() {
    phoneNumberController.addListener(() {
      if (phoneNumberController.value.nsn.isNotEmpty) {
        setState(() {
          firstPercent.addAll({"phone_number": true});
        });
      } else {
        setState(() {
          firstPercent.remove("phone_number");
        });
      }
    });
  }

  @override
  void irNumberControllerListener() {
    irNumberController.addListener(() {
      if (irNumberController.text.isNotEmpty) {
        setState(() {
          firstPercent.addAll({"ir_number": true});
        });
      } else {
        setState(() {
          firstPercent.remove("ir_number");
        });
      }
    });
  }

  @override
  void emailControllerListener() {
    emailController.addListener(() {
      if (emailController.text.isNotEmpty) {
        setState(() {
          firstPercent.addAll({"email": true});
        });
      } else {
        setState(() {
          firstPercent.remove("email");
        });
      }
    });
  }

  @override
  void onSelectMaritalStatus(String? value) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.microtask(() {
        setState(() {
          selectedMaritalStatus = value ?? "";
          secondPercent.addAll({"marital_status": true});
        });
      });
    });
  }

  @override
  void onSelectStateOfOrigin(String? value) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.microtask(() {
        setState(() {
          selectedStateOfOrigin = value ?? "";
          secondPercent.addAll({"state_of_origin": true});
        });
      });
    });
  }

  @override
  void onSelectSalaryGrade(String? value) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.microtask(() {
        setState(() {
          selectedSalaryGrade = value ?? "";
          secondPercent.addAll({"salary_grade": true});
        });
      });
    });
  }

  @override
  void onPickDateOfBirth() async {
    DateTime? result = await showDatePicker(
      context: context,
      firstDate: DateTime(1970),
      lastDate: DateTime(2200),
      currentDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
    if (result != null) {
      setState(() {
        dobController.text = result.pickerDate;
        secondPercent.addAll({"dob": true});
      });
    }
  }

  @override
  void onPickEmploymentDate() async {
    DateTime? result = await showDatePicker(
      context: context,
      firstDate: DateTime(1970),
      lastDate: DateTime(2200),
      currentDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
    if (result != null) {
      setState(() {
        employmentDateController.text = result.pickerDate;
        secondPercent.addAll({"employment_date": true});
      });
    }
  }

  @override
  void residentialAddressControllerListener() {
    residentialAddressController.addListener(() {
      if (residentialAddressController.text.isNotEmpty) {
        setState(() {
          secondPercent.addAll({"residential_address": true});
        });
      } else {
        setState(() {
          secondPercent.remove("residential_address");
        });
      }
    });
  }

  @override
  void permanentAddressControllerListener() {
    permanentAddressController.addListener(() {
      if (permanentAddressController.text.isNotEmpty) {
        setState(() {
          secondPercent.addAll({"permanent_address": true});
        });
      } else {
        setState(() {
          secondPercent.remove("permanent_address");
        });
      }
    });
  }

  @override
  void deploymentOfficeControllerListener() {
    deploymentOfficeController.addListener(() {
      if (deploymentOfficeController.text.isNotEmpty) {
        setState(() {
          secondPercent.addAll({"deployment_office": true});
        });
      } else {
        setState(() {
          secondPercent.remove("deployment_office");
        });
      }
    });
  }

  @override
  void officeAddressControllerListener() {
    officeAddressController.addListener(() {
      if (officeAddressController.text.isNotEmpty) {
        setState(() {
          secondPercent.addAll({"office_address": true});
        });
      } else {
        setState(() {
          secondPercent.remove("office_address");
        });
      }
    });
  }

  @override
  void uploadPassport() async {
    final ImagePicker picker = ImagePicker();
    final XFile? galleryVideo =
        await picker.pickImage(source: ImageSource.gallery);
    if (galleryVideo != null) {
      setState(() {
        pickedImagePath = File(galleryVideo.path);
        firstPercent.addAll({"passport": true});
      });
    }
  }

  @override
  void onClearPassport() async {
    setState(() {
      pickedImagePath = null;
      firstPercent.remove("passport");
    });
  }

  @override
  void onContinue() {
    if (formKey.currentState?.validate() ?? false) {
      setState(() {
        isFirstPercentComplete = true;
        onSelectEmploymentStatus(employmentStatus);
      });
    }
  }

  @override
  void onSecondContinue() {
    if (secondFormKey.currentState?.validate() ?? false) {
      context.pushNamed(RouteConstants.enterOtpRoute);
    }
  }

  @override
  void onGoBack() {
    setState(() {
      isFirstPercentComplete = false;
    });
  }

  @override
  void dispose() {
    dobController.dispose();
    fullNameController
      ..removeListener(fullNameControllerListener)
      ..dispose();
    emailController.dispose();
    irNumberController.dispose();
    phoneNumberController
      ..removeListener(phoneNumberControllerListener)
      ..dispose();
    residentialAddressController
      ..removeListener(residentialAddressControllerListener)
      ..dispose();
    permanentAddressController
      ..removeListener(permanentAddressControllerListener)
      ..dispose();
    deploymentOfficeController
      ..removeListener(deploymentOfficeControllerListener)
      ..dispose();
    officeAddressController
      ..removeListener(officeAddressControllerListener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
