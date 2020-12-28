import 'package:disability/services/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:geolocator/geolocator.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  Position position;

  final _formKey = GlobalKey<FormBuilderState>();

  void _getLocation() async {
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((value) {
      setState(() {
        position = value;
      });
      return value;
    });
  }

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  bool showIdentityCardType = false;
  bool showSchoolType = false;
  List genderOptions = ["male".tr(), "female".tr(), "other".tr()];
  List _disableType = [
    "Autism".tr(),
    "Hemophilia".tr(),
    "Complete Blindness".tr(),
    "Blindness".tr(),
    "Low Vision".tr(),
    "Deaf".tr(),
    "Dull hearing".tr(),
    "Hearing Impaired".tr(),
    "Intellectual disability".tr(),
    "Psychosocial Disability".tr(),
    "Multiple Disabilites".tr(),
    "Cerebral Palsy".tr(),
    "Spinal Cord Paralysis".tr(),
    "Amputated or Small Hand or Leg".tr(),
    "Polio".tr(),
    "Muscular dystrophy".tr(),
    "Leprosy Affected".tr(),
    "other".tr()
  ];
  List _disableReason = [
    "From Birth".tr(),
    "After Being Sick".tr(),
    "Accident".tr(),
    "other".tr()
  ];
  void _identityCard(bool ctx) {
    if (ctx == true) {
      setState(() {
        showIdentityCardType = true;
      });
    } else {
      setState(() {
        showIdentityCardType = false;
      });
    }
  }

  void _education(ctx) {
    if (ctx == "Uneducated".tr()) {
      setState(() {
        showSchoolType = false;
      });
    } else {
      setState(() {
        showSchoolType = true;
      });
    }
  }

  List _disableIdentityCardType = [
    "Red".tr(),
    "Blue".tr(),
    "yellow".tr(),
    "White".tr()
  ];

  List _maritalStatus = [
    "Married".tr(),
    "Unmarried".tr(),
    "Divorced".tr(),
    "other".tr()
  ];
  List _educationStatus = [
    "Uneducated".tr(),
    "educated".tr(),
    "Primary Education".tr(),
    "Secondary Education".tr(),
    "Higher Secondary Education".tr(),
    "Higher Education".tr()
  ];
  List _schoolType = [
    "General School".tr(),
    "Special School".tr(),
    "College".tr(),
    "other".tr()
  ];
  List _occupation = [
    "Government Job".tr(),
    "Private Job".tr(),
    "Self Employed".tr(),
    "Daily Labour".tr(),
    "Agriculture".tr(),
    "Unemployed".tr(),
    "other".tr()
  ];
  List _socialBehavior = [
    "Very Good".tr(),
    "Good".tr(),
    "Ok".tr(),
    "Not Good".tr()
  ];
  List _socialActivity = [
    "Often Found".tr(),
    "Sometimes".tr(),
    "Not Found".tr()
  ];
  List _currentBusiness = [
    "Poultry farming".tr(),
    "Goat Rearing".tr(),
    "Bangur Rearing".tr(),
    "Vegetable Farming".tr(),
    "Grocery Store".tr(),
    "Home and Small Business".tr(),
    "Job".tr(),
    "other".tr()
  ];

  @override
  Widget build(BuildContext context) {
    Color _fillColor = Theme.of(context).brightness == Brightness.dark
        ? Theme.of(context).primaryColor
        : Colors.white;
    return Scaffold(
      appBar: AppBar(
        title: Text("addData".tr()),
      ),
      body: position != null
          ? SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: <Widget>[
                    FormBuilder(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 10),
                            child: Text(
                              'generalInformation'.tr(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          FormBuilderImagePicker(
                            name: "image",
                            maxImages: 1,
                            iconColor:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.blue,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "district",
                            initialValue: "Kaski",
                            decoration: InputDecoration(
                                labelText: "district".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "muncipality",
                            initialValue: "Pokhara-Lekhnath Metropolitan",
                            decoration: InputDecoration(
                                labelText: "muncipality".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "wardNo",
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: "wardNo".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "surveyDate",
                            initialValue: DateTime.now().toString(),
                            decoration: InputDecoration(
                                labelText: "surveyDate".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "personName",
                            decoration: InputDecoration(
                                labelText: "personName".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "birthDate",
                            decoration: InputDecoration(
                                labelText: "birthDate".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderDropdown(
                            name: 'gender',
                            decoration: InputDecoration(
                                labelText: "gender".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            // initialValue: 'Male',
                            allowClear: true,
                            hint: Text('selectGender'.tr()),
                            // validator: FormBuilderValidators.compose(
                            //     [FormBuilderValidators.required(context)]),
                            items: genderOptions
                                .map((gender) => DropdownMenuItem(
                                      value: gender,
                                      child: Text('$gender'),
                                    ))
                                .toList(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "currentAddress",
                            decoration: InputDecoration(
                                labelText: "currentAddress".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "parmanentAddress",
                            decoration: InputDecoration(
                                labelText: "parmanentAddress".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "careTaker",
                            decoration: InputDecoration(
                                labelText: "careTaker".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "formSpeaker",
                            decoration: InputDecoration(
                                labelText: "formSpeaker".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "formSpeakerRelation",
                            decoration: InputDecoration(
                                labelText: "formSpeakerRelation".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderPhoneField(
                            name: "phoneNumber",
                            defaultSelectedCountryIsoCode: "NP",
                            decoration: InputDecoration(
                                labelText: "phoneNumber".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 10),
                            child: Text(
                              'disableInformation'.tr(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderSearchableDropdown(
                            name: "disableType",
                            items: _disableType,
                            hint: "disableType".tr(),
                            decoration: InputDecoration(
                                labelText: "disableType".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderDropdown(
                            name: 'disableReason',
                            decoration: InputDecoration(
                                labelText: "disableReason".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            // initialValue: 'Male',
                            allowClear: true,
                            // validator: FormBuilderValidators.compose(
                            //     [FormBuilderValidators.required(context)]),
                            items: _disableReason
                                .map((reason) => DropdownMenuItem(
                                      value: reason,
                                      child: Text('$reason'),
                                    ))
                                .toList(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "disableStartAge",
                            decoration: InputDecoration(
                                labelText: "disableStartAge".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'hasdisableIdentityCard',
                              initialValue: false,
                              onChanged: _identityCard,
                              title: Text("hasdisableIdentityCard".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          showIdentityCardType != true
                              ? Container()
                              : FormBuilderDropdown(
                                  name: 'disableIdentityCardType',
                                  decoration: InputDecoration(
                                      labelText: "disableIdentityCardType".tr(),
                                      filled: true,
                                      fillColor: _fillColor,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  // initialValue: 'Male',
                                  allowClear: true,
                                  // validator: FormBuilderValidators.compose([
                                  //   FormBuilderValidators.required(context)
                                  // ]),
                                  items: _disableIdentityCardType
                                      .map((reason) => DropdownMenuItem(
                                            value: reason,
                                            child: Text('$reason'),
                                          ))
                                      .toList(),
                                ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderDropdown(
                            name: 'maritalStatus',
                            decoration: InputDecoration(
                                labelText: "maritalStatus".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            // initialValue: 'Male',
                            allowClear: true,
                            // validator: FormBuilderValidators.compose(
                            //     [FormBuilderValidators.required(context)]),
                            items: _maritalStatus
                                .map((status) => DropdownMenuItem(
                                      value: status,
                                      child: Text('$status'),
                                    ))
                                .toList(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderDropdown(
                            name: 'educationStatus',
                            decoration: InputDecoration(
                                labelText: "educationStatus".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            // initialValue: 'Male',
                            allowClear: true,
                            onChanged: _education,
                            // validator: FormBuilderValidators.compose(
                            //     [FormBuilderValidators.required(context)]),
                            items: _educationStatus
                                .map((status) => DropdownMenuItem(
                                      value: status,
                                      child: Text('$status'),
                                    ))
                                .toList(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          showSchoolType != true
                              ? Container()
                              : FormBuilderDropdown(
                                  name: 'schoolType',
                                  decoration: InputDecoration(
                                      labelText: "schoolType".tr(),
                                      filled: true,
                                      fillColor: _fillColor,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  // initialValue: 'Male',
                                  allowClear: true,
                                  // validator: FormBuilderValidators.compose([
                                  //   FormBuilderValidators.required(context)
                                  // ]),
                                  items: _schoolType
                                      .map((type) => DropdownMenuItem(
                                            value: type,
                                            child: Text('$type'),
                                          ))
                                      .toList(),
                                ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderDropdown(
                            name: 'occupationStatus',
                            decoration: InputDecoration(
                                labelText: "occupationStatus".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            // initialValue: 'Male',
                            allowClear: true,
                            onChanged: _education,
                            // validator: FormBuilderValidators.compose(
                            //     [FormBuilderValidators.required(context)]),
                            items: _occupation
                                .map((occupation) => DropdownMenuItem(
                                      value: occupation,
                                      child: Text('$occupation'),
                                    ))
                                .toList(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "disableIncome",
                            decoration: InputDecoration(
                                labelText: "disableIncome".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "disableFamilyIncome",
                            decoration: InputDecoration(
                                labelText:
                                    "Estimated disable Family Monthly Income",
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 10),
                            child: Text(
                              'informationAboutServices'.tr(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'nationalIdentityCard',
                              initialValue: false,
                              title: Text("nationalIdentityCard".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'awareNationalIdentityCard',
                              initialValue: false,
                              title: Text("awareNationalIdentityCard".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'birthCertificate',
                              initialValue: false,
                              title: Text("birthCertificate".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'awareBirthCertificate',
                              initialValue: false,
                              title: Text("awareBirthCertificate".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'marriageCertificate',
                              initialValue: false,
                              title: Text("marriageCertificate".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'awareMarriageCertificate',
                              initialValue: false,
                              title: Text("awareMarriageCertificate".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'voterIdCard',
                              initialValue: false,
                              title: Text("voterIdCard".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'awareVoterIdCard',
                              initialValue: false,
                              title: Text("awareVoterIdCard".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'disableIdCard',
                              initialValue: false,
                              title: Text("disableIdCard".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'awaredisableIdCard',
                              initialValue: false,
                              title: Text("awaredisableIdCard".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'socialSecurityAllowance',
                              initialValue: false,
                              title: Text("socialSecurityAllowance".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'awareSocialSecurityAllowance',
                              initialValue: false,
                              title: Text("awareSocialSecurityAllowance".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'bankAccount',
                              initialValue: false,
                              title: Text("bankAccount".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'awareBankAccount',
                              initialValue: false,
                              title: Text("awareBankAccount".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'healthInsurance',
                              initialValue: false,
                              title: Text("healthInsurance".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'awareHealthInsurance',
                              initialValue: false,
                              title: Text("awareHealthInsurance".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'landWealth',
                              initialValue: false,
                              title: Text("landWealth".tr())),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 10),
                            child: Text(
                              'socialBehavior'.tr(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderDropdown(
                            name: 'familyAndSocietyBehavior',
                            decoration: InputDecoration(
                                labelText: "familyAndSocietyBehavior".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            allowClear: true,
                            // validator: FormBuilderValidators.compose(
                            //     [FormBuilderValidators.required(context)]),
                            items: _socialBehavior
                                .map((behavior) => DropdownMenuItem(
                                      value: behavior,
                                      child: Text('$behavior'),
                                    ))
                                .toList(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderDropdown(
                            name: 'friendsBehavior',
                            decoration: InputDecoration(
                                labelText: "friendsBehavior".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            allowClear: true,
                            // validator: FormBuilderValidators.compose(
                            //     [FormBuilderValidators.required(context)]),
                            items: _socialBehavior
                                .map((behavior) => DropdownMenuItem(
                                      value: behavior,
                                      child: Text('$behavior'),
                                    ))
                                .toList(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderDropdown(
                            name: 'familyAndSocialActivity',
                            decoration: InputDecoration(
                                labelText: "familyAndSocialActivity".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            allowClear: true,
                            // validator: FormBuilderValidators.compose(
                            //     [FormBuilderValidators.required(context)]),
                            items: _socialActivity
                                .map((behavior) => DropdownMenuItem(
                                      value: behavior,
                                      child: Text('$behavior'),
                                    ))
                                .toList(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'voteInElection',
                              initialValue: false,
                              title: Text("voteInElection".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 10),
                            child: Text(
                              'healthAndRehabitation'.tr(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'usingMedicine',
                              initialValue: false,
                              title: Text("usingMedicine".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'providedMedicine',
                              initialValue: false,
                              title: Text("providedMedicine".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "providedMedicineDetail",
                            decoration: InputDecoration(
                                labelText: "providedMedicineDetail".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'freeService',
                              initialValue: false,
                              title: Text("freeService".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'usedAccessories',
                              initialValue: false,
                              title: Text("usedAccessories".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 10),
                            child: Text(
                              'incomeAndLivelihood'.tr(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'vocationalTraining',
                              initialValue: false,
                              title: Text("vocationalTraining".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "vocationTrainingDuration",
                            decoration: InputDecoration(
                                labelText: "vocationTrainingDuration".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'wishVocationalTraining',
                              initialValue: false,
                              title: Text("wishVocationalTraining".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "whichVocationalTraining",
                            decoration: InputDecoration(
                                labelText: "whichVocationalTraining".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderDropdown(
                            name: 'currentBusiness',
                            decoration: InputDecoration(
                                labelText: "currentBusiness".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            // initialValue: 'Male',
                            allowClear: true,
                            // validator: FormBuilderValidators.compose(
                            //     [FormBuilderValidators.required(context)]),
                            items: _currentBusiness
                                .map((business) => DropdownMenuItem(
                                      value: business,
                                      child: Text('$business'),
                                    ))
                                .toList(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'businessSupport',
                              initialValue: false,
                              title: Text("businessSupport".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "businessSupportDetail",
                            decoration: InputDecoration(
                                labelText: "businessSupportDetail".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 10),
                            child: Text(
                              'forSchoolGoingChildren'.tr(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'schoolFees',
                              initialValue: false,
                              title: Text("schoolFees".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'schoolScholarship',
                              initialValue: false,
                              title: Text("schoolScholarship".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'schoolTransport',
                              initialValue: false,
                              title: Text("schoolTransport".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'schoolAccessability',
                              initialValue: false,
                              title: Text("schoolAccessability".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'schoolClubParticipation',
                              initialValue: false,
                              title: Text("schoolClubParticipation".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'schoolExtracurricularActivities',
                              initialValue: false,
                              title:
                                  Text("schoolExtracurricularActivities".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 10),
                            child: Text(
                              'rightsAndEmpowerment'.tr(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'disableRightsAndLaw',
                              initialValue: false,
                              title: Text("disableRightsAndLaw".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'nepalGovernmentServices',
                              initialValue: false,
                              title: Text("nepalGovernmentServices".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'complain',
                              initialValue: false,
                              title: Text("complain".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'partOfDisableGroup',
                              initialValue: false,
                              title: Text("partOfDisableGroup".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'takenTraining',
                              initialValue: false,
                              title: Text("takenTraining".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'memberOfGroup',
                              initialValue: false,
                              title: Text("memberOfGroup".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderCheckbox(
                              name: 'leadershipPosition',
                              initialValue: false,
                              title: Text("leadershipPosition".tr())),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "lat",
                            keyboardType: TextInputType.number,
                            initialValue: position.latitude.toString(),
                            decoration: InputDecoration(
                                labelText: "lat".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "lng",
                            keyboardType: TextInputType.number,
                            initialValue: position.longitude.toString(),
                            decoration: InputDecoration(
                                labelText: "lng".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilderTextField(
                            name: "surveyorName",
                            decoration: InputDecoration(
                                labelText: "surveyorName".tr(),
                                filled: true,
                                fillColor: _fillColor,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: MaterialButton(
                                  color: Theme.of(context).accentColor,
                                  child: Text(
                                    "submit".tr(),
                                    style: TextStyle(color: _fillColor),
                                  ),
                                  onPressed: () {
                                    _formKey.currentState.save();
                                    if (_formKey.currentState.validate()) {
                                      print(_formKey.currentState.value);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Data(),
                                            settings: RouteSettings(
                                              arguments:
                                                  _formKey.currentState.value,
                                            ),
                                          ));
                                    } else {
                                      print("validation failed");
                                    }
                                  },
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: MaterialButton(
                                  color: Theme.of(context).accentColor,
                                  child: Text(
                                    "reset".tr(),
                                    style: TextStyle(color: _fillColor),
                                  ),
                                  onPressed: () {
                                    _formKey.currentState.reset();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ),
    );
  }
}
