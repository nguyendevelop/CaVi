import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SelectedStep extends ChangeNotifier {
  DateTime? departureDate1;
  String? airlineCode1;
  String? airlineName1;
  String? flightCode;
  String? paymentMethod;
  String? bankAccountId;
  String? cardNumber;
  String? cardHolder;

  void updateStep1(DateTime date) {
    departureDate1 = date;
    notifyListeners();
  }

  void updateStep2(String code, String name) {
    airlineCode1 = code;
    airlineName1 = name;
    notifyListeners();
  }

  void updateStep3(String code) {
    flightCode = code;
    notifyListeners();
  }

  void updateStep5(String? newPaymentMethod, String? newBankAccountId,
      String? newCardNumber, String? newCardHolder) {
    paymentMethod = newPaymentMethod ?? '';
    bankAccountId = newBankAccountId ?? '';
    cardNumber = newCardNumber ?? '';
    cardHolder = newCardHolder ?? '';
    notifyListeners();
  }

  void complete() async {
    // Lấy thông tin người dùng hiện tại
    User? user = FirebaseAuth.instance.currentUser;

    // Kiểm tra người dùng đã đăng nhập chưa
    if (user != null) {
      try {
        // Lưu dữ liệu vào Cloud Firestore
        await FirebaseFirestore.instance.collection('data').doc(user.uid).set({
          'flightCode': flightCode,
          'paymentMethod': paymentMethod,
          'bankAccountId': bankAccountId,
          'cardNumber': cardNumber,
          'cardHolder': cardHolder,
        });

        // Xử lý khi lưu dữ liệu thành công (nếu cần)
      } catch (e) {
        // Xử lý khi có lỗi xảy ra trong quá trình lưu dữ liệu
      }
    }
  }
}
