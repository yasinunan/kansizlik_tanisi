import 'package:kansizlik_tanisi/core/model.dart';

class Calculate {
  static bool isAnemia(Model model) {
    if (model.hgb! <= 10.950) {
      return true;
    } else if (model.hct! <= 33.950 && model.mchc! > 32.950) {
      return false;
    } else if (model.hct! <= 33.950 && model.mchc! <= 32.950) {
      return true;
    } else if (model.hct! > 33.950 &&
        model.hgb! > 11.350 &&
        model.rbc! > 4.435) {
      return false;
    } else if (model.hct! > 33.950 &&
        model.hgb! > 11.350 &&
        model.rbc! <= 4.435 &&
        model.rbc! <= 4.425) {
      return false;
    } else if (model.hct! > 33.950 &&
        model.hgb! > 11.350 &&
        model.rbc! <= 4.435 &&
        model.rbc! > 4.425 &&
        model.mchc! > 32.650) {
      return false;
    } else if (model.hct! > 33.950 &&
        model.hgb! > 11.350 &&
        model.rbc! <= 4.435 &&
        model.rbc! > 4.425 &&
        model.mchc! <= 32.650 &&
        model.hgb! <= 12.450) {
      return false;
    } else if (model.hct! > 33.950 &&
        model.hgb! > 11.350 &&
        model.rbc! <= 4.435 &&
        model.rbc! > 4.425 &&
        model.mchc! <= 32.650 &&
        model.hgb! > 12.450) {
      return true;
    } else if (model.hct! > 33.950 &&
        model.hgb! > 10.950 &&
        model.hgb! <= 11.350 &&
        model.mch! > 29.950 &&
        model.rbc! > 3.650) {
      return true;
    } else if (model.hct! > 33.950 &&
        model.hgb! > 10.950 &&
        model.hgb! <= 11.350 &&
        model.mch! > 29.950 &&
        model.rbc! <= 3.650) {
      return false;
    } else if (model.hct! > 33.950 &&
        model.hgb! > 10.950 &&
        model.hgb! <= 11.350 &&
        model.mch! <= 29.950 &&
        model.mchc! > 31.350) {
      return false;
    } else if (model.hct! > 33.950 &&
        model.hgb! > 10.950 &&
        model.hgb! <= 11.350 &&
        model.mch! <= 29.950 &&
        model.mchc! <= 31.350 &&
        model.mchc! > 31.100) {
      return true;
    } else if (model.hct! > 33.950 &&
        model.hgb! > 10.950 &&
        model.hgb! <= 11.350 &&
        model.mch! <= 29.950 &&
        model.mchc! <= 31.100) {
      return false;
    }
    return false;
  }
}
