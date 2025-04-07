import 'package:flutter/material.dart';

abstract class OnboardingViewContract extends BaseViewContract {
  @override
  Widget build(BuildContext context);
}

abstract class BaseViewContract {
  Widget build(BuildContext context);
}
