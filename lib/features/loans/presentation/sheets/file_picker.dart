import 'dart:io';

import 'package:awesome_extensions/awesome_extensions.dart' hide NavigatorExt;
import 'package:fhcs/core/components/custom_text.dart';
import 'package:fhcs/core/helpers/contracts/iwidget_helper.dart';
import 'package:fhcs/core/ui/colors.dart';
import 'package:fhcs/features/auth/repository/contract/iauth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loader_overlay/loader_overlay.dart';

class CustomFilePickerSheet extends StatefulWidget {
  const CustomFilePickerSheet(
      {super.key, required this.onSelectFile, required this.selectedFile});
  final File? selectedFile;
  final Function(File? file, String? url) onSelectFile;

  @override
  State<CustomFilePickerSheet> createState() => _CustomFilePickerSheetState();
}

class _CustomFilePickerSheetState extends State<CustomFilePickerSheet> {
  File? documentFile;
  Future<void> onPickImage({ImageSource? cameraSource}) async {
    ImagePicker picker = ImagePicker();
    XFile? result =
        await picker.pickImage(source: cameraSource ?? ImageSource.camera);
    if (result != null) {
      setState(() {
        documentFile = File(result.path);
        // widget.onSelectFile(documentFile);
      });
      widget.onSelectFile(documentFile, "");
      // context.loaderOverlay.show();
      // final response =
      //     await GetIt.I.get<IAuthRepository>().uploadFile(documentFile!);
      // response.fold((l) {
      //   context.loaderOverlay.hide();
      //   GetIt.I
      //       .get<IWidgetHelper>()
      //       .showErrorToast(context, message: l.failureMessage());
      // }, (r) {
      //   context.loaderOverlay.hide();
      //   GetIt.I
      //       .get<IWidgetHelper>()
      //       .showSuccessToast(context, message: "Image uploaded successfully");
      //   widget.onSelectFile(documentFile, r.data as String);
      // });
    }
    if (mounted) {
      context.pop();
    }
  }

  void clearPickedDocument() {
    setState(() {
      documentFile = null;
      widget.onSelectFile(null, null);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        24.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              "Upload Photo",
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.neutral800,
            ),
            Container(
              padding: REdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                border: Border.all(
                  width: 1.w,
                  color: const Color(0xffE2E8F0),
                ),
              ),
              child: SvgPicture.asset("assets/svgs/cancel.svg"),
            ).onTap(() => context.pop()),
          ],
        ),
        24.h.heightBox,
        ListTile(
          visualDensity: const VisualDensity(vertical: -4),
          onTap: () => onPickImage(),
          contentPadding: REdgeInsets.symmetric(horizontal: 0),
          leading: Container(
            padding: REdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.neutral200, width: 1.w),
            ),
            child: SvgPicture.asset("assets/svgs/camera.svg"),
          ),
          title: AppText(
            "Camera",
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.neutral800,
          ),
        ),
        16.h.heightBox,
        ListTile(
          visualDensity: const VisualDensity(vertical: -4),
          contentPadding: REdgeInsets.symmetric(horizontal: 0),
          onTap: () => onPickImage(cameraSource: ImageSource.gallery),
          leading: Container(
            padding: REdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.neutral200, width: 1.w),
            ),
            child: SvgPicture.asset("assets/svgs/photo.svg"),
          ),
          title: AppText(
            "Gallery",
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.neutral800,
          ),
        ),
        36.h.heightBox,
      ],
    ).paddingSymmetric(horizontal: 20.w);
  }
}
