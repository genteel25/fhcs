import 'package:flutter/material.dart';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';

import 'package:fhcs/core/utils/extensions.dart';
import 'package:fhcs/core/utils/global_variables.dart';
import 'package:fhcs/features/home/presentation/bloc/user_profile/user_profile_cubit.dart';
import 'package:fhcs/features/home/presentation/controllers/contracts/personal_details.dart';
import 'package:fhcs/features/home/presentation/views/contracts/personal_details.dart';
import 'package:fhcs/features/home/presentation/views/personal_details.dart';

class PersonalDetailsScreen extends StatefulWidget {
  static const String route = 'personal_details';
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => PersonalDetailsController();
}

class PersonalDetailsController extends State<PersonalDetailsScreen>
    implements PersonalDetailsControllerContract {
  late PersonalDetailsViewContract view;

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
  late SingleSelectController<String> maritalStatusCustomController;

  @override
  late SingleSelectController<String> stateOfOriginCustomController;

  @override
  late SingleSelectController<String> salaryStepCustomController;

  @override
  TextEditingController membershipNoController = TextEditingController();

  @override
  late SingleSelectController<String> salaryGradeCustomController;

  @override
  bool canEditFullName = false;
  @override
  bool canEditEmail = false;
  @override
  bool canEditPhoneNumber = false;

  @override
  String selectedMaritalStatus = "";
  @override
  String selectedStateOfOrigin = "";
  @override
  String selectedSalaryGrade = "";
  @override
  String selectedSalaryStep = "";
  @override
  bool employmentStatus = false;

  @override
  List<String> states = [
    'Abia',
    'Adamawa',
    'Akwa Ibom',
    'Anambra',
    'Bauchi',
    'Bayelsa',
    'Benue',
    'Borno',
    'Cross River',
    'Delta',
    'Ebonyi',
    'Edo',
    'Ekiti',
    'Enugu',
    'Federal Capital Territory (FCT) - Abuja', // Including FCT
    'Gombe',
    'Imo',
    'Jigawa',
    'Kaduna',
    'Kano',
    'Katsina',
    'Kebbi',
    'Kogi',
    'Kwara',
    'Lagos',
    'Nasarawa',
    'Niger',
    'Ogun',
    'Ondo',
    'Osun',
    'Oyo',
    'Plateau',
    'Rivers',
    'Sokoto',
    'Taraba',
    'Yobe',
    'Zamfara',
  ];

  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    view = view = PersonalDetailsView(controller: this);

    maritalStatusCustomController = SingleSelectController(null);

    // selectedMaritalStatus = "Single";
    stateOfOriginCustomController = SingleSelectController(null);
    // selectedStateOfOrigin = "Abia";
    salaryStepCustomController = SingleSelectController(null);
    // selectedSalaryStep = "1";
    salaryGradeCustomController = SingleSelectController(null);
    // selectedSalaryGrade = "1";
    initPersonalInfo();
  }

  void initPersonalInfo() {
    GlobalVariables.rootNavigatorKey.currentContext!
        .read<UserProfileCubit>()
        .state
        .whenOrNull(
      success: (response) {
        fullNameController.text =
            "${response.user?.firstName ?? ""} ${response.user?.lastName ?? ""}";
        emailController.text = response.user?.email ?? "";
        // phoneNumberController = PhoneC
        // maritalStatusController.text = response.maritalStatus ?? "";
        irNumberController.text = response.user?.irNumber ?? "";
        phoneNumberController.value =
            PhoneNumber.parse(response.user?.phoneNumber ?? "");
        maritalStatusCustomController =
            SingleSelectController(response.cooperator?.maritalStatus);
        dobController.text = response.cooperator?.dob ?? "";
        residentialAddressController.text =
            response.cooperator?.residentialAddress ?? "";
        permanentAddressController.text =
            response.cooperator?.permanentAddress ?? "";
        deploymentOfficeController.text = response.cooperator?.deployment ?? "";
        officeAddressController.text = response.cooperator?.officeAddress ?? "";
        stateOfOriginCustomController =
            SingleSelectController(response.cooperator?.stateOfOrigin);
        employmentDateController.text =
            response.cooperator?.employmentDate ?? "";
        // employmentStatus = response.user?.status ?? false;
        salaryGradeCustomController = SingleSelectController(
            response.cooperator?.salaryGrade?.toString() ?? "0");
        salaryStepCustomController = SingleSelectController(
            response.cooperator?.salaryGradeStep?.toString() ?? "0");

        // irNumberController.text = response.irNumber ?? "";
        // emailController.text = response.email ?? "";
        // dobController.text = response.dob ?? "";
        // residentialAddressController.text = response.residentialAddress ?? "";
        // permanentAddressController.text = response.permanentAddress ?? "";
        // deploymentOfficeController.text = response.deploymentOffice ?? "";
        // officeAddressController.text = response.officeAddress ?? "";
        // employmentDateController.text = response.employmentDate ?? "";
        // employmentStatus = response.employmentStatus ?? false;
      },
    );
  }

  @override
  void fullNameEditStatus() {
    setState(() {
      canEditFullName = true;
    });
  }

  @override
  void emailEditStatus() {
    setState(() {
      canEditEmail = true;
    });
  }

  @override
  void phoneNumberEditStatus() {
    setState(() {
      canEditPhoneNumber = true;
    });
  }

  @override
  void onSelectEmploymentStatus(bool status) {
    setState(() {
      employmentStatus = status;
    });
  }

  @override
  void onSelectMaritalStatus(String? value) {
    if (mounted) {
      maritalStatusCustomController.value = value;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.microtask(() {
        setState(() {
          selectedMaritalStatus = value ?? "";
        });
      });
    });
  }

  @override
  void onSelectStateOfOrigin(String? value) {
    if (mounted) {
      stateOfOriginCustomController.value = value;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.microtask(() {
        setState(() {
          selectedStateOfOrigin = value ?? "";
        });
      });
    });
  }

  @override
  void onSelectSalaryGrade(String? value) {
    if (mounted) {
      salaryGradeCustomController.value = value;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.microtask(() {
        setState(() {
          selectedSalaryGrade = value ?? "";
        });
      });
    });
  }

  @override
  void onSelectSalaryStep(String? value) {
    if (mounted) {
      salaryStepCustomController.value = value;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.microtask(() {
        setState(() {
          selectedSalaryStep = value ?? "";
        });
      });
    });
  }

  @override
  void onPickDateOfBirth() async {
    final now = DateTime.now();

    // Calculate the latest allowed date (18 years ago from today)
    final latestAllowed = DateTime(now.year - 18, now.month, now.day);

    // Optional: oldest selectable date (e.g., 100 years ago)
    final earliestAllowed = DateTime(now.year - 100);
    DateTime? result = await showDatePicker(
      context: context,
      firstDate: earliestAllowed,
      initialDate: latestAllowed,

      lastDate: latestAllowed,
      // currentDate: DateTime.now().subtract(
      //   const Duration(days: 18 * 365),
      // ),
      // initialDate: DateTime.now(),
    );
    if (result != null) {
      setState(() {
        dobController.text = result.pickerDate;
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
      });
    }
  }

  @override
  void onSubmit() {
    final payload = {
      "first_name": fullNameController.text.trim().split(" ").first,
      "last_name": fullNameController.text.trim().split(" ").last,
      "email": emailController.text,
      "ir_number": irNumberController.text,
      "image_url": '',
      "marital_status": selectedMaritalStatus,
      "dob": dobController.text,
      "residential_address": residentialAddressController.text,
      "permanent_address": permanentAddressController.text,
      "deployment": deploymentOfficeController.text,
      "office_address": officeAddressController.text,
      "state_of_origin": selectedStateOfOrigin,
      "phone_number": phoneNumberController.value.nsn,
      "salary_grade": selectedSalaryGrade,
      "salary_grade_step": selectedSalaryGrade,
      "employment_date": employmentDateController.text,
      "in_service": employmentStatus,
      "stage": "Personal Info",
    };
  }

  @override
  void dispose() {
    dobController.dispose();
    fullNameController.dispose();
    emailController.dispose();
    irNumberController.dispose();
    phoneNumberController.dispose();
    residentialAddressController.dispose();
    permanentAddressController.dispose();
    deploymentOfficeController.dispose();
    officeAddressController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => view.build(context);
}
