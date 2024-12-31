import 'package:flutter/material.dart';
import 'f_validation_functs.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final _namecontroller = TextEditingController();
  final _agecontroller = TextEditingController();
  final _phcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _emailcontroller = TextEditingController();
  final _pnamecontroller = TextEditingController();
  var genresponse = '';
  var ecresponse = '';
  var tcresponse = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Badminton Tournament",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "We are excited to announce the Open Badminton Tournament for players aged 18 and above! Join us for a thrilling day of competition and fun at the Andheri Sports Complex on 16th January 2025. This event is open to all badminton enthusiasts, offering a fantastic opportunity to showcase your skills and compete against fellow players. Whether you're a seasoned player or just looking to challenge yourself, this tournament promises a high-energy atmosphere, fantastic prizes, and memorable moments. ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Full Name",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 100,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _namecontroller,
                  validator: validatefname,
                  decoration: InputDecoration(
                      hintText: "Enter name",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                              style: BorderStyle.solid))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 100,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _agecontroller,
                  validator: ageValidation,
                  decoration: InputDecoration(
                      hintText: "Enter age",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                              style: BorderStyle.solid))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Gender",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 100,
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 'Male',
                        groupValue: genresponse,
                        onChanged: (values) {
                          setState(() {
                            genresponse = 'Male';
                          });
                        }),
                    Text(
                      "Male",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Radio(
                        value: 'Female',
                        groupValue: genresponse,
                        onChanged: (values) {
                          setState(() {
                            genresponse = 'Female';
                          });
                        }),
                    Text(
                      "Female",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Phone Number",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 100,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _phcontroller,
                  validator: pnValidation,
                  decoration: InputDecoration(
                      hintText: "Enter phone number",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                              style: BorderStyle.solid))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 100,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _emailcontroller,
                  validator: emailVaildation,
                  decoration: InputDecoration(
                      hintText: "jason1@gmail.com",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                              style: BorderStyle.solid))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Event Category",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 100,
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 'Singles',
                        groupValue: ecresponse,
                        onChanged: (values) {
                          setState(() {
                            ecresponse = 'Singles';
                          });
                        }),
                    Text(
                      "Singles",
                      style: TextStyle(fontSize: 14),
                    ),
                    Radio(
                        value: 'Doubles',
                        groupValue: ecresponse,
                        onChanged: (values) {
                          setState(() {
                            ecresponse = 'Doubles';
                          });
                        }),
                    Text(
                      "Doubles",
                      style: TextStyle(fontSize: 14),
                    ),
                    Radio(
                        value: 'Mixed Doubles',
                        groupValue: ecresponse,
                        onChanged: (values) {
                          setState(() {
                            ecresponse = 'Mixed Doubles';
                          });
                        }),
                    Text(
                      "Mixed Doubles",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Partner's name",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 100,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _pnamecontroller,
                  validator: null,
                  decoration: InputDecoration(
                      hintText: "Enter Partner's Name",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                              style: BorderStyle.solid))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Terms and Conditions",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 100,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1. By registering, participants agree to abide by all tournament rules and regulations.",
                    ),
                    Text(
                      "2. Registration is confirmed only upon payment of the entry fee, which is non-refundable unless the tournament is canceled.",
                    ),
                    Text(
                      "3. Minors (under 18) must provide written consent from a parent or guardian.",
                    ),
                    Text(
                      "4. Matches will follow official badminton rules, and players must adhere to the schedule provided.",
                    ),
                    Text(
                      "5. Participants must demonstrate good sportsmanship; unsportsmanlike behavior may result in disqualification.",
                    ),
                    Text(
                      "6. The organizers are not liable for injuries, damages, or losses during the event.",
                    ),
                    Text(
                      "7. Players grant permission for their photos and videos to be used for promotional purposes unless opted out in writing.",
                    ),
                    Text(
                      "8. Prizes will be awarded to winners as stated but may be adjusted for rule violations.",
                    ),
                    Text(
                      "9. The tournament may be rescheduled or canceled due to unforeseen circumstances, with fees refunded if canceled.",
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Please accept the Terms and Conditions",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 90,
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 'Yes',
                        groupValue: tcresponse,
                        onChanged: (values) {
                          setState(() {
                            tcresponse = 'Yes';
                          });
                        }),
                    Text(
                      "Yes",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Radio(
                        value: 'No',
                        groupValue: tcresponse,
                        onChanged: (values) {
                          setState(() {
                            tcresponse = 'No';
                          });
                        }),
                    Text(
                      "No",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.green)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Validity Passed!")));
                      }
                      if (tcresponse == "Yes") {}
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
