class FormValidator {
  static FormValidator _instance;

  factory FormValidator() => _instance ??= new FormValidator._();

  FormValidator._();

  String validatePassword(String value) {
//    String pattern = r'(^((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{6,20})$)';
//    RegExp regExp = new RegExp(pattern);
    if (value.isEmpty) {
      return "Un Mot de passe est requis";
    } else if (value.length < 6) {
      return "Le mot de passe doit contenir au moins 6 caracteres";
//    } else if (!regExp.hasMatch(value)) {
//      return "one upper, lowercase, number & Special character";
    }
    return null;
  }

  String validateEmail(String value) {
    String pattern =
        r'(\D)+(\w)*((\.(\w)+)?)+@(\D)+(\w)*((\.(\D)+(\w)*)+)?(\.)[a-z]{2,}$';
    RegExp regExp = new RegExp(pattern);
    if (value.isEmpty) {
      return "L'email est requis";
    } else if (!regExp.hasMatch(value)) {
      return "Email Non-Valide";
    } else {
      return null;
    }
  }

  String validateTextInput(String value) {
    String pattern = r'(^[A-Za-z\s]+$)';
    RegExp regExp = new RegExp(pattern);
    if (value.isEmpty) {
      return "Ce champ est requis";
    } else if (!regExp.hasMatch(value)) {
      return "Seules les lettres sont permises";
    }
    return null;
  }

  String validatePhone(String value) {
    String pattern = r'(^[0-9\+\- \s]+$)';
    RegExp regExp = new RegExp(pattern);
    if (value.isEmpty) {
      return "Ce champ est requis";
    } else if (value.length < 10) {
      return "Entrez le numero avec l'area code.";
    } else if (!regExp.hasMatch(value)) {
      return "Seulement des chiffres, + et - permis";
    }
    return null;
  }

  String validateDOB(String value) {
    String pattern =
        r'(^(([1-2][0-9])|([1-9])|(3[0-1]))/((1[0-2])|([1-9]))/[0-9]{4}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.isEmpty) {
      return "Ce champ est requis";
    } else if (!regExp.hasMatch(value)) {
      return "Date invalide - Doit etre au format JJ/MM/AAAA";
    }
    return null;
  }

  String validateRequired(String value) {
    if (value.isEmpty) {
      return "Ce champ est requisd";
    }
    return null;
  }
}
