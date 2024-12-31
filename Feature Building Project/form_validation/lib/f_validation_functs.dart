
//Name Validation
String? validatefname(String? value) {
  final regexp = RegExp(r"^[a-zA-Z\s]+$");
  //check whether the input string is empty or not
  if (value == '' || value!.isEmpty) {
    return 'Name field cannot be empty';
  }

  //check whether the input string is valird or not
  if (!regexp.hasMatch(value)) {
    return 'Enter a valid name';
  }

  //check whether the length of the name if less than 2
  if (value.length < 2) {
    return 'Name should be of atleast 2 characters';
  }

  //check whether the length of the name if more than 50
  if (value.length > 50) {
    return 'Name should be of valid length';
  }

  return null;
}

//Age Validation
String? ageValidation(String? value) {
  //check whether the input string is empty or not
  if (value == '' || value!.isEmpty) {
    return 'Age field cannot be empty';
  }

  //check whether the age is between 18 and 100
  int age = int.parse(value);
  if (age < 18 || age > 100) {
    return "Enter a valid age";
  }

  return null;
}

//Phone Number Validation
String? pnValidation(String? value) {
  //check whether the input string is empty or not
  if (value == '' || value!.isEmpty) {
    return 'Phone number field cannot be empty';
  }

  //check whether the length of the phone number is correct or not
  if (value.length != 10) {
    return "Enter valid phone number";
  }

  return null;
}

//Email Validation
String? emailVaildation(String? value) {
  //check whether the input string is empty or not
  if (value == '' || value!.isEmpty) {
    return 'Phone number field cannot be empty';
  }

  //check whether the email provided is valid or not
  var regexp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  if (!regexp.hasMatch(value)) {
    return 'Enter valid email';
  }

  return null;
}

