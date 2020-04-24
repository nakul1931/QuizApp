import 'package:flutter/material.dart';

Function emailValidator() {
  return (value) {
    if (value.isEmpty) {
      return "Enter email";
    } else if (value.length < 10) {
      return "Enter email Pending";
    }
  };
}

Function passwordValidator() {
  return (value) {
    if (value.isEmpty) {
      return "Enter Password";
    } else if (value.length < 6) {
      return "Enter conrr pending";
    }
  };
}

Function nameValidator() {
  return (value) {
    if (value.isEmpty) {
      return "Enter Name";
    } else if (value.length < 6) {
      return "Enter conrr pending";
    }
  };
}
