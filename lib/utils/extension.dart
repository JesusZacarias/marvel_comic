import 'package:flutter/material.dart';

extension SizeBoxGenerateByNum  on num {
  Widget get pw => SizedBox(width: this.toDouble(),);
  Widget get ph => SizedBox(height: this.toDouble(),);
}