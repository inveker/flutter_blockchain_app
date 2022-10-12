import 'package:flutter/material.dart';

bool isMobile(BuildContext context) {
  final currentPlatform = Theme.of(context).platform;
  final mobilePlatforms = [TargetPlatform.android, TargetPlatform.iOS];
  return mobilePlatforms.contains(currentPlatform);
}