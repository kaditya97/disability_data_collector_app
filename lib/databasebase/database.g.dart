// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Task extends DataClass implements Insertable<Task> {
  final int id;
  final String district;
  final String muncipality;
  final int name;
  final String surveyDate;
  final String personName;
  final String birthDate;
  final String gender;
  final String currentAddress;
  final String parmanentAddress;
  final String careTaker;
  final String formSpeaker;
  final String formSpeakerRelation;
  final String phoneNumber;
  final String disableType;
  final String disableReason;
  final int disableStartAge;
  final bool hasdisableIdentityCard;
  final String disableIdentityCardType;
  final String maritalStatus;
  final String educationStatus;
  final String schoolType;
  final String occupationStatus;
  final int disableIncome;
  final int disableFamilyIncome;
  final bool nationalIdentityCard;
  final bool awareNationalIdentityCard;
  final bool birthCertificate;
  final bool awareBirthCertificate;
  final bool marriageCertificate;
  final bool awareMarriageCertificate;
  final bool voterIdCard;
  final bool awareVoterIdCard;
  final bool disableIdCard;
  final bool awaredisableIdCard;
  final bool socialSecurityAllowance;
  final bool awareSocialSecurityAllowance;
  final bool bankAccount;
  final bool awareBankAccount;
  final bool healthInsurance;
  final bool awareHealthInsurance;
  final bool landWealth;
  final String familyAndSocietyBehavior;
  final String friendsBehavior;
  final String familyAndSocialActivity;
  final bool voteInElection;
  final bool usingMedicine;
  final bool providedMedicine;
  final bool providedMedicineDetail;
  final bool freeService;
  final bool usedAccessories;
  final bool vocationalTraining;
  final String vocationTrainingDuration;
  final bool wishVocationalTraining;
  final String whichVocationalTraining;
  final String currentBusiness;
  final bool businessSupport;
  final String businessSupportDetail;
  final bool schoolFees;
  final bool schoolScholarship;
  final bool schoolTransport;
  final bool schoolAccessability;
  final bool schoolClubParticipation;
  final bool schoolExtracurricularActivities;
  final bool disableRightsAndLaw;
  final bool nepalGovernmentServices;
  final bool complain;
  final bool partOfDisableGroup;
  final bool takenTraining;
  final bool memberOfGroup;
  final bool leadershipPosition;
  final String lat;
  final String lng;
  final String surveyorName;
  final String img;
  Task(
      {@required this.id,
      this.district,
      this.muncipality,
      this.name,
      this.surveyDate,
      this.personName,
      this.birthDate,
      this.gender,
      this.currentAddress,
      this.parmanentAddress,
      this.careTaker,
      this.formSpeaker,
      this.formSpeakerRelation,
      this.phoneNumber,
      this.disableType,
      this.disableReason,
      this.disableStartAge,
      @required this.hasdisableIdentityCard,
      this.disableIdentityCardType,
      this.maritalStatus,
      this.educationStatus,
      this.schoolType,
      this.occupationStatus,
      this.disableIncome,
      this.disableFamilyIncome,
      @required this.nationalIdentityCard,
      @required this.awareNationalIdentityCard,
      @required this.birthCertificate,
      @required this.awareBirthCertificate,
      @required this.marriageCertificate,
      @required this.awareMarriageCertificate,
      @required this.voterIdCard,
      @required this.awareVoterIdCard,
      @required this.disableIdCard,
      @required this.awaredisableIdCard,
      @required this.socialSecurityAllowance,
      @required this.awareSocialSecurityAllowance,
      @required this.bankAccount,
      @required this.awareBankAccount,
      @required this.healthInsurance,
      @required this.awareHealthInsurance,
      @required this.landWealth,
      this.familyAndSocietyBehavior,
      this.friendsBehavior,
      this.familyAndSocialActivity,
      @required this.voteInElection,
      @required this.usingMedicine,
      @required this.providedMedicine,
      @required this.providedMedicineDetail,
      @required this.freeService,
      @required this.usedAccessories,
      @required this.vocationalTraining,
      this.vocationTrainingDuration,
      @required this.wishVocationalTraining,
      this.whichVocationalTraining,
      this.currentBusiness,
      @required this.businessSupport,
      this.businessSupportDetail,
      @required this.schoolFees,
      @required this.schoolScholarship,
      @required this.schoolTransport,
      @required this.schoolAccessability,
      @required this.schoolClubParticipation,
      @required this.schoolExtracurricularActivities,
      @required this.disableRightsAndLaw,
      @required this.nepalGovernmentServices,
      @required this.complain,
      @required this.partOfDisableGroup,
      @required this.takenTraining,
      @required this.memberOfGroup,
      @required this.leadershipPosition,
      this.lat,
      this.lng,
      this.surveyorName,
      this.img});
  factory Task.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Task(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      district: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}district']),
      muncipality: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}muncipality']),
      name: intType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      surveyDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}survey_date']),
      personName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}person_name']),
      birthDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}birth_date']),
      gender:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}gender']),
      currentAddress: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}current_address']),
      parmanentAddress: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}parmanent_address']),
      careTaker: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}care_taker']),
      formSpeaker: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}form_speaker']),
      formSpeakerRelation: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}form_speaker_relation']),
      phoneNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}phone_number']),
      disableType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}disable_type']),
      disableReason: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}disable_reason']),
      disableStartAge: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}disable_start_age']),
      hasdisableIdentityCard: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}hasdisable_identity_card']),
      disableIdentityCardType: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}disable_identity_card_type']),
      maritalStatus: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}marital_status']),
      educationStatus: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}education_status']),
      schoolType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}school_type']),
      occupationStatus: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}occupation_status']),
      disableIncome: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}disable_income']),
      disableFamilyIncome: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}disable_family_income']),
      nationalIdentityCard: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}national_identity_card']),
      awareNationalIdentityCard: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}aware_national_identity_card']),
      birthCertificate: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}birth_certificate']),
      awareBirthCertificate: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}aware_birth_certificate']),
      marriageCertificate: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}marriage_certificate']),
      awareMarriageCertificate: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}aware_marriage_certificate']),
      voterIdCard: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}voter_id_card']),
      awareVoterIdCard: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}aware_voter_id_card']),
      disableIdCard: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}disable_id_card']),
      awaredisableIdCard: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}awaredisable_id_card']),
      socialSecurityAllowance: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}social_security_allowance']),
      awareSocialSecurityAllowance: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}aware_social_security_allowance']),
      bankAccount: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}bank_account']),
      awareBankAccount: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}aware_bank_account']),
      healthInsurance: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}health_insurance']),
      awareHealthInsurance: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}aware_health_insurance']),
      landWealth: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}land_wealth']),
      familyAndSocietyBehavior: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}family_and_society_behavior']),
      friendsBehavior: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}friends_behavior']),
      familyAndSocialActivity: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}family_and_social_activity']),
      voteInElection: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}vote_in_election']),
      usingMedicine: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}using_medicine']),
      providedMedicine: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}provided_medicine']),
      providedMedicineDetail: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}provided_medicine_detail']),
      freeService: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}free_service']),
      usedAccessories: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}used_accessories']),
      vocationalTraining: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}vocational_training']),
      vocationTrainingDuration: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}vocation_training_duration']),
      wishVocationalTraining: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}wish_vocational_training']),
      whichVocationalTraining: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}which_vocational_training']),
      currentBusiness: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}current_business']),
      businessSupport: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}business_support']),
      businessSupportDetail: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}business_support_detail']),
      schoolFees: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}school_fees']),
      schoolScholarship: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}school_scholarship']),
      schoolTransport: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}school_transport']),
      schoolAccessability: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}school_accessability']),
      schoolClubParticipation: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}school_club_participation']),
      schoolExtracurricularActivities: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}school_extracurricular_activities']),
      disableRightsAndLaw: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}disable_rights_and_law']),
      nepalGovernmentServices: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}nepal_government_services']),
      complain:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}complain']),
      partOfDisableGroup: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}part_of_disable_group']),
      takenTraining: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}taken_training']),
      memberOfGroup: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}member_of_group']),
      leadershipPosition: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}leadership_position']),
      lat: stringType.mapFromDatabaseResponse(data['${effectivePrefix}lat']),
      lng: stringType.mapFromDatabaseResponse(data['${effectivePrefix}lng']),
      surveyorName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}surveyor_name']),
      img: stringType.mapFromDatabaseResponse(data['${effectivePrefix}img']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || district != null) {
      map['district'] = Variable<String>(district);
    }
    if (!nullToAbsent || muncipality != null) {
      map['muncipality'] = Variable<String>(muncipality);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<int>(name);
    }
    if (!nullToAbsent || surveyDate != null) {
      map['survey_date'] = Variable<String>(surveyDate);
    }
    if (!nullToAbsent || personName != null) {
      map['person_name'] = Variable<String>(personName);
    }
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<String>(birthDate);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String>(gender);
    }
    if (!nullToAbsent || currentAddress != null) {
      map['current_address'] = Variable<String>(currentAddress);
    }
    if (!nullToAbsent || parmanentAddress != null) {
      map['parmanent_address'] = Variable<String>(parmanentAddress);
    }
    if (!nullToAbsent || careTaker != null) {
      map['care_taker'] = Variable<String>(careTaker);
    }
    if (!nullToAbsent || formSpeaker != null) {
      map['form_speaker'] = Variable<String>(formSpeaker);
    }
    if (!nullToAbsent || formSpeakerRelation != null) {
      map['form_speaker_relation'] = Variable<String>(formSpeakerRelation);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    if (!nullToAbsent || disableType != null) {
      map['disable_type'] = Variable<String>(disableType);
    }
    if (!nullToAbsent || disableReason != null) {
      map['disable_reason'] = Variable<String>(disableReason);
    }
    if (!nullToAbsent || disableStartAge != null) {
      map['disable_start_age'] = Variable<int>(disableStartAge);
    }
    if (!nullToAbsent || hasdisableIdentityCard != null) {
      map['hasdisable_identity_card'] = Variable<bool>(hasdisableIdentityCard);
    }
    if (!nullToAbsent || disableIdentityCardType != null) {
      map['disable_identity_card_type'] =
          Variable<String>(disableIdentityCardType);
    }
    if (!nullToAbsent || maritalStatus != null) {
      map['marital_status'] = Variable<String>(maritalStatus);
    }
    if (!nullToAbsent || educationStatus != null) {
      map['education_status'] = Variable<String>(educationStatus);
    }
    if (!nullToAbsent || schoolType != null) {
      map['school_type'] = Variable<String>(schoolType);
    }
    if (!nullToAbsent || occupationStatus != null) {
      map['occupation_status'] = Variable<String>(occupationStatus);
    }
    if (!nullToAbsent || disableIncome != null) {
      map['disable_income'] = Variable<int>(disableIncome);
    }
    if (!nullToAbsent || disableFamilyIncome != null) {
      map['disable_family_income'] = Variable<int>(disableFamilyIncome);
    }
    if (!nullToAbsent || nationalIdentityCard != null) {
      map['national_identity_card'] = Variable<bool>(nationalIdentityCard);
    }
    if (!nullToAbsent || awareNationalIdentityCard != null) {
      map['aware_national_identity_card'] =
          Variable<bool>(awareNationalIdentityCard);
    }
    if (!nullToAbsent || birthCertificate != null) {
      map['birth_certificate'] = Variable<bool>(birthCertificate);
    }
    if (!nullToAbsent || awareBirthCertificate != null) {
      map['aware_birth_certificate'] = Variable<bool>(awareBirthCertificate);
    }
    if (!nullToAbsent || marriageCertificate != null) {
      map['marriage_certificate'] = Variable<bool>(marriageCertificate);
    }
    if (!nullToAbsent || awareMarriageCertificate != null) {
      map['aware_marriage_certificate'] =
          Variable<bool>(awareMarriageCertificate);
    }
    if (!nullToAbsent || voterIdCard != null) {
      map['voter_id_card'] = Variable<bool>(voterIdCard);
    }
    if (!nullToAbsent || awareVoterIdCard != null) {
      map['aware_voter_id_card'] = Variable<bool>(awareVoterIdCard);
    }
    if (!nullToAbsent || disableIdCard != null) {
      map['disable_id_card'] = Variable<bool>(disableIdCard);
    }
    if (!nullToAbsent || awaredisableIdCard != null) {
      map['awaredisable_id_card'] = Variable<bool>(awaredisableIdCard);
    }
    if (!nullToAbsent || socialSecurityAllowance != null) {
      map['social_security_allowance'] =
          Variable<bool>(socialSecurityAllowance);
    }
    if (!nullToAbsent || awareSocialSecurityAllowance != null) {
      map['aware_social_security_allowance'] =
          Variable<bool>(awareSocialSecurityAllowance);
    }
    if (!nullToAbsent || bankAccount != null) {
      map['bank_account'] = Variable<bool>(bankAccount);
    }
    if (!nullToAbsent || awareBankAccount != null) {
      map['aware_bank_account'] = Variable<bool>(awareBankAccount);
    }
    if (!nullToAbsent || healthInsurance != null) {
      map['health_insurance'] = Variable<bool>(healthInsurance);
    }
    if (!nullToAbsent || awareHealthInsurance != null) {
      map['aware_health_insurance'] = Variable<bool>(awareHealthInsurance);
    }
    if (!nullToAbsent || landWealth != null) {
      map['land_wealth'] = Variable<bool>(landWealth);
    }
    if (!nullToAbsent || familyAndSocietyBehavior != null) {
      map['family_and_society_behavior'] =
          Variable<String>(familyAndSocietyBehavior);
    }
    if (!nullToAbsent || friendsBehavior != null) {
      map['friends_behavior'] = Variable<String>(friendsBehavior);
    }
    if (!nullToAbsent || familyAndSocialActivity != null) {
      map['family_and_social_activity'] =
          Variable<String>(familyAndSocialActivity);
    }
    if (!nullToAbsent || voteInElection != null) {
      map['vote_in_election'] = Variable<bool>(voteInElection);
    }
    if (!nullToAbsent || usingMedicine != null) {
      map['using_medicine'] = Variable<bool>(usingMedicine);
    }
    if (!nullToAbsent || providedMedicine != null) {
      map['provided_medicine'] = Variable<bool>(providedMedicine);
    }
    if (!nullToAbsent || providedMedicineDetail != null) {
      map['provided_medicine_detail'] = Variable<bool>(providedMedicineDetail);
    }
    if (!nullToAbsent || freeService != null) {
      map['free_service'] = Variable<bool>(freeService);
    }
    if (!nullToAbsent || usedAccessories != null) {
      map['used_accessories'] = Variable<bool>(usedAccessories);
    }
    if (!nullToAbsent || vocationalTraining != null) {
      map['vocational_training'] = Variable<bool>(vocationalTraining);
    }
    if (!nullToAbsent || vocationTrainingDuration != null) {
      map['vocation_training_duration'] =
          Variable<String>(vocationTrainingDuration);
    }
    if (!nullToAbsent || wishVocationalTraining != null) {
      map['wish_vocational_training'] = Variable<bool>(wishVocationalTraining);
    }
    if (!nullToAbsent || whichVocationalTraining != null) {
      map['which_vocational_training'] =
          Variable<String>(whichVocationalTraining);
    }
    if (!nullToAbsent || currentBusiness != null) {
      map['current_business'] = Variable<String>(currentBusiness);
    }
    if (!nullToAbsent || businessSupport != null) {
      map['business_support'] = Variable<bool>(businessSupport);
    }
    if (!nullToAbsent || businessSupportDetail != null) {
      map['business_support_detail'] = Variable<String>(businessSupportDetail);
    }
    if (!nullToAbsent || schoolFees != null) {
      map['school_fees'] = Variable<bool>(schoolFees);
    }
    if (!nullToAbsent || schoolScholarship != null) {
      map['school_scholarship'] = Variable<bool>(schoolScholarship);
    }
    if (!nullToAbsent || schoolTransport != null) {
      map['school_transport'] = Variable<bool>(schoolTransport);
    }
    if (!nullToAbsent || schoolAccessability != null) {
      map['school_accessability'] = Variable<bool>(schoolAccessability);
    }
    if (!nullToAbsent || schoolClubParticipation != null) {
      map['school_club_participation'] =
          Variable<bool>(schoolClubParticipation);
    }
    if (!nullToAbsent || schoolExtracurricularActivities != null) {
      map['school_extracurricular_activities'] =
          Variable<bool>(schoolExtracurricularActivities);
    }
    if (!nullToAbsent || disableRightsAndLaw != null) {
      map['disable_rights_and_law'] = Variable<bool>(disableRightsAndLaw);
    }
    if (!nullToAbsent || nepalGovernmentServices != null) {
      map['nepal_government_services'] =
          Variable<bool>(nepalGovernmentServices);
    }
    if (!nullToAbsent || complain != null) {
      map['complain'] = Variable<bool>(complain);
    }
    if (!nullToAbsent || partOfDisableGroup != null) {
      map['part_of_disable_group'] = Variable<bool>(partOfDisableGroup);
    }
    if (!nullToAbsent || takenTraining != null) {
      map['taken_training'] = Variable<bool>(takenTraining);
    }
    if (!nullToAbsent || memberOfGroup != null) {
      map['member_of_group'] = Variable<bool>(memberOfGroup);
    }
    if (!nullToAbsent || leadershipPosition != null) {
      map['leadership_position'] = Variable<bool>(leadershipPosition);
    }
    if (!nullToAbsent || lat != null) {
      map['lat'] = Variable<String>(lat);
    }
    if (!nullToAbsent || lng != null) {
      map['lng'] = Variable<String>(lng);
    }
    if (!nullToAbsent || surveyorName != null) {
      map['surveyor_name'] = Variable<String>(surveyorName);
    }
    if (!nullToAbsent || img != null) {
      map['img'] = Variable<String>(img);
    }
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      district: district == null && nullToAbsent
          ? const Value.absent()
          : Value(district),
      muncipality: muncipality == null && nullToAbsent
          ? const Value.absent()
          : Value(muncipality),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      surveyDate: surveyDate == null && nullToAbsent
          ? const Value.absent()
          : Value(surveyDate),
      personName: personName == null && nullToAbsent
          ? const Value.absent()
          : Value(personName),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      currentAddress: currentAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(currentAddress),
      parmanentAddress: parmanentAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(parmanentAddress),
      careTaker: careTaker == null && nullToAbsent
          ? const Value.absent()
          : Value(careTaker),
      formSpeaker: formSpeaker == null && nullToAbsent
          ? const Value.absent()
          : Value(formSpeaker),
      formSpeakerRelation: formSpeakerRelation == null && nullToAbsent
          ? const Value.absent()
          : Value(formSpeakerRelation),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      disableType: disableType == null && nullToAbsent
          ? const Value.absent()
          : Value(disableType),
      disableReason: disableReason == null && nullToAbsent
          ? const Value.absent()
          : Value(disableReason),
      disableStartAge: disableStartAge == null && nullToAbsent
          ? const Value.absent()
          : Value(disableStartAge),
      hasdisableIdentityCard: hasdisableIdentityCard == null && nullToAbsent
          ? const Value.absent()
          : Value(hasdisableIdentityCard),
      disableIdentityCardType: disableIdentityCardType == null && nullToAbsent
          ? const Value.absent()
          : Value(disableIdentityCardType),
      maritalStatus: maritalStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(maritalStatus),
      educationStatus: educationStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(educationStatus),
      schoolType: schoolType == null && nullToAbsent
          ? const Value.absent()
          : Value(schoolType),
      occupationStatus: occupationStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(occupationStatus),
      disableIncome: disableIncome == null && nullToAbsent
          ? const Value.absent()
          : Value(disableIncome),
      disableFamilyIncome: disableFamilyIncome == null && nullToAbsent
          ? const Value.absent()
          : Value(disableFamilyIncome),
      nationalIdentityCard: nationalIdentityCard == null && nullToAbsent
          ? const Value.absent()
          : Value(nationalIdentityCard),
      awareNationalIdentityCard:
          awareNationalIdentityCard == null && nullToAbsent
              ? const Value.absent()
              : Value(awareNationalIdentityCard),
      birthCertificate: birthCertificate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthCertificate),
      awareBirthCertificate: awareBirthCertificate == null && nullToAbsent
          ? const Value.absent()
          : Value(awareBirthCertificate),
      marriageCertificate: marriageCertificate == null && nullToAbsent
          ? const Value.absent()
          : Value(marriageCertificate),
      awareMarriageCertificate: awareMarriageCertificate == null && nullToAbsent
          ? const Value.absent()
          : Value(awareMarriageCertificate),
      voterIdCard: voterIdCard == null && nullToAbsent
          ? const Value.absent()
          : Value(voterIdCard),
      awareVoterIdCard: awareVoterIdCard == null && nullToAbsent
          ? const Value.absent()
          : Value(awareVoterIdCard),
      disableIdCard: disableIdCard == null && nullToAbsent
          ? const Value.absent()
          : Value(disableIdCard),
      awaredisableIdCard: awaredisableIdCard == null && nullToAbsent
          ? const Value.absent()
          : Value(awaredisableIdCard),
      socialSecurityAllowance: socialSecurityAllowance == null && nullToAbsent
          ? const Value.absent()
          : Value(socialSecurityAllowance),
      awareSocialSecurityAllowance:
          awareSocialSecurityAllowance == null && nullToAbsent
              ? const Value.absent()
              : Value(awareSocialSecurityAllowance),
      bankAccount: bankAccount == null && nullToAbsent
          ? const Value.absent()
          : Value(bankAccount),
      awareBankAccount: awareBankAccount == null && nullToAbsent
          ? const Value.absent()
          : Value(awareBankAccount),
      healthInsurance: healthInsurance == null && nullToAbsent
          ? const Value.absent()
          : Value(healthInsurance),
      awareHealthInsurance: awareHealthInsurance == null && nullToAbsent
          ? const Value.absent()
          : Value(awareHealthInsurance),
      landWealth: landWealth == null && nullToAbsent
          ? const Value.absent()
          : Value(landWealth),
      familyAndSocietyBehavior: familyAndSocietyBehavior == null && nullToAbsent
          ? const Value.absent()
          : Value(familyAndSocietyBehavior),
      friendsBehavior: friendsBehavior == null && nullToAbsent
          ? const Value.absent()
          : Value(friendsBehavior),
      familyAndSocialActivity: familyAndSocialActivity == null && nullToAbsent
          ? const Value.absent()
          : Value(familyAndSocialActivity),
      voteInElection: voteInElection == null && nullToAbsent
          ? const Value.absent()
          : Value(voteInElection),
      usingMedicine: usingMedicine == null && nullToAbsent
          ? const Value.absent()
          : Value(usingMedicine),
      providedMedicine: providedMedicine == null && nullToAbsent
          ? const Value.absent()
          : Value(providedMedicine),
      providedMedicineDetail: providedMedicineDetail == null && nullToAbsent
          ? const Value.absent()
          : Value(providedMedicineDetail),
      freeService: freeService == null && nullToAbsent
          ? const Value.absent()
          : Value(freeService),
      usedAccessories: usedAccessories == null && nullToAbsent
          ? const Value.absent()
          : Value(usedAccessories),
      vocationalTraining: vocationalTraining == null && nullToAbsent
          ? const Value.absent()
          : Value(vocationalTraining),
      vocationTrainingDuration: vocationTrainingDuration == null && nullToAbsent
          ? const Value.absent()
          : Value(vocationTrainingDuration),
      wishVocationalTraining: wishVocationalTraining == null && nullToAbsent
          ? const Value.absent()
          : Value(wishVocationalTraining),
      whichVocationalTraining: whichVocationalTraining == null && nullToAbsent
          ? const Value.absent()
          : Value(whichVocationalTraining),
      currentBusiness: currentBusiness == null && nullToAbsent
          ? const Value.absent()
          : Value(currentBusiness),
      businessSupport: businessSupport == null && nullToAbsent
          ? const Value.absent()
          : Value(businessSupport),
      businessSupportDetail: businessSupportDetail == null && nullToAbsent
          ? const Value.absent()
          : Value(businessSupportDetail),
      schoolFees: schoolFees == null && nullToAbsent
          ? const Value.absent()
          : Value(schoolFees),
      schoolScholarship: schoolScholarship == null && nullToAbsent
          ? const Value.absent()
          : Value(schoolScholarship),
      schoolTransport: schoolTransport == null && nullToAbsent
          ? const Value.absent()
          : Value(schoolTransport),
      schoolAccessability: schoolAccessability == null && nullToAbsent
          ? const Value.absent()
          : Value(schoolAccessability),
      schoolClubParticipation: schoolClubParticipation == null && nullToAbsent
          ? const Value.absent()
          : Value(schoolClubParticipation),
      schoolExtracurricularActivities:
          schoolExtracurricularActivities == null && nullToAbsent
              ? const Value.absent()
              : Value(schoolExtracurricularActivities),
      disableRightsAndLaw: disableRightsAndLaw == null && nullToAbsent
          ? const Value.absent()
          : Value(disableRightsAndLaw),
      nepalGovernmentServices: nepalGovernmentServices == null && nullToAbsent
          ? const Value.absent()
          : Value(nepalGovernmentServices),
      complain: complain == null && nullToAbsent
          ? const Value.absent()
          : Value(complain),
      partOfDisableGroup: partOfDisableGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(partOfDisableGroup),
      takenTraining: takenTraining == null && nullToAbsent
          ? const Value.absent()
          : Value(takenTraining),
      memberOfGroup: memberOfGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(memberOfGroup),
      leadershipPosition: leadershipPosition == null && nullToAbsent
          ? const Value.absent()
          : Value(leadershipPosition),
      lat: lat == null && nullToAbsent ? const Value.absent() : Value(lat),
      lng: lng == null && nullToAbsent ? const Value.absent() : Value(lng),
      surveyorName: surveyorName == null && nullToAbsent
          ? const Value.absent()
          : Value(surveyorName),
      img: img == null && nullToAbsent ? const Value.absent() : Value(img),
    );
  }

  factory Task.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Task(
      id: serializer.fromJson<int>(json['id']),
      district: serializer.fromJson<String>(json['district']),
      muncipality: serializer.fromJson<String>(json['muncipality']),
      name: serializer.fromJson<int>(json['name']),
      surveyDate: serializer.fromJson<String>(json['surveyDate']),
      personName: serializer.fromJson<String>(json['personName']),
      birthDate: serializer.fromJson<String>(json['birthDate']),
      gender: serializer.fromJson<String>(json['gender']),
      currentAddress: serializer.fromJson<String>(json['currentAddress']),
      parmanentAddress: serializer.fromJson<String>(json['parmanentAddress']),
      careTaker: serializer.fromJson<String>(json['careTaker']),
      formSpeaker: serializer.fromJson<String>(json['formSpeaker']),
      formSpeakerRelation:
          serializer.fromJson<String>(json['formSpeakerRelation']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      disableType: serializer.fromJson<String>(json['disableType']),
      disableReason: serializer.fromJson<String>(json['disableReason']),
      disableStartAge: serializer.fromJson<int>(json['disableStartAge']),
      hasdisableIdentityCard:
          serializer.fromJson<bool>(json['hasdisableIdentityCard']),
      disableIdentityCardType:
          serializer.fromJson<String>(json['disableIdentityCardType']),
      maritalStatus: serializer.fromJson<String>(json['maritalStatus']),
      educationStatus: serializer.fromJson<String>(json['educationStatus']),
      schoolType: serializer.fromJson<String>(json['schoolType']),
      occupationStatus: serializer.fromJson<String>(json['occupationStatus']),
      disableIncome: serializer.fromJson<int>(json['disableIncome']),
      disableFamilyIncome:
          serializer.fromJson<int>(json['disableFamilyIncome']),
      nationalIdentityCard:
          serializer.fromJson<bool>(json['nationalIdentityCard']),
      awareNationalIdentityCard:
          serializer.fromJson<bool>(json['awareNationalIdentityCard']),
      birthCertificate: serializer.fromJson<bool>(json['birthCertificate']),
      awareBirthCertificate:
          serializer.fromJson<bool>(json['awareBirthCertificate']),
      marriageCertificate:
          serializer.fromJson<bool>(json['marriageCertificate']),
      awareMarriageCertificate:
          serializer.fromJson<bool>(json['awareMarriageCertificate']),
      voterIdCard: serializer.fromJson<bool>(json['voterIdCard']),
      awareVoterIdCard: serializer.fromJson<bool>(json['awareVoterIdCard']),
      disableIdCard: serializer.fromJson<bool>(json['disableIdCard']),
      awaredisableIdCard: serializer.fromJson<bool>(json['awaredisableIdCard']),
      socialSecurityAllowance:
          serializer.fromJson<bool>(json['socialSecurityAllowance']),
      awareSocialSecurityAllowance:
          serializer.fromJson<bool>(json['awareSocialSecurityAllowance']),
      bankAccount: serializer.fromJson<bool>(json['bankAccount']),
      awareBankAccount: serializer.fromJson<bool>(json['awareBankAccount']),
      healthInsurance: serializer.fromJson<bool>(json['healthInsurance']),
      awareHealthInsurance:
          serializer.fromJson<bool>(json['awareHealthInsurance']),
      landWealth: serializer.fromJson<bool>(json['landWealth']),
      familyAndSocietyBehavior:
          serializer.fromJson<String>(json['familyAndSocietyBehavior']),
      friendsBehavior: serializer.fromJson<String>(json['friendsBehavior']),
      familyAndSocialActivity:
          serializer.fromJson<String>(json['familyAndSocialActivity']),
      voteInElection: serializer.fromJson<bool>(json['voteInElection']),
      usingMedicine: serializer.fromJson<bool>(json['usingMedicine']),
      providedMedicine: serializer.fromJson<bool>(json['providedMedicine']),
      providedMedicineDetail:
          serializer.fromJson<bool>(json['providedMedicineDetail']),
      freeService: serializer.fromJson<bool>(json['freeService']),
      usedAccessories: serializer.fromJson<bool>(json['usedAccessories']),
      vocationalTraining: serializer.fromJson<bool>(json['vocationalTraining']),
      vocationTrainingDuration:
          serializer.fromJson<String>(json['vocationTrainingDuration']),
      wishVocationalTraining:
          serializer.fromJson<bool>(json['wishVocationalTraining']),
      whichVocationalTraining:
          serializer.fromJson<String>(json['whichVocationalTraining']),
      currentBusiness: serializer.fromJson<String>(json['currentBusiness']),
      businessSupport: serializer.fromJson<bool>(json['businessSupport']),
      businessSupportDetail:
          serializer.fromJson<String>(json['businessSupportDetail']),
      schoolFees: serializer.fromJson<bool>(json['schoolFees']),
      schoolScholarship: serializer.fromJson<bool>(json['schoolScholarship']),
      schoolTransport: serializer.fromJson<bool>(json['schoolTransport']),
      schoolAccessability:
          serializer.fromJson<bool>(json['schoolAccessability']),
      schoolClubParticipation:
          serializer.fromJson<bool>(json['schoolClubParticipation']),
      schoolExtracurricularActivities:
          serializer.fromJson<bool>(json['schoolExtracurricularActivities']),
      disableRightsAndLaw:
          serializer.fromJson<bool>(json['disableRightsAndLaw']),
      nepalGovernmentServices:
          serializer.fromJson<bool>(json['nepalGovernmentServices']),
      complain: serializer.fromJson<bool>(json['complain']),
      partOfDisableGroup: serializer.fromJson<bool>(json['partOfDisableGroup']),
      takenTraining: serializer.fromJson<bool>(json['takenTraining']),
      memberOfGroup: serializer.fromJson<bool>(json['memberOfGroup']),
      leadershipPosition: serializer.fromJson<bool>(json['leadershipPosition']),
      lat: serializer.fromJson<String>(json['lat']),
      lng: serializer.fromJson<String>(json['lng']),
      surveyorName: serializer.fromJson<String>(json['surveyorName']),
      img: serializer.fromJson<String>(json['img']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'district': serializer.toJson<String>(district),
      'muncipality': serializer.toJson<String>(muncipality),
      'name': serializer.toJson<int>(name),
      'surveyDate': serializer.toJson<String>(surveyDate),
      'personName': serializer.toJson<String>(personName),
      'birthDate': serializer.toJson<String>(birthDate),
      'gender': serializer.toJson<String>(gender),
      'currentAddress': serializer.toJson<String>(currentAddress),
      'parmanentAddress': serializer.toJson<String>(parmanentAddress),
      'careTaker': serializer.toJson<String>(careTaker),
      'formSpeaker': serializer.toJson<String>(formSpeaker),
      'formSpeakerRelation': serializer.toJson<String>(formSpeakerRelation),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'disableType': serializer.toJson<String>(disableType),
      'disableReason': serializer.toJson<String>(disableReason),
      'disableStartAge': serializer.toJson<int>(disableStartAge),
      'hasdisableIdentityCard': serializer.toJson<bool>(hasdisableIdentityCard),
      'disableIdentityCardType':
          serializer.toJson<String>(disableIdentityCardType),
      'maritalStatus': serializer.toJson<String>(maritalStatus),
      'educationStatus': serializer.toJson<String>(educationStatus),
      'schoolType': serializer.toJson<String>(schoolType),
      'occupationStatus': serializer.toJson<String>(occupationStatus),
      'disableIncome': serializer.toJson<int>(disableIncome),
      'disableFamilyIncome': serializer.toJson<int>(disableFamilyIncome),
      'nationalIdentityCard': serializer.toJson<bool>(nationalIdentityCard),
      'awareNationalIdentityCard':
          serializer.toJson<bool>(awareNationalIdentityCard),
      'birthCertificate': serializer.toJson<bool>(birthCertificate),
      'awareBirthCertificate': serializer.toJson<bool>(awareBirthCertificate),
      'marriageCertificate': serializer.toJson<bool>(marriageCertificate),
      'awareMarriageCertificate':
          serializer.toJson<bool>(awareMarriageCertificate),
      'voterIdCard': serializer.toJson<bool>(voterIdCard),
      'awareVoterIdCard': serializer.toJson<bool>(awareVoterIdCard),
      'disableIdCard': serializer.toJson<bool>(disableIdCard),
      'awaredisableIdCard': serializer.toJson<bool>(awaredisableIdCard),
      'socialSecurityAllowance':
          serializer.toJson<bool>(socialSecurityAllowance),
      'awareSocialSecurityAllowance':
          serializer.toJson<bool>(awareSocialSecurityAllowance),
      'bankAccount': serializer.toJson<bool>(bankAccount),
      'awareBankAccount': serializer.toJson<bool>(awareBankAccount),
      'healthInsurance': serializer.toJson<bool>(healthInsurance),
      'awareHealthInsurance': serializer.toJson<bool>(awareHealthInsurance),
      'landWealth': serializer.toJson<bool>(landWealth),
      'familyAndSocietyBehavior':
          serializer.toJson<String>(familyAndSocietyBehavior),
      'friendsBehavior': serializer.toJson<String>(friendsBehavior),
      'familyAndSocialActivity':
          serializer.toJson<String>(familyAndSocialActivity),
      'voteInElection': serializer.toJson<bool>(voteInElection),
      'usingMedicine': serializer.toJson<bool>(usingMedicine),
      'providedMedicine': serializer.toJson<bool>(providedMedicine),
      'providedMedicineDetail': serializer.toJson<bool>(providedMedicineDetail),
      'freeService': serializer.toJson<bool>(freeService),
      'usedAccessories': serializer.toJson<bool>(usedAccessories),
      'vocationalTraining': serializer.toJson<bool>(vocationalTraining),
      'vocationTrainingDuration':
          serializer.toJson<String>(vocationTrainingDuration),
      'wishVocationalTraining': serializer.toJson<bool>(wishVocationalTraining),
      'whichVocationalTraining':
          serializer.toJson<String>(whichVocationalTraining),
      'currentBusiness': serializer.toJson<String>(currentBusiness),
      'businessSupport': serializer.toJson<bool>(businessSupport),
      'businessSupportDetail': serializer.toJson<String>(businessSupportDetail),
      'schoolFees': serializer.toJson<bool>(schoolFees),
      'schoolScholarship': serializer.toJson<bool>(schoolScholarship),
      'schoolTransport': serializer.toJson<bool>(schoolTransport),
      'schoolAccessability': serializer.toJson<bool>(schoolAccessability),
      'schoolClubParticipation':
          serializer.toJson<bool>(schoolClubParticipation),
      'schoolExtracurricularActivities':
          serializer.toJson<bool>(schoolExtracurricularActivities),
      'disableRightsAndLaw': serializer.toJson<bool>(disableRightsAndLaw),
      'nepalGovernmentServices':
          serializer.toJson<bool>(nepalGovernmentServices),
      'complain': serializer.toJson<bool>(complain),
      'partOfDisableGroup': serializer.toJson<bool>(partOfDisableGroup),
      'takenTraining': serializer.toJson<bool>(takenTraining),
      'memberOfGroup': serializer.toJson<bool>(memberOfGroup),
      'leadershipPosition': serializer.toJson<bool>(leadershipPosition),
      'lat': serializer.toJson<String>(lat),
      'lng': serializer.toJson<String>(lng),
      'surveyorName': serializer.toJson<String>(surveyorName),
      'img': serializer.toJson<String>(img),
    };
  }

  Task copyWith(
          {int id,
          String district,
          String muncipality,
          int name,
          String surveyDate,
          String personName,
          String birthDate,
          String gender,
          String currentAddress,
          String parmanentAddress,
          String careTaker,
          String formSpeaker,
          String formSpeakerRelation,
          String phoneNumber,
          String disableType,
          String disableReason,
          int disableStartAge,
          bool hasdisableIdentityCard,
          String disableIdentityCardType,
          String maritalStatus,
          String educationStatus,
          String schoolType,
          String occupationStatus,
          int disableIncome,
          int disableFamilyIncome,
          bool nationalIdentityCard,
          bool awareNationalIdentityCard,
          bool birthCertificate,
          bool awareBirthCertificate,
          bool marriageCertificate,
          bool awareMarriageCertificate,
          bool voterIdCard,
          bool awareVoterIdCard,
          bool disableIdCard,
          bool awaredisableIdCard,
          bool socialSecurityAllowance,
          bool awareSocialSecurityAllowance,
          bool bankAccount,
          bool awareBankAccount,
          bool healthInsurance,
          bool awareHealthInsurance,
          bool landWealth,
          String familyAndSocietyBehavior,
          String friendsBehavior,
          String familyAndSocialActivity,
          bool voteInElection,
          bool usingMedicine,
          bool providedMedicine,
          bool providedMedicineDetail,
          bool freeService,
          bool usedAccessories,
          bool vocationalTraining,
          String vocationTrainingDuration,
          bool wishVocationalTraining,
          String whichVocationalTraining,
          String currentBusiness,
          bool businessSupport,
          String businessSupportDetail,
          bool schoolFees,
          bool schoolScholarship,
          bool schoolTransport,
          bool schoolAccessability,
          bool schoolClubParticipation,
          bool schoolExtracurricularActivities,
          bool disableRightsAndLaw,
          bool nepalGovernmentServices,
          bool complain,
          bool partOfDisableGroup,
          bool takenTraining,
          bool memberOfGroup,
          bool leadershipPosition,
          String lat,
          String lng,
          String surveyorName,
          String img}) =>
      Task(
        id: id ?? this.id,
        district: district ?? this.district,
        muncipality: muncipality ?? this.muncipality,
        name: name ?? this.name,
        surveyDate: surveyDate ?? this.surveyDate,
        personName: personName ?? this.personName,
        birthDate: birthDate ?? this.birthDate,
        gender: gender ?? this.gender,
        currentAddress: currentAddress ?? this.currentAddress,
        parmanentAddress: parmanentAddress ?? this.parmanentAddress,
        careTaker: careTaker ?? this.careTaker,
        formSpeaker: formSpeaker ?? this.formSpeaker,
        formSpeakerRelation: formSpeakerRelation ?? this.formSpeakerRelation,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        disableType: disableType ?? this.disableType,
        disableReason: disableReason ?? this.disableReason,
        disableStartAge: disableStartAge ?? this.disableStartAge,
        hasdisableIdentityCard:
            hasdisableIdentityCard ?? this.hasdisableIdentityCard,
        disableIdentityCardType:
            disableIdentityCardType ?? this.disableIdentityCardType,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        educationStatus: educationStatus ?? this.educationStatus,
        schoolType: schoolType ?? this.schoolType,
        occupationStatus: occupationStatus ?? this.occupationStatus,
        disableIncome: disableIncome ?? this.disableIncome,
        disableFamilyIncome: disableFamilyIncome ?? this.disableFamilyIncome,
        nationalIdentityCard: nationalIdentityCard ?? this.nationalIdentityCard,
        awareNationalIdentityCard:
            awareNationalIdentityCard ?? this.awareNationalIdentityCard,
        birthCertificate: birthCertificate ?? this.birthCertificate,
        awareBirthCertificate:
            awareBirthCertificate ?? this.awareBirthCertificate,
        marriageCertificate: marriageCertificate ?? this.marriageCertificate,
        awareMarriageCertificate:
            awareMarriageCertificate ?? this.awareMarriageCertificate,
        voterIdCard: voterIdCard ?? this.voterIdCard,
        awareVoterIdCard: awareVoterIdCard ?? this.awareVoterIdCard,
        disableIdCard: disableIdCard ?? this.disableIdCard,
        awaredisableIdCard: awaredisableIdCard ?? this.awaredisableIdCard,
        socialSecurityAllowance:
            socialSecurityAllowance ?? this.socialSecurityAllowance,
        awareSocialSecurityAllowance:
            awareSocialSecurityAllowance ?? this.awareSocialSecurityAllowance,
        bankAccount: bankAccount ?? this.bankAccount,
        awareBankAccount: awareBankAccount ?? this.awareBankAccount,
        healthInsurance: healthInsurance ?? this.healthInsurance,
        awareHealthInsurance: awareHealthInsurance ?? this.awareHealthInsurance,
        landWealth: landWealth ?? this.landWealth,
        familyAndSocietyBehavior:
            familyAndSocietyBehavior ?? this.familyAndSocietyBehavior,
        friendsBehavior: friendsBehavior ?? this.friendsBehavior,
        familyAndSocialActivity:
            familyAndSocialActivity ?? this.familyAndSocialActivity,
        voteInElection: voteInElection ?? this.voteInElection,
        usingMedicine: usingMedicine ?? this.usingMedicine,
        providedMedicine: providedMedicine ?? this.providedMedicine,
        providedMedicineDetail:
            providedMedicineDetail ?? this.providedMedicineDetail,
        freeService: freeService ?? this.freeService,
        usedAccessories: usedAccessories ?? this.usedAccessories,
        vocationalTraining: vocationalTraining ?? this.vocationalTraining,
        vocationTrainingDuration:
            vocationTrainingDuration ?? this.vocationTrainingDuration,
        wishVocationalTraining:
            wishVocationalTraining ?? this.wishVocationalTraining,
        whichVocationalTraining:
            whichVocationalTraining ?? this.whichVocationalTraining,
        currentBusiness: currentBusiness ?? this.currentBusiness,
        businessSupport: businessSupport ?? this.businessSupport,
        businessSupportDetail:
            businessSupportDetail ?? this.businessSupportDetail,
        schoolFees: schoolFees ?? this.schoolFees,
        schoolScholarship: schoolScholarship ?? this.schoolScholarship,
        schoolTransport: schoolTransport ?? this.schoolTransport,
        schoolAccessability: schoolAccessability ?? this.schoolAccessability,
        schoolClubParticipation:
            schoolClubParticipation ?? this.schoolClubParticipation,
        schoolExtracurricularActivities: schoolExtracurricularActivities ??
            this.schoolExtracurricularActivities,
        disableRightsAndLaw: disableRightsAndLaw ?? this.disableRightsAndLaw,
        nepalGovernmentServices:
            nepalGovernmentServices ?? this.nepalGovernmentServices,
        complain: complain ?? this.complain,
        partOfDisableGroup: partOfDisableGroup ?? this.partOfDisableGroup,
        takenTraining: takenTraining ?? this.takenTraining,
        memberOfGroup: memberOfGroup ?? this.memberOfGroup,
        leadershipPosition: leadershipPosition ?? this.leadershipPosition,
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
        surveyorName: surveyorName ?? this.surveyorName,
        img: img ?? this.img,
      );
  @override
  String toString() {
    return (StringBuffer('Task(')
          ..write('id: $id, ')
          ..write('district: $district, ')
          ..write('muncipality: $muncipality, ')
          ..write('name: $name, ')
          ..write('surveyDate: $surveyDate, ')
          ..write('personName: $personName, ')
          ..write('birthDate: $birthDate, ')
          ..write('gender: $gender, ')
          ..write('currentAddress: $currentAddress, ')
          ..write('parmanentAddress: $parmanentAddress, ')
          ..write('careTaker: $careTaker, ')
          ..write('formSpeaker: $formSpeaker, ')
          ..write('formSpeakerRelation: $formSpeakerRelation, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('disableType: $disableType, ')
          ..write('disableReason: $disableReason, ')
          ..write('disableStartAge: $disableStartAge, ')
          ..write('hasdisableIdentityCard: $hasdisableIdentityCard, ')
          ..write('disableIdentityCardType: $disableIdentityCardType, ')
          ..write('maritalStatus: $maritalStatus, ')
          ..write('educationStatus: $educationStatus, ')
          ..write('schoolType: $schoolType, ')
          ..write('occupationStatus: $occupationStatus, ')
          ..write('disableIncome: $disableIncome, ')
          ..write('disableFamilyIncome: $disableFamilyIncome, ')
          ..write('nationalIdentityCard: $nationalIdentityCard, ')
          ..write('awareNationalIdentityCard: $awareNationalIdentityCard, ')
          ..write('birthCertificate: $birthCertificate, ')
          ..write('awareBirthCertificate: $awareBirthCertificate, ')
          ..write('marriageCertificate: $marriageCertificate, ')
          ..write('awareMarriageCertificate: $awareMarriageCertificate, ')
          ..write('voterIdCard: $voterIdCard, ')
          ..write('awareVoterIdCard: $awareVoterIdCard, ')
          ..write('disableIdCard: $disableIdCard, ')
          ..write('awaredisableIdCard: $awaredisableIdCard, ')
          ..write('socialSecurityAllowance: $socialSecurityAllowance, ')
          ..write(
              'awareSocialSecurityAllowance: $awareSocialSecurityAllowance, ')
          ..write('bankAccount: $bankAccount, ')
          ..write('awareBankAccount: $awareBankAccount, ')
          ..write('healthInsurance: $healthInsurance, ')
          ..write('awareHealthInsurance: $awareHealthInsurance, ')
          ..write('landWealth: $landWealth, ')
          ..write('familyAndSocietyBehavior: $familyAndSocietyBehavior, ')
          ..write('friendsBehavior: $friendsBehavior, ')
          ..write('familyAndSocialActivity: $familyAndSocialActivity, ')
          ..write('voteInElection: $voteInElection, ')
          ..write('usingMedicine: $usingMedicine, ')
          ..write('providedMedicine: $providedMedicine, ')
          ..write('providedMedicineDetail: $providedMedicineDetail, ')
          ..write('freeService: $freeService, ')
          ..write('usedAccessories: $usedAccessories, ')
          ..write('vocationalTraining: $vocationalTraining, ')
          ..write('vocationTrainingDuration: $vocationTrainingDuration, ')
          ..write('wishVocationalTraining: $wishVocationalTraining, ')
          ..write('whichVocationalTraining: $whichVocationalTraining, ')
          ..write('currentBusiness: $currentBusiness, ')
          ..write('businessSupport: $businessSupport, ')
          ..write('businessSupportDetail: $businessSupportDetail, ')
          ..write('schoolFees: $schoolFees, ')
          ..write('schoolScholarship: $schoolScholarship, ')
          ..write('schoolTransport: $schoolTransport, ')
          ..write('schoolAccessability: $schoolAccessability, ')
          ..write('schoolClubParticipation: $schoolClubParticipation, ')
          ..write(
              'schoolExtracurricularActivities: $schoolExtracurricularActivities, ')
          ..write('disableRightsAndLaw: $disableRightsAndLaw, ')
          ..write('nepalGovernmentServices: $nepalGovernmentServices, ')
          ..write('complain: $complain, ')
          ..write('partOfDisableGroup: $partOfDisableGroup, ')
          ..write('takenTraining: $takenTraining, ')
          ..write('memberOfGroup: $memberOfGroup, ')
          ..write('leadershipPosition: $leadershipPosition, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('surveyorName: $surveyorName, ')
          ..write('img: $img')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          district.hashCode,
          $mrjc(
              muncipality.hashCode,
              $mrjc(
                  name.hashCode,
                  $mrjc(
                      surveyDate.hashCode,
                      $mrjc(
                          personName.hashCode,
                          $mrjc(
                              birthDate.hashCode,
                              $mrjc(
                                  gender.hashCode,
                                  $mrjc(
                                      currentAddress.hashCode,
                                      $mrjc(
                                          parmanentAddress.hashCode,
                                          $mrjc(
                                              careTaker.hashCode,
                                              $mrjc(
                                                  formSpeaker.hashCode,
                                                  $mrjc(
                                                      formSpeakerRelation
                                                          .hashCode,
                                                      $mrjc(
                                                          phoneNumber.hashCode,
                                                          $mrjc(
                                                              disableType
                                                                  .hashCode,
                                                              $mrjc(
                                                                  disableReason
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      disableStartAge
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          hasdisableIdentityCard
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              disableIdentityCardType.hashCode,
                                                                              $mrjc(maritalStatus.hashCode, $mrjc(educationStatus.hashCode, $mrjc(schoolType.hashCode, $mrjc(occupationStatus.hashCode, $mrjc(disableIncome.hashCode, $mrjc(disableFamilyIncome.hashCode, $mrjc(nationalIdentityCard.hashCode, $mrjc(awareNationalIdentityCard.hashCode, $mrjc(birthCertificate.hashCode, $mrjc(awareBirthCertificate.hashCode, $mrjc(marriageCertificate.hashCode, $mrjc(awareMarriageCertificate.hashCode, $mrjc(voterIdCard.hashCode, $mrjc(awareVoterIdCard.hashCode, $mrjc(disableIdCard.hashCode, $mrjc(awaredisableIdCard.hashCode, $mrjc(socialSecurityAllowance.hashCode, $mrjc(awareSocialSecurityAllowance.hashCode, $mrjc(bankAccount.hashCode, $mrjc(awareBankAccount.hashCode, $mrjc(healthInsurance.hashCode, $mrjc(awareHealthInsurance.hashCode, $mrjc(landWealth.hashCode, $mrjc(familyAndSocietyBehavior.hashCode, $mrjc(friendsBehavior.hashCode, $mrjc(familyAndSocialActivity.hashCode, $mrjc(voteInElection.hashCode, $mrjc(usingMedicine.hashCode, $mrjc(providedMedicine.hashCode, $mrjc(providedMedicineDetail.hashCode, $mrjc(freeService.hashCode, $mrjc(usedAccessories.hashCode, $mrjc(vocationalTraining.hashCode, $mrjc(vocationTrainingDuration.hashCode, $mrjc(wishVocationalTraining.hashCode, $mrjc(whichVocationalTraining.hashCode, $mrjc(currentBusiness.hashCode, $mrjc(businessSupport.hashCode, $mrjc(businessSupportDetail.hashCode, $mrjc(schoolFees.hashCode, $mrjc(schoolScholarship.hashCode, $mrjc(schoolTransport.hashCode, $mrjc(schoolAccessability.hashCode, $mrjc(schoolClubParticipation.hashCode, $mrjc(schoolExtracurricularActivities.hashCode, $mrjc(disableRightsAndLaw.hashCode, $mrjc(nepalGovernmentServices.hashCode, $mrjc(complain.hashCode, $mrjc(partOfDisableGroup.hashCode, $mrjc(takenTraining.hashCode, $mrjc(memberOfGroup.hashCode, $mrjc(leadershipPosition.hashCode, $mrjc(lat.hashCode, $mrjc(lng.hashCode, $mrjc(surveyorName.hashCode, img.hashCode)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Task &&
          other.id == this.id &&
          other.district == this.district &&
          other.muncipality == this.muncipality &&
          other.name == this.name &&
          other.surveyDate == this.surveyDate &&
          other.personName == this.personName &&
          other.birthDate == this.birthDate &&
          other.gender == this.gender &&
          other.currentAddress == this.currentAddress &&
          other.parmanentAddress == this.parmanentAddress &&
          other.careTaker == this.careTaker &&
          other.formSpeaker == this.formSpeaker &&
          other.formSpeakerRelation == this.formSpeakerRelation &&
          other.phoneNumber == this.phoneNumber &&
          other.disableType == this.disableType &&
          other.disableReason == this.disableReason &&
          other.disableStartAge == this.disableStartAge &&
          other.hasdisableIdentityCard == this.hasdisableIdentityCard &&
          other.disableIdentityCardType == this.disableIdentityCardType &&
          other.maritalStatus == this.maritalStatus &&
          other.educationStatus == this.educationStatus &&
          other.schoolType == this.schoolType &&
          other.occupationStatus == this.occupationStatus &&
          other.disableIncome == this.disableIncome &&
          other.disableFamilyIncome == this.disableFamilyIncome &&
          other.nationalIdentityCard == this.nationalIdentityCard &&
          other.awareNationalIdentityCard == this.awareNationalIdentityCard &&
          other.birthCertificate == this.birthCertificate &&
          other.awareBirthCertificate == this.awareBirthCertificate &&
          other.marriageCertificate == this.marriageCertificate &&
          other.awareMarriageCertificate == this.awareMarriageCertificate &&
          other.voterIdCard == this.voterIdCard &&
          other.awareVoterIdCard == this.awareVoterIdCard &&
          other.disableIdCard == this.disableIdCard &&
          other.awaredisableIdCard == this.awaredisableIdCard &&
          other.socialSecurityAllowance == this.socialSecurityAllowance &&
          other.awareSocialSecurityAllowance ==
              this.awareSocialSecurityAllowance &&
          other.bankAccount == this.bankAccount &&
          other.awareBankAccount == this.awareBankAccount &&
          other.healthInsurance == this.healthInsurance &&
          other.awareHealthInsurance == this.awareHealthInsurance &&
          other.landWealth == this.landWealth &&
          other.familyAndSocietyBehavior == this.familyAndSocietyBehavior &&
          other.friendsBehavior == this.friendsBehavior &&
          other.familyAndSocialActivity == this.familyAndSocialActivity &&
          other.voteInElection == this.voteInElection &&
          other.usingMedicine == this.usingMedicine &&
          other.providedMedicine == this.providedMedicine &&
          other.providedMedicineDetail == this.providedMedicineDetail &&
          other.freeService == this.freeService &&
          other.usedAccessories == this.usedAccessories &&
          other.vocationalTraining == this.vocationalTraining &&
          other.vocationTrainingDuration == this.vocationTrainingDuration &&
          other.wishVocationalTraining == this.wishVocationalTraining &&
          other.whichVocationalTraining == this.whichVocationalTraining &&
          other.currentBusiness == this.currentBusiness &&
          other.businessSupport == this.businessSupport &&
          other.businessSupportDetail == this.businessSupportDetail &&
          other.schoolFees == this.schoolFees &&
          other.schoolScholarship == this.schoolScholarship &&
          other.schoolTransport == this.schoolTransport &&
          other.schoolAccessability == this.schoolAccessability &&
          other.schoolClubParticipation == this.schoolClubParticipation &&
          other.schoolExtracurricularActivities ==
              this.schoolExtracurricularActivities &&
          other.disableRightsAndLaw == this.disableRightsAndLaw &&
          other.nepalGovernmentServices == this.nepalGovernmentServices &&
          other.complain == this.complain &&
          other.partOfDisableGroup == this.partOfDisableGroup &&
          other.takenTraining == this.takenTraining &&
          other.memberOfGroup == this.memberOfGroup &&
          other.leadershipPosition == this.leadershipPosition &&
          other.lat == this.lat &&
          other.lng == this.lng &&
          other.surveyorName == this.surveyorName &&
          other.img == this.img);
}

class TasksCompanion extends UpdateCompanion<Task> {
  final Value<int> id;
  final Value<String> district;
  final Value<String> muncipality;
  final Value<int> name;
  final Value<String> surveyDate;
  final Value<String> personName;
  final Value<String> birthDate;
  final Value<String> gender;
  final Value<String> currentAddress;
  final Value<String> parmanentAddress;
  final Value<String> careTaker;
  final Value<String> formSpeaker;
  final Value<String> formSpeakerRelation;
  final Value<String> phoneNumber;
  final Value<String> disableType;
  final Value<String> disableReason;
  final Value<int> disableStartAge;
  final Value<bool> hasdisableIdentityCard;
  final Value<String> disableIdentityCardType;
  final Value<String> maritalStatus;
  final Value<String> educationStatus;
  final Value<String> schoolType;
  final Value<String> occupationStatus;
  final Value<int> disableIncome;
  final Value<int> disableFamilyIncome;
  final Value<bool> nationalIdentityCard;
  final Value<bool> awareNationalIdentityCard;
  final Value<bool> birthCertificate;
  final Value<bool> awareBirthCertificate;
  final Value<bool> marriageCertificate;
  final Value<bool> awareMarriageCertificate;
  final Value<bool> voterIdCard;
  final Value<bool> awareVoterIdCard;
  final Value<bool> disableIdCard;
  final Value<bool> awaredisableIdCard;
  final Value<bool> socialSecurityAllowance;
  final Value<bool> awareSocialSecurityAllowance;
  final Value<bool> bankAccount;
  final Value<bool> awareBankAccount;
  final Value<bool> healthInsurance;
  final Value<bool> awareHealthInsurance;
  final Value<bool> landWealth;
  final Value<String> familyAndSocietyBehavior;
  final Value<String> friendsBehavior;
  final Value<String> familyAndSocialActivity;
  final Value<bool> voteInElection;
  final Value<bool> usingMedicine;
  final Value<bool> providedMedicine;
  final Value<bool> providedMedicineDetail;
  final Value<bool> freeService;
  final Value<bool> usedAccessories;
  final Value<bool> vocationalTraining;
  final Value<String> vocationTrainingDuration;
  final Value<bool> wishVocationalTraining;
  final Value<String> whichVocationalTraining;
  final Value<String> currentBusiness;
  final Value<bool> businessSupport;
  final Value<String> businessSupportDetail;
  final Value<bool> schoolFees;
  final Value<bool> schoolScholarship;
  final Value<bool> schoolTransport;
  final Value<bool> schoolAccessability;
  final Value<bool> schoolClubParticipation;
  final Value<bool> schoolExtracurricularActivities;
  final Value<bool> disableRightsAndLaw;
  final Value<bool> nepalGovernmentServices;
  final Value<bool> complain;
  final Value<bool> partOfDisableGroup;
  final Value<bool> takenTraining;
  final Value<bool> memberOfGroup;
  final Value<bool> leadershipPosition;
  final Value<String> lat;
  final Value<String> lng;
  final Value<String> surveyorName;
  final Value<String> img;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.district = const Value.absent(),
    this.muncipality = const Value.absent(),
    this.name = const Value.absent(),
    this.surveyDate = const Value.absent(),
    this.personName = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.gender = const Value.absent(),
    this.currentAddress = const Value.absent(),
    this.parmanentAddress = const Value.absent(),
    this.careTaker = const Value.absent(),
    this.formSpeaker = const Value.absent(),
    this.formSpeakerRelation = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.disableType = const Value.absent(),
    this.disableReason = const Value.absent(),
    this.disableStartAge = const Value.absent(),
    this.hasdisableIdentityCard = const Value.absent(),
    this.disableIdentityCardType = const Value.absent(),
    this.maritalStatus = const Value.absent(),
    this.educationStatus = const Value.absent(),
    this.schoolType = const Value.absent(),
    this.occupationStatus = const Value.absent(),
    this.disableIncome = const Value.absent(),
    this.disableFamilyIncome = const Value.absent(),
    this.nationalIdentityCard = const Value.absent(),
    this.awareNationalIdentityCard = const Value.absent(),
    this.birthCertificate = const Value.absent(),
    this.awareBirthCertificate = const Value.absent(),
    this.marriageCertificate = const Value.absent(),
    this.awareMarriageCertificate = const Value.absent(),
    this.voterIdCard = const Value.absent(),
    this.awareVoterIdCard = const Value.absent(),
    this.disableIdCard = const Value.absent(),
    this.awaredisableIdCard = const Value.absent(),
    this.socialSecurityAllowance = const Value.absent(),
    this.awareSocialSecurityAllowance = const Value.absent(),
    this.bankAccount = const Value.absent(),
    this.awareBankAccount = const Value.absent(),
    this.healthInsurance = const Value.absent(),
    this.awareHealthInsurance = const Value.absent(),
    this.landWealth = const Value.absent(),
    this.familyAndSocietyBehavior = const Value.absent(),
    this.friendsBehavior = const Value.absent(),
    this.familyAndSocialActivity = const Value.absent(),
    this.voteInElection = const Value.absent(),
    this.usingMedicine = const Value.absent(),
    this.providedMedicine = const Value.absent(),
    this.providedMedicineDetail = const Value.absent(),
    this.freeService = const Value.absent(),
    this.usedAccessories = const Value.absent(),
    this.vocationalTraining = const Value.absent(),
    this.vocationTrainingDuration = const Value.absent(),
    this.wishVocationalTraining = const Value.absent(),
    this.whichVocationalTraining = const Value.absent(),
    this.currentBusiness = const Value.absent(),
    this.businessSupport = const Value.absent(),
    this.businessSupportDetail = const Value.absent(),
    this.schoolFees = const Value.absent(),
    this.schoolScholarship = const Value.absent(),
    this.schoolTransport = const Value.absent(),
    this.schoolAccessability = const Value.absent(),
    this.schoolClubParticipation = const Value.absent(),
    this.schoolExtracurricularActivities = const Value.absent(),
    this.disableRightsAndLaw = const Value.absent(),
    this.nepalGovernmentServices = const Value.absent(),
    this.complain = const Value.absent(),
    this.partOfDisableGroup = const Value.absent(),
    this.takenTraining = const Value.absent(),
    this.memberOfGroup = const Value.absent(),
    this.leadershipPosition = const Value.absent(),
    this.lat = const Value.absent(),
    this.lng = const Value.absent(),
    this.surveyorName = const Value.absent(),
    this.img = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    this.district = const Value.absent(),
    this.muncipality = const Value.absent(),
    this.name = const Value.absent(),
    this.surveyDate = const Value.absent(),
    this.personName = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.gender = const Value.absent(),
    this.currentAddress = const Value.absent(),
    this.parmanentAddress = const Value.absent(),
    this.careTaker = const Value.absent(),
    this.formSpeaker = const Value.absent(),
    this.formSpeakerRelation = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.disableType = const Value.absent(),
    this.disableReason = const Value.absent(),
    this.disableStartAge = const Value.absent(),
    this.hasdisableIdentityCard = const Value.absent(),
    this.disableIdentityCardType = const Value.absent(),
    this.maritalStatus = const Value.absent(),
    this.educationStatus = const Value.absent(),
    this.schoolType = const Value.absent(),
    this.occupationStatus = const Value.absent(),
    this.disableIncome = const Value.absent(),
    this.disableFamilyIncome = const Value.absent(),
    this.nationalIdentityCard = const Value.absent(),
    this.awareNationalIdentityCard = const Value.absent(),
    this.birthCertificate = const Value.absent(),
    this.awareBirthCertificate = const Value.absent(),
    this.marriageCertificate = const Value.absent(),
    this.awareMarriageCertificate = const Value.absent(),
    this.voterIdCard = const Value.absent(),
    this.awareVoterIdCard = const Value.absent(),
    this.disableIdCard = const Value.absent(),
    this.awaredisableIdCard = const Value.absent(),
    this.socialSecurityAllowance = const Value.absent(),
    this.awareSocialSecurityAllowance = const Value.absent(),
    this.bankAccount = const Value.absent(),
    this.awareBankAccount = const Value.absent(),
    this.healthInsurance = const Value.absent(),
    this.awareHealthInsurance = const Value.absent(),
    this.landWealth = const Value.absent(),
    this.familyAndSocietyBehavior = const Value.absent(),
    this.friendsBehavior = const Value.absent(),
    this.familyAndSocialActivity = const Value.absent(),
    this.voteInElection = const Value.absent(),
    this.usingMedicine = const Value.absent(),
    this.providedMedicine = const Value.absent(),
    this.providedMedicineDetail = const Value.absent(),
    this.freeService = const Value.absent(),
    this.usedAccessories = const Value.absent(),
    this.vocationalTraining = const Value.absent(),
    this.vocationTrainingDuration = const Value.absent(),
    this.wishVocationalTraining = const Value.absent(),
    this.whichVocationalTraining = const Value.absent(),
    this.currentBusiness = const Value.absent(),
    this.businessSupport = const Value.absent(),
    this.businessSupportDetail = const Value.absent(),
    this.schoolFees = const Value.absent(),
    this.schoolScholarship = const Value.absent(),
    this.schoolTransport = const Value.absent(),
    this.schoolAccessability = const Value.absent(),
    this.schoolClubParticipation = const Value.absent(),
    this.schoolExtracurricularActivities = const Value.absent(),
    this.disableRightsAndLaw = const Value.absent(),
    this.nepalGovernmentServices = const Value.absent(),
    this.complain = const Value.absent(),
    this.partOfDisableGroup = const Value.absent(),
    this.takenTraining = const Value.absent(),
    this.memberOfGroup = const Value.absent(),
    this.leadershipPosition = const Value.absent(),
    this.lat = const Value.absent(),
    this.lng = const Value.absent(),
    this.surveyorName = const Value.absent(),
    this.img = const Value.absent(),
  });
  static Insertable<Task> custom({
    Expression<int> id,
    Expression<String> district,
    Expression<String> muncipality,
    Expression<int> name,
    Expression<String> surveyDate,
    Expression<String> personName,
    Expression<String> birthDate,
    Expression<String> gender,
    Expression<String> currentAddress,
    Expression<String> parmanentAddress,
    Expression<String> careTaker,
    Expression<String> formSpeaker,
    Expression<String> formSpeakerRelation,
    Expression<String> phoneNumber,
    Expression<String> disableType,
    Expression<String> disableReason,
    Expression<int> disableStartAge,
    Expression<bool> hasdisableIdentityCard,
    Expression<String> disableIdentityCardType,
    Expression<String> maritalStatus,
    Expression<String> educationStatus,
    Expression<String> schoolType,
    Expression<String> occupationStatus,
    Expression<int> disableIncome,
    Expression<int> disableFamilyIncome,
    Expression<bool> nationalIdentityCard,
    Expression<bool> awareNationalIdentityCard,
    Expression<bool> birthCertificate,
    Expression<bool> awareBirthCertificate,
    Expression<bool> marriageCertificate,
    Expression<bool> awareMarriageCertificate,
    Expression<bool> voterIdCard,
    Expression<bool> awareVoterIdCard,
    Expression<bool> disableIdCard,
    Expression<bool> awaredisableIdCard,
    Expression<bool> socialSecurityAllowance,
    Expression<bool> awareSocialSecurityAllowance,
    Expression<bool> bankAccount,
    Expression<bool> awareBankAccount,
    Expression<bool> healthInsurance,
    Expression<bool> awareHealthInsurance,
    Expression<bool> landWealth,
    Expression<String> familyAndSocietyBehavior,
    Expression<String> friendsBehavior,
    Expression<String> familyAndSocialActivity,
    Expression<bool> voteInElection,
    Expression<bool> usingMedicine,
    Expression<bool> providedMedicine,
    Expression<bool> providedMedicineDetail,
    Expression<bool> freeService,
    Expression<bool> usedAccessories,
    Expression<bool> vocationalTraining,
    Expression<String> vocationTrainingDuration,
    Expression<bool> wishVocationalTraining,
    Expression<String> whichVocationalTraining,
    Expression<String> currentBusiness,
    Expression<bool> businessSupport,
    Expression<String> businessSupportDetail,
    Expression<bool> schoolFees,
    Expression<bool> schoolScholarship,
    Expression<bool> schoolTransport,
    Expression<bool> schoolAccessability,
    Expression<bool> schoolClubParticipation,
    Expression<bool> schoolExtracurricularActivities,
    Expression<bool> disableRightsAndLaw,
    Expression<bool> nepalGovernmentServices,
    Expression<bool> complain,
    Expression<bool> partOfDisableGroup,
    Expression<bool> takenTraining,
    Expression<bool> memberOfGroup,
    Expression<bool> leadershipPosition,
    Expression<String> lat,
    Expression<String> lng,
    Expression<String> surveyorName,
    Expression<String> img,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (district != null) 'district': district,
      if (muncipality != null) 'muncipality': muncipality,
      if (name != null) 'name': name,
      if (surveyDate != null) 'survey_date': surveyDate,
      if (personName != null) 'person_name': personName,
      if (birthDate != null) 'birth_date': birthDate,
      if (gender != null) 'gender': gender,
      if (currentAddress != null) 'current_address': currentAddress,
      if (parmanentAddress != null) 'parmanent_address': parmanentAddress,
      if (careTaker != null) 'care_taker': careTaker,
      if (formSpeaker != null) 'form_speaker': formSpeaker,
      if (formSpeakerRelation != null)
        'form_speaker_relation': formSpeakerRelation,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (disableType != null) 'disable_type': disableType,
      if (disableReason != null) 'disable_reason': disableReason,
      if (disableStartAge != null) 'disable_start_age': disableStartAge,
      if (hasdisableIdentityCard != null)
        'hasdisable_identity_card': hasdisableIdentityCard,
      if (disableIdentityCardType != null)
        'disable_identity_card_type': disableIdentityCardType,
      if (maritalStatus != null) 'marital_status': maritalStatus,
      if (educationStatus != null) 'education_status': educationStatus,
      if (schoolType != null) 'school_type': schoolType,
      if (occupationStatus != null) 'occupation_status': occupationStatus,
      if (disableIncome != null) 'disable_income': disableIncome,
      if (disableFamilyIncome != null)
        'disable_family_income': disableFamilyIncome,
      if (nationalIdentityCard != null)
        'national_identity_card': nationalIdentityCard,
      if (awareNationalIdentityCard != null)
        'aware_national_identity_card': awareNationalIdentityCard,
      if (birthCertificate != null) 'birth_certificate': birthCertificate,
      if (awareBirthCertificate != null)
        'aware_birth_certificate': awareBirthCertificate,
      if (marriageCertificate != null)
        'marriage_certificate': marriageCertificate,
      if (awareMarriageCertificate != null)
        'aware_marriage_certificate': awareMarriageCertificate,
      if (voterIdCard != null) 'voter_id_card': voterIdCard,
      if (awareVoterIdCard != null) 'aware_voter_id_card': awareVoterIdCard,
      if (disableIdCard != null) 'disable_id_card': disableIdCard,
      if (awaredisableIdCard != null)
        'awaredisable_id_card': awaredisableIdCard,
      if (socialSecurityAllowance != null)
        'social_security_allowance': socialSecurityAllowance,
      if (awareSocialSecurityAllowance != null)
        'aware_social_security_allowance': awareSocialSecurityAllowance,
      if (bankAccount != null) 'bank_account': bankAccount,
      if (awareBankAccount != null) 'aware_bank_account': awareBankAccount,
      if (healthInsurance != null) 'health_insurance': healthInsurance,
      if (awareHealthInsurance != null)
        'aware_health_insurance': awareHealthInsurance,
      if (landWealth != null) 'land_wealth': landWealth,
      if (familyAndSocietyBehavior != null)
        'family_and_society_behavior': familyAndSocietyBehavior,
      if (friendsBehavior != null) 'friends_behavior': friendsBehavior,
      if (familyAndSocialActivity != null)
        'family_and_social_activity': familyAndSocialActivity,
      if (voteInElection != null) 'vote_in_election': voteInElection,
      if (usingMedicine != null) 'using_medicine': usingMedicine,
      if (providedMedicine != null) 'provided_medicine': providedMedicine,
      if (providedMedicineDetail != null)
        'provided_medicine_detail': providedMedicineDetail,
      if (freeService != null) 'free_service': freeService,
      if (usedAccessories != null) 'used_accessories': usedAccessories,
      if (vocationalTraining != null) 'vocational_training': vocationalTraining,
      if (vocationTrainingDuration != null)
        'vocation_training_duration': vocationTrainingDuration,
      if (wishVocationalTraining != null)
        'wish_vocational_training': wishVocationalTraining,
      if (whichVocationalTraining != null)
        'which_vocational_training': whichVocationalTraining,
      if (currentBusiness != null) 'current_business': currentBusiness,
      if (businessSupport != null) 'business_support': businessSupport,
      if (businessSupportDetail != null)
        'business_support_detail': businessSupportDetail,
      if (schoolFees != null) 'school_fees': schoolFees,
      if (schoolScholarship != null) 'school_scholarship': schoolScholarship,
      if (schoolTransport != null) 'school_transport': schoolTransport,
      if (schoolAccessability != null)
        'school_accessability': schoolAccessability,
      if (schoolClubParticipation != null)
        'school_club_participation': schoolClubParticipation,
      if (schoolExtracurricularActivities != null)
        'school_extracurricular_activities': schoolExtracurricularActivities,
      if (disableRightsAndLaw != null)
        'disable_rights_and_law': disableRightsAndLaw,
      if (nepalGovernmentServices != null)
        'nepal_government_services': nepalGovernmentServices,
      if (complain != null) 'complain': complain,
      if (partOfDisableGroup != null)
        'part_of_disable_group': partOfDisableGroup,
      if (takenTraining != null) 'taken_training': takenTraining,
      if (memberOfGroup != null) 'member_of_group': memberOfGroup,
      if (leadershipPosition != null) 'leadership_position': leadershipPosition,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
      if (surveyorName != null) 'surveyor_name': surveyorName,
      if (img != null) 'img': img,
    });
  }

  TasksCompanion copyWith(
      {Value<int> id,
      Value<String> district,
      Value<String> muncipality,
      Value<int> name,
      Value<String> surveyDate,
      Value<String> personName,
      Value<String> birthDate,
      Value<String> gender,
      Value<String> currentAddress,
      Value<String> parmanentAddress,
      Value<String> careTaker,
      Value<String> formSpeaker,
      Value<String> formSpeakerRelation,
      Value<String> phoneNumber,
      Value<String> disableType,
      Value<String> disableReason,
      Value<int> disableStartAge,
      Value<bool> hasdisableIdentityCard,
      Value<String> disableIdentityCardType,
      Value<String> maritalStatus,
      Value<String> educationStatus,
      Value<String> schoolType,
      Value<String> occupationStatus,
      Value<int> disableIncome,
      Value<int> disableFamilyIncome,
      Value<bool> nationalIdentityCard,
      Value<bool> awareNationalIdentityCard,
      Value<bool> birthCertificate,
      Value<bool> awareBirthCertificate,
      Value<bool> marriageCertificate,
      Value<bool> awareMarriageCertificate,
      Value<bool> voterIdCard,
      Value<bool> awareVoterIdCard,
      Value<bool> disableIdCard,
      Value<bool> awaredisableIdCard,
      Value<bool> socialSecurityAllowance,
      Value<bool> awareSocialSecurityAllowance,
      Value<bool> bankAccount,
      Value<bool> awareBankAccount,
      Value<bool> healthInsurance,
      Value<bool> awareHealthInsurance,
      Value<bool> landWealth,
      Value<String> familyAndSocietyBehavior,
      Value<String> friendsBehavior,
      Value<String> familyAndSocialActivity,
      Value<bool> voteInElection,
      Value<bool> usingMedicine,
      Value<bool> providedMedicine,
      Value<bool> providedMedicineDetail,
      Value<bool> freeService,
      Value<bool> usedAccessories,
      Value<bool> vocationalTraining,
      Value<String> vocationTrainingDuration,
      Value<bool> wishVocationalTraining,
      Value<String> whichVocationalTraining,
      Value<String> currentBusiness,
      Value<bool> businessSupport,
      Value<String> businessSupportDetail,
      Value<bool> schoolFees,
      Value<bool> schoolScholarship,
      Value<bool> schoolTransport,
      Value<bool> schoolAccessability,
      Value<bool> schoolClubParticipation,
      Value<bool> schoolExtracurricularActivities,
      Value<bool> disableRightsAndLaw,
      Value<bool> nepalGovernmentServices,
      Value<bool> complain,
      Value<bool> partOfDisableGroup,
      Value<bool> takenTraining,
      Value<bool> memberOfGroup,
      Value<bool> leadershipPosition,
      Value<String> lat,
      Value<String> lng,
      Value<String> surveyorName,
      Value<String> img}) {
    return TasksCompanion(
      id: id ?? this.id,
      district: district ?? this.district,
      muncipality: muncipality ?? this.muncipality,
      name: name ?? this.name,
      surveyDate: surveyDate ?? this.surveyDate,
      personName: personName ?? this.personName,
      birthDate: birthDate ?? this.birthDate,
      gender: gender ?? this.gender,
      currentAddress: currentAddress ?? this.currentAddress,
      parmanentAddress: parmanentAddress ?? this.parmanentAddress,
      careTaker: careTaker ?? this.careTaker,
      formSpeaker: formSpeaker ?? this.formSpeaker,
      formSpeakerRelation: formSpeakerRelation ?? this.formSpeakerRelation,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      disableType: disableType ?? this.disableType,
      disableReason: disableReason ?? this.disableReason,
      disableStartAge: disableStartAge ?? this.disableStartAge,
      hasdisableIdentityCard:
          hasdisableIdentityCard ?? this.hasdisableIdentityCard,
      disableIdentityCardType:
          disableIdentityCardType ?? this.disableIdentityCardType,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      educationStatus: educationStatus ?? this.educationStatus,
      schoolType: schoolType ?? this.schoolType,
      occupationStatus: occupationStatus ?? this.occupationStatus,
      disableIncome: disableIncome ?? this.disableIncome,
      disableFamilyIncome: disableFamilyIncome ?? this.disableFamilyIncome,
      nationalIdentityCard: nationalIdentityCard ?? this.nationalIdentityCard,
      awareNationalIdentityCard:
          awareNationalIdentityCard ?? this.awareNationalIdentityCard,
      birthCertificate: birthCertificate ?? this.birthCertificate,
      awareBirthCertificate:
          awareBirthCertificate ?? this.awareBirthCertificate,
      marriageCertificate: marriageCertificate ?? this.marriageCertificate,
      awareMarriageCertificate:
          awareMarriageCertificate ?? this.awareMarriageCertificate,
      voterIdCard: voterIdCard ?? this.voterIdCard,
      awareVoterIdCard: awareVoterIdCard ?? this.awareVoterIdCard,
      disableIdCard: disableIdCard ?? this.disableIdCard,
      awaredisableIdCard: awaredisableIdCard ?? this.awaredisableIdCard,
      socialSecurityAllowance:
          socialSecurityAllowance ?? this.socialSecurityAllowance,
      awareSocialSecurityAllowance:
          awareSocialSecurityAllowance ?? this.awareSocialSecurityAllowance,
      bankAccount: bankAccount ?? this.bankAccount,
      awareBankAccount: awareBankAccount ?? this.awareBankAccount,
      healthInsurance: healthInsurance ?? this.healthInsurance,
      awareHealthInsurance: awareHealthInsurance ?? this.awareHealthInsurance,
      landWealth: landWealth ?? this.landWealth,
      familyAndSocietyBehavior:
          familyAndSocietyBehavior ?? this.familyAndSocietyBehavior,
      friendsBehavior: friendsBehavior ?? this.friendsBehavior,
      familyAndSocialActivity:
          familyAndSocialActivity ?? this.familyAndSocialActivity,
      voteInElection: voteInElection ?? this.voteInElection,
      usingMedicine: usingMedicine ?? this.usingMedicine,
      providedMedicine: providedMedicine ?? this.providedMedicine,
      providedMedicineDetail:
          providedMedicineDetail ?? this.providedMedicineDetail,
      freeService: freeService ?? this.freeService,
      usedAccessories: usedAccessories ?? this.usedAccessories,
      vocationalTraining: vocationalTraining ?? this.vocationalTraining,
      vocationTrainingDuration:
          vocationTrainingDuration ?? this.vocationTrainingDuration,
      wishVocationalTraining:
          wishVocationalTraining ?? this.wishVocationalTraining,
      whichVocationalTraining:
          whichVocationalTraining ?? this.whichVocationalTraining,
      currentBusiness: currentBusiness ?? this.currentBusiness,
      businessSupport: businessSupport ?? this.businessSupport,
      businessSupportDetail:
          businessSupportDetail ?? this.businessSupportDetail,
      schoolFees: schoolFees ?? this.schoolFees,
      schoolScholarship: schoolScholarship ?? this.schoolScholarship,
      schoolTransport: schoolTransport ?? this.schoolTransport,
      schoolAccessability: schoolAccessability ?? this.schoolAccessability,
      schoolClubParticipation:
          schoolClubParticipation ?? this.schoolClubParticipation,
      schoolExtracurricularActivities: schoolExtracurricularActivities ??
          this.schoolExtracurricularActivities,
      disableRightsAndLaw: disableRightsAndLaw ?? this.disableRightsAndLaw,
      nepalGovernmentServices:
          nepalGovernmentServices ?? this.nepalGovernmentServices,
      complain: complain ?? this.complain,
      partOfDisableGroup: partOfDisableGroup ?? this.partOfDisableGroup,
      takenTraining: takenTraining ?? this.takenTraining,
      memberOfGroup: memberOfGroup ?? this.memberOfGroup,
      leadershipPosition: leadershipPosition ?? this.leadershipPosition,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      surveyorName: surveyorName ?? this.surveyorName,
      img: img ?? this.img,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (district.present) {
      map['district'] = Variable<String>(district.value);
    }
    if (muncipality.present) {
      map['muncipality'] = Variable<String>(muncipality.value);
    }
    if (name.present) {
      map['name'] = Variable<int>(name.value);
    }
    if (surveyDate.present) {
      map['survey_date'] = Variable<String>(surveyDate.value);
    }
    if (personName.present) {
      map['person_name'] = Variable<String>(personName.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<String>(birthDate.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (currentAddress.present) {
      map['current_address'] = Variable<String>(currentAddress.value);
    }
    if (parmanentAddress.present) {
      map['parmanent_address'] = Variable<String>(parmanentAddress.value);
    }
    if (careTaker.present) {
      map['care_taker'] = Variable<String>(careTaker.value);
    }
    if (formSpeaker.present) {
      map['form_speaker'] = Variable<String>(formSpeaker.value);
    }
    if (formSpeakerRelation.present) {
      map['form_speaker_relation'] =
          Variable<String>(formSpeakerRelation.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (disableType.present) {
      map['disable_type'] = Variable<String>(disableType.value);
    }
    if (disableReason.present) {
      map['disable_reason'] = Variable<String>(disableReason.value);
    }
    if (disableStartAge.present) {
      map['disable_start_age'] = Variable<int>(disableStartAge.value);
    }
    if (hasdisableIdentityCard.present) {
      map['hasdisable_identity_card'] =
          Variable<bool>(hasdisableIdentityCard.value);
    }
    if (disableIdentityCardType.present) {
      map['disable_identity_card_type'] =
          Variable<String>(disableIdentityCardType.value);
    }
    if (maritalStatus.present) {
      map['marital_status'] = Variable<String>(maritalStatus.value);
    }
    if (educationStatus.present) {
      map['education_status'] = Variable<String>(educationStatus.value);
    }
    if (schoolType.present) {
      map['school_type'] = Variable<String>(schoolType.value);
    }
    if (occupationStatus.present) {
      map['occupation_status'] = Variable<String>(occupationStatus.value);
    }
    if (disableIncome.present) {
      map['disable_income'] = Variable<int>(disableIncome.value);
    }
    if (disableFamilyIncome.present) {
      map['disable_family_income'] = Variable<int>(disableFamilyIncome.value);
    }
    if (nationalIdentityCard.present) {
      map['national_identity_card'] =
          Variable<bool>(nationalIdentityCard.value);
    }
    if (awareNationalIdentityCard.present) {
      map['aware_national_identity_card'] =
          Variable<bool>(awareNationalIdentityCard.value);
    }
    if (birthCertificate.present) {
      map['birth_certificate'] = Variable<bool>(birthCertificate.value);
    }
    if (awareBirthCertificate.present) {
      map['aware_birth_certificate'] =
          Variable<bool>(awareBirthCertificate.value);
    }
    if (marriageCertificate.present) {
      map['marriage_certificate'] = Variable<bool>(marriageCertificate.value);
    }
    if (awareMarriageCertificate.present) {
      map['aware_marriage_certificate'] =
          Variable<bool>(awareMarriageCertificate.value);
    }
    if (voterIdCard.present) {
      map['voter_id_card'] = Variable<bool>(voterIdCard.value);
    }
    if (awareVoterIdCard.present) {
      map['aware_voter_id_card'] = Variable<bool>(awareVoterIdCard.value);
    }
    if (disableIdCard.present) {
      map['disable_id_card'] = Variable<bool>(disableIdCard.value);
    }
    if (awaredisableIdCard.present) {
      map['awaredisable_id_card'] = Variable<bool>(awaredisableIdCard.value);
    }
    if (socialSecurityAllowance.present) {
      map['social_security_allowance'] =
          Variable<bool>(socialSecurityAllowance.value);
    }
    if (awareSocialSecurityAllowance.present) {
      map['aware_social_security_allowance'] =
          Variable<bool>(awareSocialSecurityAllowance.value);
    }
    if (bankAccount.present) {
      map['bank_account'] = Variable<bool>(bankAccount.value);
    }
    if (awareBankAccount.present) {
      map['aware_bank_account'] = Variable<bool>(awareBankAccount.value);
    }
    if (healthInsurance.present) {
      map['health_insurance'] = Variable<bool>(healthInsurance.value);
    }
    if (awareHealthInsurance.present) {
      map['aware_health_insurance'] =
          Variable<bool>(awareHealthInsurance.value);
    }
    if (landWealth.present) {
      map['land_wealth'] = Variable<bool>(landWealth.value);
    }
    if (familyAndSocietyBehavior.present) {
      map['family_and_society_behavior'] =
          Variable<String>(familyAndSocietyBehavior.value);
    }
    if (friendsBehavior.present) {
      map['friends_behavior'] = Variable<String>(friendsBehavior.value);
    }
    if (familyAndSocialActivity.present) {
      map['family_and_social_activity'] =
          Variable<String>(familyAndSocialActivity.value);
    }
    if (voteInElection.present) {
      map['vote_in_election'] = Variable<bool>(voteInElection.value);
    }
    if (usingMedicine.present) {
      map['using_medicine'] = Variable<bool>(usingMedicine.value);
    }
    if (providedMedicine.present) {
      map['provided_medicine'] = Variable<bool>(providedMedicine.value);
    }
    if (providedMedicineDetail.present) {
      map['provided_medicine_detail'] =
          Variable<bool>(providedMedicineDetail.value);
    }
    if (freeService.present) {
      map['free_service'] = Variable<bool>(freeService.value);
    }
    if (usedAccessories.present) {
      map['used_accessories'] = Variable<bool>(usedAccessories.value);
    }
    if (vocationalTraining.present) {
      map['vocational_training'] = Variable<bool>(vocationalTraining.value);
    }
    if (vocationTrainingDuration.present) {
      map['vocation_training_duration'] =
          Variable<String>(vocationTrainingDuration.value);
    }
    if (wishVocationalTraining.present) {
      map['wish_vocational_training'] =
          Variable<bool>(wishVocationalTraining.value);
    }
    if (whichVocationalTraining.present) {
      map['which_vocational_training'] =
          Variable<String>(whichVocationalTraining.value);
    }
    if (currentBusiness.present) {
      map['current_business'] = Variable<String>(currentBusiness.value);
    }
    if (businessSupport.present) {
      map['business_support'] = Variable<bool>(businessSupport.value);
    }
    if (businessSupportDetail.present) {
      map['business_support_detail'] =
          Variable<String>(businessSupportDetail.value);
    }
    if (schoolFees.present) {
      map['school_fees'] = Variable<bool>(schoolFees.value);
    }
    if (schoolScholarship.present) {
      map['school_scholarship'] = Variable<bool>(schoolScholarship.value);
    }
    if (schoolTransport.present) {
      map['school_transport'] = Variable<bool>(schoolTransport.value);
    }
    if (schoolAccessability.present) {
      map['school_accessability'] = Variable<bool>(schoolAccessability.value);
    }
    if (schoolClubParticipation.present) {
      map['school_club_participation'] =
          Variable<bool>(schoolClubParticipation.value);
    }
    if (schoolExtracurricularActivities.present) {
      map['school_extracurricular_activities'] =
          Variable<bool>(schoolExtracurricularActivities.value);
    }
    if (disableRightsAndLaw.present) {
      map['disable_rights_and_law'] = Variable<bool>(disableRightsAndLaw.value);
    }
    if (nepalGovernmentServices.present) {
      map['nepal_government_services'] =
          Variable<bool>(nepalGovernmentServices.value);
    }
    if (complain.present) {
      map['complain'] = Variable<bool>(complain.value);
    }
    if (partOfDisableGroup.present) {
      map['part_of_disable_group'] = Variable<bool>(partOfDisableGroup.value);
    }
    if (takenTraining.present) {
      map['taken_training'] = Variable<bool>(takenTraining.value);
    }
    if (memberOfGroup.present) {
      map['member_of_group'] = Variable<bool>(memberOfGroup.value);
    }
    if (leadershipPosition.present) {
      map['leadership_position'] = Variable<bool>(leadershipPosition.value);
    }
    if (lat.present) {
      map['lat'] = Variable<String>(lat.value);
    }
    if (lng.present) {
      map['lng'] = Variable<String>(lng.value);
    }
    if (surveyorName.present) {
      map['surveyor_name'] = Variable<String>(surveyorName.value);
    }
    if (img.present) {
      map['img'] = Variable<String>(img.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('district: $district, ')
          ..write('muncipality: $muncipality, ')
          ..write('name: $name, ')
          ..write('surveyDate: $surveyDate, ')
          ..write('personName: $personName, ')
          ..write('birthDate: $birthDate, ')
          ..write('gender: $gender, ')
          ..write('currentAddress: $currentAddress, ')
          ..write('parmanentAddress: $parmanentAddress, ')
          ..write('careTaker: $careTaker, ')
          ..write('formSpeaker: $formSpeaker, ')
          ..write('formSpeakerRelation: $formSpeakerRelation, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('disableType: $disableType, ')
          ..write('disableReason: $disableReason, ')
          ..write('disableStartAge: $disableStartAge, ')
          ..write('hasdisableIdentityCard: $hasdisableIdentityCard, ')
          ..write('disableIdentityCardType: $disableIdentityCardType, ')
          ..write('maritalStatus: $maritalStatus, ')
          ..write('educationStatus: $educationStatus, ')
          ..write('schoolType: $schoolType, ')
          ..write('occupationStatus: $occupationStatus, ')
          ..write('disableIncome: $disableIncome, ')
          ..write('disableFamilyIncome: $disableFamilyIncome, ')
          ..write('nationalIdentityCard: $nationalIdentityCard, ')
          ..write('awareNationalIdentityCard: $awareNationalIdentityCard, ')
          ..write('birthCertificate: $birthCertificate, ')
          ..write('awareBirthCertificate: $awareBirthCertificate, ')
          ..write('marriageCertificate: $marriageCertificate, ')
          ..write('awareMarriageCertificate: $awareMarriageCertificate, ')
          ..write('voterIdCard: $voterIdCard, ')
          ..write('awareVoterIdCard: $awareVoterIdCard, ')
          ..write('disableIdCard: $disableIdCard, ')
          ..write('awaredisableIdCard: $awaredisableIdCard, ')
          ..write('socialSecurityAllowance: $socialSecurityAllowance, ')
          ..write(
              'awareSocialSecurityAllowance: $awareSocialSecurityAllowance, ')
          ..write('bankAccount: $bankAccount, ')
          ..write('awareBankAccount: $awareBankAccount, ')
          ..write('healthInsurance: $healthInsurance, ')
          ..write('awareHealthInsurance: $awareHealthInsurance, ')
          ..write('landWealth: $landWealth, ')
          ..write('familyAndSocietyBehavior: $familyAndSocietyBehavior, ')
          ..write('friendsBehavior: $friendsBehavior, ')
          ..write('familyAndSocialActivity: $familyAndSocialActivity, ')
          ..write('voteInElection: $voteInElection, ')
          ..write('usingMedicine: $usingMedicine, ')
          ..write('providedMedicine: $providedMedicine, ')
          ..write('providedMedicineDetail: $providedMedicineDetail, ')
          ..write('freeService: $freeService, ')
          ..write('usedAccessories: $usedAccessories, ')
          ..write('vocationalTraining: $vocationalTraining, ')
          ..write('vocationTrainingDuration: $vocationTrainingDuration, ')
          ..write('wishVocationalTraining: $wishVocationalTraining, ')
          ..write('whichVocationalTraining: $whichVocationalTraining, ')
          ..write('currentBusiness: $currentBusiness, ')
          ..write('businessSupport: $businessSupport, ')
          ..write('businessSupportDetail: $businessSupportDetail, ')
          ..write('schoolFees: $schoolFees, ')
          ..write('schoolScholarship: $schoolScholarship, ')
          ..write('schoolTransport: $schoolTransport, ')
          ..write('schoolAccessability: $schoolAccessability, ')
          ..write('schoolClubParticipation: $schoolClubParticipation, ')
          ..write(
              'schoolExtracurricularActivities: $schoolExtracurricularActivities, ')
          ..write('disableRightsAndLaw: $disableRightsAndLaw, ')
          ..write('nepalGovernmentServices: $nepalGovernmentServices, ')
          ..write('complain: $complain, ')
          ..write('partOfDisableGroup: $partOfDisableGroup, ')
          ..write('takenTraining: $takenTraining, ')
          ..write('memberOfGroup: $memberOfGroup, ')
          ..write('leadershipPosition: $leadershipPosition, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('surveyorName: $surveyorName, ')
          ..write('img: $img')
          ..write(')'))
        .toString();
  }
}

class $TasksTable extends Tasks with TableInfo<$TasksTable, Task> {
  final GeneratedDatabase _db;
  final String _alias;
  $TasksTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _districtMeta = const VerificationMeta('district');
  GeneratedTextColumn _district;
  @override
  GeneratedTextColumn get district => _district ??= _constructDistrict();
  GeneratedTextColumn _constructDistrict() {
    return GeneratedTextColumn('district', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _muncipalityMeta =
      const VerificationMeta('muncipality');
  GeneratedTextColumn _muncipality;
  @override
  GeneratedTextColumn get muncipality =>
      _muncipality ??= _constructMuncipality();
  GeneratedTextColumn _constructMuncipality() {
    return GeneratedTextColumn('muncipality', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedIntColumn _name;
  @override
  GeneratedIntColumn get name => _name ??= _constructName();
  GeneratedIntColumn _constructName() {
    return GeneratedIntColumn(
      'name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _surveyDateMeta = const VerificationMeta('surveyDate');
  GeneratedTextColumn _surveyDate;
  @override
  GeneratedTextColumn get surveyDate => _surveyDate ??= _constructSurveyDate();
  GeneratedTextColumn _constructSurveyDate() {
    return GeneratedTextColumn('survey_date', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _personNameMeta = const VerificationMeta('personName');
  GeneratedTextColumn _personName;
  @override
  GeneratedTextColumn get personName => _personName ??= _constructPersonName();
  GeneratedTextColumn _constructPersonName() {
    return GeneratedTextColumn('person_name', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _birthDateMeta = const VerificationMeta('birthDate');
  GeneratedTextColumn _birthDate;
  @override
  GeneratedTextColumn get birthDate => _birthDate ??= _constructBirthDate();
  GeneratedTextColumn _constructBirthDate() {
    return GeneratedTextColumn('birth_date', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  GeneratedTextColumn _gender;
  @override
  GeneratedTextColumn get gender => _gender ??= _constructGender();
  GeneratedTextColumn _constructGender() {
    return GeneratedTextColumn('gender', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _currentAddressMeta =
      const VerificationMeta('currentAddress');
  GeneratedTextColumn _currentAddress;
  @override
  GeneratedTextColumn get currentAddress =>
      _currentAddress ??= _constructCurrentAddress();
  GeneratedTextColumn _constructCurrentAddress() {
    return GeneratedTextColumn('current_address', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _parmanentAddressMeta =
      const VerificationMeta('parmanentAddress');
  GeneratedTextColumn _parmanentAddress;
  @override
  GeneratedTextColumn get parmanentAddress =>
      _parmanentAddress ??= _constructParmanentAddress();
  GeneratedTextColumn _constructParmanentAddress() {
    return GeneratedTextColumn('parmanent_address', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _careTakerMeta = const VerificationMeta('careTaker');
  GeneratedTextColumn _careTaker;
  @override
  GeneratedTextColumn get careTaker => _careTaker ??= _constructCareTaker();
  GeneratedTextColumn _constructCareTaker() {
    return GeneratedTextColumn('care_taker', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _formSpeakerMeta =
      const VerificationMeta('formSpeaker');
  GeneratedTextColumn _formSpeaker;
  @override
  GeneratedTextColumn get formSpeaker =>
      _formSpeaker ??= _constructFormSpeaker();
  GeneratedTextColumn _constructFormSpeaker() {
    return GeneratedTextColumn('form_speaker', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _formSpeakerRelationMeta =
      const VerificationMeta('formSpeakerRelation');
  GeneratedTextColumn _formSpeakerRelation;
  @override
  GeneratedTextColumn get formSpeakerRelation =>
      _formSpeakerRelation ??= _constructFormSpeakerRelation();
  GeneratedTextColumn _constructFormSpeakerRelation() {
    return GeneratedTextColumn('form_speaker_relation', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  GeneratedTextColumn _phoneNumber;
  @override
  GeneratedTextColumn get phoneNumber =>
      _phoneNumber ??= _constructPhoneNumber();
  GeneratedTextColumn _constructPhoneNumber() {
    return GeneratedTextColumn('phone_number', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _disableTypeMeta =
      const VerificationMeta('disableType');
  GeneratedTextColumn _disableType;
  @override
  GeneratedTextColumn get disableType =>
      _disableType ??= _constructDisableType();
  GeneratedTextColumn _constructDisableType() {
    return GeneratedTextColumn('disable_type', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _disableReasonMeta =
      const VerificationMeta('disableReason');
  GeneratedTextColumn _disableReason;
  @override
  GeneratedTextColumn get disableReason =>
      _disableReason ??= _constructDisableReason();
  GeneratedTextColumn _constructDisableReason() {
    return GeneratedTextColumn('disable_reason', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _disableStartAgeMeta =
      const VerificationMeta('disableStartAge');
  GeneratedIntColumn _disableStartAge;
  @override
  GeneratedIntColumn get disableStartAge =>
      _disableStartAge ??= _constructDisableStartAge();
  GeneratedIntColumn _constructDisableStartAge() {
    return GeneratedIntColumn(
      'disable_start_age',
      $tableName,
      true,
    );
  }

  final VerificationMeta _hasdisableIdentityCardMeta =
      const VerificationMeta('hasdisableIdentityCard');
  GeneratedBoolColumn _hasdisableIdentityCard;
  @override
  GeneratedBoolColumn get hasdisableIdentityCard =>
      _hasdisableIdentityCard ??= _constructHasdisableIdentityCard();
  GeneratedBoolColumn _constructHasdisableIdentityCard() {
    return GeneratedBoolColumn('hasdisable_identity_card', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _disableIdentityCardTypeMeta =
      const VerificationMeta('disableIdentityCardType');
  GeneratedTextColumn _disableIdentityCardType;
  @override
  GeneratedTextColumn get disableIdentityCardType =>
      _disableIdentityCardType ??= _constructDisableIdentityCardType();
  GeneratedTextColumn _constructDisableIdentityCardType() {
    return GeneratedTextColumn('disable_identity_card_type', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _maritalStatusMeta =
      const VerificationMeta('maritalStatus');
  GeneratedTextColumn _maritalStatus;
  @override
  GeneratedTextColumn get maritalStatus =>
      _maritalStatus ??= _constructMaritalStatus();
  GeneratedTextColumn _constructMaritalStatus() {
    return GeneratedTextColumn('marital_status', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _educationStatusMeta =
      const VerificationMeta('educationStatus');
  GeneratedTextColumn _educationStatus;
  @override
  GeneratedTextColumn get educationStatus =>
      _educationStatus ??= _constructEducationStatus();
  GeneratedTextColumn _constructEducationStatus() {
    return GeneratedTextColumn('education_status', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _schoolTypeMeta = const VerificationMeta('schoolType');
  GeneratedTextColumn _schoolType;
  @override
  GeneratedTextColumn get schoolType => _schoolType ??= _constructSchoolType();
  GeneratedTextColumn _constructSchoolType() {
    return GeneratedTextColumn('school_type', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _occupationStatusMeta =
      const VerificationMeta('occupationStatus');
  GeneratedTextColumn _occupationStatus;
  @override
  GeneratedTextColumn get occupationStatus =>
      _occupationStatus ??= _constructOccupationStatus();
  GeneratedTextColumn _constructOccupationStatus() {
    return GeneratedTextColumn('occupation_status', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _disableIncomeMeta =
      const VerificationMeta('disableIncome');
  GeneratedIntColumn _disableIncome;
  @override
  GeneratedIntColumn get disableIncome =>
      _disableIncome ??= _constructDisableIncome();
  GeneratedIntColumn _constructDisableIncome() {
    return GeneratedIntColumn(
      'disable_income',
      $tableName,
      true,
    );
  }

  final VerificationMeta _disableFamilyIncomeMeta =
      const VerificationMeta('disableFamilyIncome');
  GeneratedIntColumn _disableFamilyIncome;
  @override
  GeneratedIntColumn get disableFamilyIncome =>
      _disableFamilyIncome ??= _constructDisableFamilyIncome();
  GeneratedIntColumn _constructDisableFamilyIncome() {
    return GeneratedIntColumn(
      'disable_family_income',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nationalIdentityCardMeta =
      const VerificationMeta('nationalIdentityCard');
  GeneratedBoolColumn _nationalIdentityCard;
  @override
  GeneratedBoolColumn get nationalIdentityCard =>
      _nationalIdentityCard ??= _constructNationalIdentityCard();
  GeneratedBoolColumn _constructNationalIdentityCard() {
    return GeneratedBoolColumn('national_identity_card', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _awareNationalIdentityCardMeta =
      const VerificationMeta('awareNationalIdentityCard');
  GeneratedBoolColumn _awareNationalIdentityCard;
  @override
  GeneratedBoolColumn get awareNationalIdentityCard =>
      _awareNationalIdentityCard ??= _constructAwareNationalIdentityCard();
  GeneratedBoolColumn _constructAwareNationalIdentityCard() {
    return GeneratedBoolColumn(
        'aware_national_identity_card', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _birthCertificateMeta =
      const VerificationMeta('birthCertificate');
  GeneratedBoolColumn _birthCertificate;
  @override
  GeneratedBoolColumn get birthCertificate =>
      _birthCertificate ??= _constructBirthCertificate();
  GeneratedBoolColumn _constructBirthCertificate() {
    return GeneratedBoolColumn('birth_certificate', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _awareBirthCertificateMeta =
      const VerificationMeta('awareBirthCertificate');
  GeneratedBoolColumn _awareBirthCertificate;
  @override
  GeneratedBoolColumn get awareBirthCertificate =>
      _awareBirthCertificate ??= _constructAwareBirthCertificate();
  GeneratedBoolColumn _constructAwareBirthCertificate() {
    return GeneratedBoolColumn('aware_birth_certificate', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _marriageCertificateMeta =
      const VerificationMeta('marriageCertificate');
  GeneratedBoolColumn _marriageCertificate;
  @override
  GeneratedBoolColumn get marriageCertificate =>
      _marriageCertificate ??= _constructMarriageCertificate();
  GeneratedBoolColumn _constructMarriageCertificate() {
    return GeneratedBoolColumn('marriage_certificate', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _awareMarriageCertificateMeta =
      const VerificationMeta('awareMarriageCertificate');
  GeneratedBoolColumn _awareMarriageCertificate;
  @override
  GeneratedBoolColumn get awareMarriageCertificate =>
      _awareMarriageCertificate ??= _constructAwareMarriageCertificate();
  GeneratedBoolColumn _constructAwareMarriageCertificate() {
    return GeneratedBoolColumn('aware_marriage_certificate', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _voterIdCardMeta =
      const VerificationMeta('voterIdCard');
  GeneratedBoolColumn _voterIdCard;
  @override
  GeneratedBoolColumn get voterIdCard =>
      _voterIdCard ??= _constructVoterIdCard();
  GeneratedBoolColumn _constructVoterIdCard() {
    return GeneratedBoolColumn('voter_id_card', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _awareVoterIdCardMeta =
      const VerificationMeta('awareVoterIdCard');
  GeneratedBoolColumn _awareVoterIdCard;
  @override
  GeneratedBoolColumn get awareVoterIdCard =>
      _awareVoterIdCard ??= _constructAwareVoterIdCard();
  GeneratedBoolColumn _constructAwareVoterIdCard() {
    return GeneratedBoolColumn('aware_voter_id_card', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _disableIdCardMeta =
      const VerificationMeta('disableIdCard');
  GeneratedBoolColumn _disableIdCard;
  @override
  GeneratedBoolColumn get disableIdCard =>
      _disableIdCard ??= _constructDisableIdCard();
  GeneratedBoolColumn _constructDisableIdCard() {
    return GeneratedBoolColumn('disable_id_card', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _awaredisableIdCardMeta =
      const VerificationMeta('awaredisableIdCard');
  GeneratedBoolColumn _awaredisableIdCard;
  @override
  GeneratedBoolColumn get awaredisableIdCard =>
      _awaredisableIdCard ??= _constructAwaredisableIdCard();
  GeneratedBoolColumn _constructAwaredisableIdCard() {
    return GeneratedBoolColumn('awaredisable_id_card', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _socialSecurityAllowanceMeta =
      const VerificationMeta('socialSecurityAllowance');
  GeneratedBoolColumn _socialSecurityAllowance;
  @override
  GeneratedBoolColumn get socialSecurityAllowance =>
      _socialSecurityAllowance ??= _constructSocialSecurityAllowance();
  GeneratedBoolColumn _constructSocialSecurityAllowance() {
    return GeneratedBoolColumn('social_security_allowance', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _awareSocialSecurityAllowanceMeta =
      const VerificationMeta('awareSocialSecurityAllowance');
  GeneratedBoolColumn _awareSocialSecurityAllowance;
  @override
  GeneratedBoolColumn get awareSocialSecurityAllowance =>
      _awareSocialSecurityAllowance ??=
          _constructAwareSocialSecurityAllowance();
  GeneratedBoolColumn _constructAwareSocialSecurityAllowance() {
    return GeneratedBoolColumn(
        'aware_social_security_allowance', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _bankAccountMeta =
      const VerificationMeta('bankAccount');
  GeneratedBoolColumn _bankAccount;
  @override
  GeneratedBoolColumn get bankAccount =>
      _bankAccount ??= _constructBankAccount();
  GeneratedBoolColumn _constructBankAccount() {
    return GeneratedBoolColumn('bank_account', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _awareBankAccountMeta =
      const VerificationMeta('awareBankAccount');
  GeneratedBoolColumn _awareBankAccount;
  @override
  GeneratedBoolColumn get awareBankAccount =>
      _awareBankAccount ??= _constructAwareBankAccount();
  GeneratedBoolColumn _constructAwareBankAccount() {
    return GeneratedBoolColumn('aware_bank_account', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _healthInsuranceMeta =
      const VerificationMeta('healthInsurance');
  GeneratedBoolColumn _healthInsurance;
  @override
  GeneratedBoolColumn get healthInsurance =>
      _healthInsurance ??= _constructHealthInsurance();
  GeneratedBoolColumn _constructHealthInsurance() {
    return GeneratedBoolColumn('health_insurance', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _awareHealthInsuranceMeta =
      const VerificationMeta('awareHealthInsurance');
  GeneratedBoolColumn _awareHealthInsurance;
  @override
  GeneratedBoolColumn get awareHealthInsurance =>
      _awareHealthInsurance ??= _constructAwareHealthInsurance();
  GeneratedBoolColumn _constructAwareHealthInsurance() {
    return GeneratedBoolColumn('aware_health_insurance', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _landWealthMeta = const VerificationMeta('landWealth');
  GeneratedBoolColumn _landWealth;
  @override
  GeneratedBoolColumn get landWealth => _landWealth ??= _constructLandWealth();
  GeneratedBoolColumn _constructLandWealth() {
    return GeneratedBoolColumn('land_wealth', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _familyAndSocietyBehaviorMeta =
      const VerificationMeta('familyAndSocietyBehavior');
  GeneratedTextColumn _familyAndSocietyBehavior;
  @override
  GeneratedTextColumn get familyAndSocietyBehavior =>
      _familyAndSocietyBehavior ??= _constructFamilyAndSocietyBehavior();
  GeneratedTextColumn _constructFamilyAndSocietyBehavior() {
    return GeneratedTextColumn('family_and_society_behavior', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _friendsBehaviorMeta =
      const VerificationMeta('friendsBehavior');
  GeneratedTextColumn _friendsBehavior;
  @override
  GeneratedTextColumn get friendsBehavior =>
      _friendsBehavior ??= _constructFriendsBehavior();
  GeneratedTextColumn _constructFriendsBehavior() {
    return GeneratedTextColumn('friends_behavior', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _familyAndSocialActivityMeta =
      const VerificationMeta('familyAndSocialActivity');
  GeneratedTextColumn _familyAndSocialActivity;
  @override
  GeneratedTextColumn get familyAndSocialActivity =>
      _familyAndSocialActivity ??= _constructFamilyAndSocialActivity();
  GeneratedTextColumn _constructFamilyAndSocialActivity() {
    return GeneratedTextColumn('family_and_social_activity', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _voteInElectionMeta =
      const VerificationMeta('voteInElection');
  GeneratedBoolColumn _voteInElection;
  @override
  GeneratedBoolColumn get voteInElection =>
      _voteInElection ??= _constructVoteInElection();
  GeneratedBoolColumn _constructVoteInElection() {
    return GeneratedBoolColumn('vote_in_election', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _usingMedicineMeta =
      const VerificationMeta('usingMedicine');
  GeneratedBoolColumn _usingMedicine;
  @override
  GeneratedBoolColumn get usingMedicine =>
      _usingMedicine ??= _constructUsingMedicine();
  GeneratedBoolColumn _constructUsingMedicine() {
    return GeneratedBoolColumn('using_medicine', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _providedMedicineMeta =
      const VerificationMeta('providedMedicine');
  GeneratedBoolColumn _providedMedicine;
  @override
  GeneratedBoolColumn get providedMedicine =>
      _providedMedicine ??= _constructProvidedMedicine();
  GeneratedBoolColumn _constructProvidedMedicine() {
    return GeneratedBoolColumn('provided_medicine', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _providedMedicineDetailMeta =
      const VerificationMeta('providedMedicineDetail');
  GeneratedBoolColumn _providedMedicineDetail;
  @override
  GeneratedBoolColumn get providedMedicineDetail =>
      _providedMedicineDetail ??= _constructProvidedMedicineDetail();
  GeneratedBoolColumn _constructProvidedMedicineDetail() {
    return GeneratedBoolColumn('provided_medicine_detail', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _freeServiceMeta =
      const VerificationMeta('freeService');
  GeneratedBoolColumn _freeService;
  @override
  GeneratedBoolColumn get freeService =>
      _freeService ??= _constructFreeService();
  GeneratedBoolColumn _constructFreeService() {
    return GeneratedBoolColumn('free_service', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _usedAccessoriesMeta =
      const VerificationMeta('usedAccessories');
  GeneratedBoolColumn _usedAccessories;
  @override
  GeneratedBoolColumn get usedAccessories =>
      _usedAccessories ??= _constructUsedAccessories();
  GeneratedBoolColumn _constructUsedAccessories() {
    return GeneratedBoolColumn('used_accessories', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _vocationalTrainingMeta =
      const VerificationMeta('vocationalTraining');
  GeneratedBoolColumn _vocationalTraining;
  @override
  GeneratedBoolColumn get vocationalTraining =>
      _vocationalTraining ??= _constructVocationalTraining();
  GeneratedBoolColumn _constructVocationalTraining() {
    return GeneratedBoolColumn('vocational_training', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _vocationTrainingDurationMeta =
      const VerificationMeta('vocationTrainingDuration');
  GeneratedTextColumn _vocationTrainingDuration;
  @override
  GeneratedTextColumn get vocationTrainingDuration =>
      _vocationTrainingDuration ??= _constructVocationTrainingDuration();
  GeneratedTextColumn _constructVocationTrainingDuration() {
    return GeneratedTextColumn('vocation_training_duration', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _wishVocationalTrainingMeta =
      const VerificationMeta('wishVocationalTraining');
  GeneratedBoolColumn _wishVocationalTraining;
  @override
  GeneratedBoolColumn get wishVocationalTraining =>
      _wishVocationalTraining ??= _constructWishVocationalTraining();
  GeneratedBoolColumn _constructWishVocationalTraining() {
    return GeneratedBoolColumn('wish_vocational_training', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _whichVocationalTrainingMeta =
      const VerificationMeta('whichVocationalTraining');
  GeneratedTextColumn _whichVocationalTraining;
  @override
  GeneratedTextColumn get whichVocationalTraining =>
      _whichVocationalTraining ??= _constructWhichVocationalTraining();
  GeneratedTextColumn _constructWhichVocationalTraining() {
    return GeneratedTextColumn('which_vocational_training', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _currentBusinessMeta =
      const VerificationMeta('currentBusiness');
  GeneratedTextColumn _currentBusiness;
  @override
  GeneratedTextColumn get currentBusiness =>
      _currentBusiness ??= _constructCurrentBusiness();
  GeneratedTextColumn _constructCurrentBusiness() {
    return GeneratedTextColumn('current_business', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _businessSupportMeta =
      const VerificationMeta('businessSupport');
  GeneratedBoolColumn _businessSupport;
  @override
  GeneratedBoolColumn get businessSupport =>
      _businessSupport ??= _constructBusinessSupport();
  GeneratedBoolColumn _constructBusinessSupport() {
    return GeneratedBoolColumn('business_support', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _businessSupportDetailMeta =
      const VerificationMeta('businessSupportDetail');
  GeneratedTextColumn _businessSupportDetail;
  @override
  GeneratedTextColumn get businessSupportDetail =>
      _businessSupportDetail ??= _constructBusinessSupportDetail();
  GeneratedTextColumn _constructBusinessSupportDetail() {
    return GeneratedTextColumn('business_support_detail', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _schoolFeesMeta = const VerificationMeta('schoolFees');
  GeneratedBoolColumn _schoolFees;
  @override
  GeneratedBoolColumn get schoolFees => _schoolFees ??= _constructSchoolFees();
  GeneratedBoolColumn _constructSchoolFees() {
    return GeneratedBoolColumn('school_fees', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _schoolScholarshipMeta =
      const VerificationMeta('schoolScholarship');
  GeneratedBoolColumn _schoolScholarship;
  @override
  GeneratedBoolColumn get schoolScholarship =>
      _schoolScholarship ??= _constructSchoolScholarship();
  GeneratedBoolColumn _constructSchoolScholarship() {
    return GeneratedBoolColumn('school_scholarship', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _schoolTransportMeta =
      const VerificationMeta('schoolTransport');
  GeneratedBoolColumn _schoolTransport;
  @override
  GeneratedBoolColumn get schoolTransport =>
      _schoolTransport ??= _constructSchoolTransport();
  GeneratedBoolColumn _constructSchoolTransport() {
    return GeneratedBoolColumn('school_transport', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _schoolAccessabilityMeta =
      const VerificationMeta('schoolAccessability');
  GeneratedBoolColumn _schoolAccessability;
  @override
  GeneratedBoolColumn get schoolAccessability =>
      _schoolAccessability ??= _constructSchoolAccessability();
  GeneratedBoolColumn _constructSchoolAccessability() {
    return GeneratedBoolColumn('school_accessability', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _schoolClubParticipationMeta =
      const VerificationMeta('schoolClubParticipation');
  GeneratedBoolColumn _schoolClubParticipation;
  @override
  GeneratedBoolColumn get schoolClubParticipation =>
      _schoolClubParticipation ??= _constructSchoolClubParticipation();
  GeneratedBoolColumn _constructSchoolClubParticipation() {
    return GeneratedBoolColumn('school_club_participation', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _schoolExtracurricularActivitiesMeta =
      const VerificationMeta('schoolExtracurricularActivities');
  GeneratedBoolColumn _schoolExtracurricularActivities;
  @override
  GeneratedBoolColumn get schoolExtracurricularActivities =>
      _schoolExtracurricularActivities ??=
          _constructSchoolExtracurricularActivities();
  GeneratedBoolColumn _constructSchoolExtracurricularActivities() {
    return GeneratedBoolColumn(
        'school_extracurricular_activities', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _disableRightsAndLawMeta =
      const VerificationMeta('disableRightsAndLaw');
  GeneratedBoolColumn _disableRightsAndLaw;
  @override
  GeneratedBoolColumn get disableRightsAndLaw =>
      _disableRightsAndLaw ??= _constructDisableRightsAndLaw();
  GeneratedBoolColumn _constructDisableRightsAndLaw() {
    return GeneratedBoolColumn('disable_rights_and_law', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _nepalGovernmentServicesMeta =
      const VerificationMeta('nepalGovernmentServices');
  GeneratedBoolColumn _nepalGovernmentServices;
  @override
  GeneratedBoolColumn get nepalGovernmentServices =>
      _nepalGovernmentServices ??= _constructNepalGovernmentServices();
  GeneratedBoolColumn _constructNepalGovernmentServices() {
    return GeneratedBoolColumn('nepal_government_services', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _complainMeta = const VerificationMeta('complain');
  GeneratedBoolColumn _complain;
  @override
  GeneratedBoolColumn get complain => _complain ??= _constructComplain();
  GeneratedBoolColumn _constructComplain() {
    return GeneratedBoolColumn('complain', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _partOfDisableGroupMeta =
      const VerificationMeta('partOfDisableGroup');
  GeneratedBoolColumn _partOfDisableGroup;
  @override
  GeneratedBoolColumn get partOfDisableGroup =>
      _partOfDisableGroup ??= _constructPartOfDisableGroup();
  GeneratedBoolColumn _constructPartOfDisableGroup() {
    return GeneratedBoolColumn('part_of_disable_group', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _takenTrainingMeta =
      const VerificationMeta('takenTraining');
  GeneratedBoolColumn _takenTraining;
  @override
  GeneratedBoolColumn get takenTraining =>
      _takenTraining ??= _constructTakenTraining();
  GeneratedBoolColumn _constructTakenTraining() {
    return GeneratedBoolColumn('taken_training', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _memberOfGroupMeta =
      const VerificationMeta('memberOfGroup');
  GeneratedBoolColumn _memberOfGroup;
  @override
  GeneratedBoolColumn get memberOfGroup =>
      _memberOfGroup ??= _constructMemberOfGroup();
  GeneratedBoolColumn _constructMemberOfGroup() {
    return GeneratedBoolColumn('member_of_group', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _leadershipPositionMeta =
      const VerificationMeta('leadershipPosition');
  GeneratedBoolColumn _leadershipPosition;
  @override
  GeneratedBoolColumn get leadershipPosition =>
      _leadershipPosition ??= _constructLeadershipPosition();
  GeneratedBoolColumn _constructLeadershipPosition() {
    return GeneratedBoolColumn('leadership_position', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _latMeta = const VerificationMeta('lat');
  GeneratedTextColumn _lat;
  @override
  GeneratedTextColumn get lat => _lat ??= _constructLat();
  GeneratedTextColumn _constructLat() {
    return GeneratedTextColumn('lat', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _lngMeta = const VerificationMeta('lng');
  GeneratedTextColumn _lng;
  @override
  GeneratedTextColumn get lng => _lng ??= _constructLng();
  GeneratedTextColumn _constructLng() {
    return GeneratedTextColumn('lng', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _surveyorNameMeta =
      const VerificationMeta('surveyorName');
  GeneratedTextColumn _surveyorName;
  @override
  GeneratedTextColumn get surveyorName =>
      _surveyorName ??= _constructSurveyorName();
  GeneratedTextColumn _constructSurveyorName() {
    return GeneratedTextColumn('surveyor_name', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _imgMeta = const VerificationMeta('img');
  GeneratedTextColumn _img;
  @override
  GeneratedTextColumn get img => _img ??= _constructImg();
  GeneratedTextColumn _constructImg() {
    return GeneratedTextColumn(
      'img',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        district,
        muncipality,
        name,
        surveyDate,
        personName,
        birthDate,
        gender,
        currentAddress,
        parmanentAddress,
        careTaker,
        formSpeaker,
        formSpeakerRelation,
        phoneNumber,
        disableType,
        disableReason,
        disableStartAge,
        hasdisableIdentityCard,
        disableIdentityCardType,
        maritalStatus,
        educationStatus,
        schoolType,
        occupationStatus,
        disableIncome,
        disableFamilyIncome,
        nationalIdentityCard,
        awareNationalIdentityCard,
        birthCertificate,
        awareBirthCertificate,
        marriageCertificate,
        awareMarriageCertificate,
        voterIdCard,
        awareVoterIdCard,
        disableIdCard,
        awaredisableIdCard,
        socialSecurityAllowance,
        awareSocialSecurityAllowance,
        bankAccount,
        awareBankAccount,
        healthInsurance,
        awareHealthInsurance,
        landWealth,
        familyAndSocietyBehavior,
        friendsBehavior,
        familyAndSocialActivity,
        voteInElection,
        usingMedicine,
        providedMedicine,
        providedMedicineDetail,
        freeService,
        usedAccessories,
        vocationalTraining,
        vocationTrainingDuration,
        wishVocationalTraining,
        whichVocationalTraining,
        currentBusiness,
        businessSupport,
        businessSupportDetail,
        schoolFees,
        schoolScholarship,
        schoolTransport,
        schoolAccessability,
        schoolClubParticipation,
        schoolExtracurricularActivities,
        disableRightsAndLaw,
        nepalGovernmentServices,
        complain,
        partOfDisableGroup,
        takenTraining,
        memberOfGroup,
        leadershipPosition,
        lat,
        lng,
        surveyorName,
        img
      ];
  @override
  $TasksTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tasks';
  @override
  final String actualTableName = 'tasks';
  @override
  VerificationContext validateIntegrity(Insertable<Task> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('district')) {
      context.handle(_districtMeta,
          district.isAcceptableOrUnknown(data['district'], _districtMeta));
    }
    if (data.containsKey('muncipality')) {
      context.handle(
          _muncipalityMeta,
          muncipality.isAcceptableOrUnknown(
              data['muncipality'], _muncipalityMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    }
    if (data.containsKey('survey_date')) {
      context.handle(
          _surveyDateMeta,
          surveyDate.isAcceptableOrUnknown(
              data['survey_date'], _surveyDateMeta));
    }
    if (data.containsKey('person_name')) {
      context.handle(
          _personNameMeta,
          personName.isAcceptableOrUnknown(
              data['person_name'], _personNameMeta));
    }
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date'], _birthDateMeta));
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender'], _genderMeta));
    }
    if (data.containsKey('current_address')) {
      context.handle(
          _currentAddressMeta,
          currentAddress.isAcceptableOrUnknown(
              data['current_address'], _currentAddressMeta));
    }
    if (data.containsKey('parmanent_address')) {
      context.handle(
          _parmanentAddressMeta,
          parmanentAddress.isAcceptableOrUnknown(
              data['parmanent_address'], _parmanentAddressMeta));
    }
    if (data.containsKey('care_taker')) {
      context.handle(_careTakerMeta,
          careTaker.isAcceptableOrUnknown(data['care_taker'], _careTakerMeta));
    }
    if (data.containsKey('form_speaker')) {
      context.handle(
          _formSpeakerMeta,
          formSpeaker.isAcceptableOrUnknown(
              data['form_speaker'], _formSpeakerMeta));
    }
    if (data.containsKey('form_speaker_relation')) {
      context.handle(
          _formSpeakerRelationMeta,
          formSpeakerRelation.isAcceptableOrUnknown(
              data['form_speaker_relation'], _formSpeakerRelationMeta));
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number'], _phoneNumberMeta));
    }
    if (data.containsKey('disable_type')) {
      context.handle(
          _disableTypeMeta,
          disableType.isAcceptableOrUnknown(
              data['disable_type'], _disableTypeMeta));
    }
    if (data.containsKey('disable_reason')) {
      context.handle(
          _disableReasonMeta,
          disableReason.isAcceptableOrUnknown(
              data['disable_reason'], _disableReasonMeta));
    }
    if (data.containsKey('disable_start_age')) {
      context.handle(
          _disableStartAgeMeta,
          disableStartAge.isAcceptableOrUnknown(
              data['disable_start_age'], _disableStartAgeMeta));
    }
    if (data.containsKey('hasdisable_identity_card')) {
      context.handle(
          _hasdisableIdentityCardMeta,
          hasdisableIdentityCard.isAcceptableOrUnknown(
              data['hasdisable_identity_card'], _hasdisableIdentityCardMeta));
    }
    if (data.containsKey('disable_identity_card_type')) {
      context.handle(
          _disableIdentityCardTypeMeta,
          disableIdentityCardType.isAcceptableOrUnknown(
              data['disable_identity_card_type'],
              _disableIdentityCardTypeMeta));
    }
    if (data.containsKey('marital_status')) {
      context.handle(
          _maritalStatusMeta,
          maritalStatus.isAcceptableOrUnknown(
              data['marital_status'], _maritalStatusMeta));
    }
    if (data.containsKey('education_status')) {
      context.handle(
          _educationStatusMeta,
          educationStatus.isAcceptableOrUnknown(
              data['education_status'], _educationStatusMeta));
    }
    if (data.containsKey('school_type')) {
      context.handle(
          _schoolTypeMeta,
          schoolType.isAcceptableOrUnknown(
              data['school_type'], _schoolTypeMeta));
    }
    if (data.containsKey('occupation_status')) {
      context.handle(
          _occupationStatusMeta,
          occupationStatus.isAcceptableOrUnknown(
              data['occupation_status'], _occupationStatusMeta));
    }
    if (data.containsKey('disable_income')) {
      context.handle(
          _disableIncomeMeta,
          disableIncome.isAcceptableOrUnknown(
              data['disable_income'], _disableIncomeMeta));
    }
    if (data.containsKey('disable_family_income')) {
      context.handle(
          _disableFamilyIncomeMeta,
          disableFamilyIncome.isAcceptableOrUnknown(
              data['disable_family_income'], _disableFamilyIncomeMeta));
    }
    if (data.containsKey('national_identity_card')) {
      context.handle(
          _nationalIdentityCardMeta,
          nationalIdentityCard.isAcceptableOrUnknown(
              data['national_identity_card'], _nationalIdentityCardMeta));
    }
    if (data.containsKey('aware_national_identity_card')) {
      context.handle(
          _awareNationalIdentityCardMeta,
          awareNationalIdentityCard.isAcceptableOrUnknown(
              data['aware_national_identity_card'],
              _awareNationalIdentityCardMeta));
    }
    if (data.containsKey('birth_certificate')) {
      context.handle(
          _birthCertificateMeta,
          birthCertificate.isAcceptableOrUnknown(
              data['birth_certificate'], _birthCertificateMeta));
    }
    if (data.containsKey('aware_birth_certificate')) {
      context.handle(
          _awareBirthCertificateMeta,
          awareBirthCertificate.isAcceptableOrUnknown(
              data['aware_birth_certificate'], _awareBirthCertificateMeta));
    }
    if (data.containsKey('marriage_certificate')) {
      context.handle(
          _marriageCertificateMeta,
          marriageCertificate.isAcceptableOrUnknown(
              data['marriage_certificate'], _marriageCertificateMeta));
    }
    if (data.containsKey('aware_marriage_certificate')) {
      context.handle(
          _awareMarriageCertificateMeta,
          awareMarriageCertificate.isAcceptableOrUnknown(
              data['aware_marriage_certificate'],
              _awareMarriageCertificateMeta));
    }
    if (data.containsKey('voter_id_card')) {
      context.handle(
          _voterIdCardMeta,
          voterIdCard.isAcceptableOrUnknown(
              data['voter_id_card'], _voterIdCardMeta));
    }
    if (data.containsKey('aware_voter_id_card')) {
      context.handle(
          _awareVoterIdCardMeta,
          awareVoterIdCard.isAcceptableOrUnknown(
              data['aware_voter_id_card'], _awareVoterIdCardMeta));
    }
    if (data.containsKey('disable_id_card')) {
      context.handle(
          _disableIdCardMeta,
          disableIdCard.isAcceptableOrUnknown(
              data['disable_id_card'], _disableIdCardMeta));
    }
    if (data.containsKey('awaredisable_id_card')) {
      context.handle(
          _awaredisableIdCardMeta,
          awaredisableIdCard.isAcceptableOrUnknown(
              data['awaredisable_id_card'], _awaredisableIdCardMeta));
    }
    if (data.containsKey('social_security_allowance')) {
      context.handle(
          _socialSecurityAllowanceMeta,
          socialSecurityAllowance.isAcceptableOrUnknown(
              data['social_security_allowance'], _socialSecurityAllowanceMeta));
    }
    if (data.containsKey('aware_social_security_allowance')) {
      context.handle(
          _awareSocialSecurityAllowanceMeta,
          awareSocialSecurityAllowance.isAcceptableOrUnknown(
              data['aware_social_security_allowance'],
              _awareSocialSecurityAllowanceMeta));
    }
    if (data.containsKey('bank_account')) {
      context.handle(
          _bankAccountMeta,
          bankAccount.isAcceptableOrUnknown(
              data['bank_account'], _bankAccountMeta));
    }
    if (data.containsKey('aware_bank_account')) {
      context.handle(
          _awareBankAccountMeta,
          awareBankAccount.isAcceptableOrUnknown(
              data['aware_bank_account'], _awareBankAccountMeta));
    }
    if (data.containsKey('health_insurance')) {
      context.handle(
          _healthInsuranceMeta,
          healthInsurance.isAcceptableOrUnknown(
              data['health_insurance'], _healthInsuranceMeta));
    }
    if (data.containsKey('aware_health_insurance')) {
      context.handle(
          _awareHealthInsuranceMeta,
          awareHealthInsurance.isAcceptableOrUnknown(
              data['aware_health_insurance'], _awareHealthInsuranceMeta));
    }
    if (data.containsKey('land_wealth')) {
      context.handle(
          _landWealthMeta,
          landWealth.isAcceptableOrUnknown(
              data['land_wealth'], _landWealthMeta));
    }
    if (data.containsKey('family_and_society_behavior')) {
      context.handle(
          _familyAndSocietyBehaviorMeta,
          familyAndSocietyBehavior.isAcceptableOrUnknown(
              data['family_and_society_behavior'],
              _familyAndSocietyBehaviorMeta));
    }
    if (data.containsKey('friends_behavior')) {
      context.handle(
          _friendsBehaviorMeta,
          friendsBehavior.isAcceptableOrUnknown(
              data['friends_behavior'], _friendsBehaviorMeta));
    }
    if (data.containsKey('family_and_social_activity')) {
      context.handle(
          _familyAndSocialActivityMeta,
          familyAndSocialActivity.isAcceptableOrUnknown(
              data['family_and_social_activity'],
              _familyAndSocialActivityMeta));
    }
    if (data.containsKey('vote_in_election')) {
      context.handle(
          _voteInElectionMeta,
          voteInElection.isAcceptableOrUnknown(
              data['vote_in_election'], _voteInElectionMeta));
    }
    if (data.containsKey('using_medicine')) {
      context.handle(
          _usingMedicineMeta,
          usingMedicine.isAcceptableOrUnknown(
              data['using_medicine'], _usingMedicineMeta));
    }
    if (data.containsKey('provided_medicine')) {
      context.handle(
          _providedMedicineMeta,
          providedMedicine.isAcceptableOrUnknown(
              data['provided_medicine'], _providedMedicineMeta));
    }
    if (data.containsKey('provided_medicine_detail')) {
      context.handle(
          _providedMedicineDetailMeta,
          providedMedicineDetail.isAcceptableOrUnknown(
              data['provided_medicine_detail'], _providedMedicineDetailMeta));
    }
    if (data.containsKey('free_service')) {
      context.handle(
          _freeServiceMeta,
          freeService.isAcceptableOrUnknown(
              data['free_service'], _freeServiceMeta));
    }
    if (data.containsKey('used_accessories')) {
      context.handle(
          _usedAccessoriesMeta,
          usedAccessories.isAcceptableOrUnknown(
              data['used_accessories'], _usedAccessoriesMeta));
    }
    if (data.containsKey('vocational_training')) {
      context.handle(
          _vocationalTrainingMeta,
          vocationalTraining.isAcceptableOrUnknown(
              data['vocational_training'], _vocationalTrainingMeta));
    }
    if (data.containsKey('vocation_training_duration')) {
      context.handle(
          _vocationTrainingDurationMeta,
          vocationTrainingDuration.isAcceptableOrUnknown(
              data['vocation_training_duration'],
              _vocationTrainingDurationMeta));
    }
    if (data.containsKey('wish_vocational_training')) {
      context.handle(
          _wishVocationalTrainingMeta,
          wishVocationalTraining.isAcceptableOrUnknown(
              data['wish_vocational_training'], _wishVocationalTrainingMeta));
    }
    if (data.containsKey('which_vocational_training')) {
      context.handle(
          _whichVocationalTrainingMeta,
          whichVocationalTraining.isAcceptableOrUnknown(
              data['which_vocational_training'], _whichVocationalTrainingMeta));
    }
    if (data.containsKey('current_business')) {
      context.handle(
          _currentBusinessMeta,
          currentBusiness.isAcceptableOrUnknown(
              data['current_business'], _currentBusinessMeta));
    }
    if (data.containsKey('business_support')) {
      context.handle(
          _businessSupportMeta,
          businessSupport.isAcceptableOrUnknown(
              data['business_support'], _businessSupportMeta));
    }
    if (data.containsKey('business_support_detail')) {
      context.handle(
          _businessSupportDetailMeta,
          businessSupportDetail.isAcceptableOrUnknown(
              data['business_support_detail'], _businessSupportDetailMeta));
    }
    if (data.containsKey('school_fees')) {
      context.handle(
          _schoolFeesMeta,
          schoolFees.isAcceptableOrUnknown(
              data['school_fees'], _schoolFeesMeta));
    }
    if (data.containsKey('school_scholarship')) {
      context.handle(
          _schoolScholarshipMeta,
          schoolScholarship.isAcceptableOrUnknown(
              data['school_scholarship'], _schoolScholarshipMeta));
    }
    if (data.containsKey('school_transport')) {
      context.handle(
          _schoolTransportMeta,
          schoolTransport.isAcceptableOrUnknown(
              data['school_transport'], _schoolTransportMeta));
    }
    if (data.containsKey('school_accessability')) {
      context.handle(
          _schoolAccessabilityMeta,
          schoolAccessability.isAcceptableOrUnknown(
              data['school_accessability'], _schoolAccessabilityMeta));
    }
    if (data.containsKey('school_club_participation')) {
      context.handle(
          _schoolClubParticipationMeta,
          schoolClubParticipation.isAcceptableOrUnknown(
              data['school_club_participation'], _schoolClubParticipationMeta));
    }
    if (data.containsKey('school_extracurricular_activities')) {
      context.handle(
          _schoolExtracurricularActivitiesMeta,
          schoolExtracurricularActivities.isAcceptableOrUnknown(
              data['school_extracurricular_activities'],
              _schoolExtracurricularActivitiesMeta));
    }
    if (data.containsKey('disable_rights_and_law')) {
      context.handle(
          _disableRightsAndLawMeta,
          disableRightsAndLaw.isAcceptableOrUnknown(
              data['disable_rights_and_law'], _disableRightsAndLawMeta));
    }
    if (data.containsKey('nepal_government_services')) {
      context.handle(
          _nepalGovernmentServicesMeta,
          nepalGovernmentServices.isAcceptableOrUnknown(
              data['nepal_government_services'], _nepalGovernmentServicesMeta));
    }
    if (data.containsKey('complain')) {
      context.handle(_complainMeta,
          complain.isAcceptableOrUnknown(data['complain'], _complainMeta));
    }
    if (data.containsKey('part_of_disable_group')) {
      context.handle(
          _partOfDisableGroupMeta,
          partOfDisableGroup.isAcceptableOrUnknown(
              data['part_of_disable_group'], _partOfDisableGroupMeta));
    }
    if (data.containsKey('taken_training')) {
      context.handle(
          _takenTrainingMeta,
          takenTraining.isAcceptableOrUnknown(
              data['taken_training'], _takenTrainingMeta));
    }
    if (data.containsKey('member_of_group')) {
      context.handle(
          _memberOfGroupMeta,
          memberOfGroup.isAcceptableOrUnknown(
              data['member_of_group'], _memberOfGroupMeta));
    }
    if (data.containsKey('leadership_position')) {
      context.handle(
          _leadershipPositionMeta,
          leadershipPosition.isAcceptableOrUnknown(
              data['leadership_position'], _leadershipPositionMeta));
    }
    if (data.containsKey('lat')) {
      context.handle(
          _latMeta, lat.isAcceptableOrUnknown(data['lat'], _latMeta));
    }
    if (data.containsKey('lng')) {
      context.handle(
          _lngMeta, lng.isAcceptableOrUnknown(data['lng'], _lngMeta));
    }
    if (data.containsKey('surveyor_name')) {
      context.handle(
          _surveyorNameMeta,
          surveyorName.isAcceptableOrUnknown(
              data['surveyor_name'], _surveyorNameMeta));
    }
    if (data.containsKey('img')) {
      context.handle(
          _imgMeta, img.isAcceptableOrUnknown(data['img'], _imgMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Task map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Task.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TasksTable _tasks;
  $TasksTable get tasks => _tasks ??= $TasksTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tasks];
}
