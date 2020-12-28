// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Disability _$DisabilityFromJson(Map<String, dynamic> json) {
  return Disability()
    ..district = json['district'] as String
    ..muncipality = json['muncipality'] as String
    ..wardNo = json['wardNo'] as num
    ..surveyDate = json['surveyDate'] as String
    ..personName = json['personName'] as String
    ..birthDate = json['birthDate'] as String
    ..gender = json['gender'] as String
    ..currentAddress = json['currentAddress'] as String
    ..parmanentAddress = json['parmanentAddress'] as String
    ..careTaker = json['careTaker'] as String
    ..formSpeaker = json['formSpeaker'] as String
    ..formSpeakerRelation = json['formSpeakerRelation'] as String
    ..phoneNumber = json['phoneNumber'] as String
    ..disableType = json['disableType'] as String
    ..disableReason = json['disableReason'] as String
    ..disableStartAge = json['disableStartAge'] as num
    ..hasdisableIdentityCard = json['hasdisableIdentityCard'] as bool
    ..disableIdentityCardType = json['disableIdentityCardType'] as String
    ..maritalStatus = json['maritalStatus'] as String
    ..educationStatus = json['educationStatus'] as String
    ..schoolType = json['schoolType'] as String
    ..occupationStatus = json['occupationStatus'] as String
    ..disableIncome = json['disableIncome'] as num
    ..disableFamilyIncome = json['disableFamilyIncome'] as num
    ..nationalIdentityCard = json['nationalIdentityCard'] as bool
    ..awareNationalIdentityCard = json['awareNationalIdentityCard'] as bool
    ..birthCertificate = json['birthCertificate'] as bool
    ..awareBirthCertificate = json['awareBirthCertificate'] as bool
    ..marriageCertificate = json['marriageCertificate'] as bool
    ..awareMarriageCertificate = json['awareMarriageCertificate'] as bool
    ..voterIdCard = json['voterIdCard'] as bool
    ..awareVoterIdCard = json['awareVoterIdCard'] as bool
    ..disableIdCard = json['disableIdCard'] as bool
    ..awaredisableIdCard = json['awaredisableIdCard'] as bool
    ..socialSecurityAllowance = json['socialSecurityAllowance'] as bool
    ..awareSocialSecurityAllowance =
        json['awareSocialSecurityAllowance'] as bool
    ..bankAccount = json['bankAccount'] as bool
    ..awareBankAccount = json['awareBankAccount'] as bool
    ..healthInsurance = json['healthInsurance'] as bool
    ..awareHealthInsurance = json['awareHealthInsurance'] as bool
    ..landWealth = json['landWealth'] as bool
    ..familyAndSocietyBehavior = json['familyAndSocietyBehavior'] as String
    ..friendsBehavior = json['friendsBehavior'] as String
    ..familyAndSocialActivity = json['familyAndSocialActivity'] as String
    ..voteInElection = json['voteInElection'] as bool
    ..usingMedicine = json['usingMedicine'] as bool
    ..providedMedicine = json['providedMedicine'] as bool
    ..providedMedicineDetail = json['providedMedicineDetail'] as bool
    ..freeService = json['freeService'] as bool
    ..usedAccessories = json['usedAccessories'] as bool
    ..vocationalTraining = json['vocationalTraining'] as bool
    ..vocationTrainingDuration = json['vocationTrainingDuration'] as String
    ..wishVocationalTraining = json['wishVocationalTraining'] as bool
    ..whichVocationalTraining = json['whichVocationalTraining'] as String
    ..currentBusiness = json['currentBusiness'] as String
    ..businessSupport = json['businessSupport'] as bool
    ..businessSupportDetail = json['businessSupportDetail'] as String
    ..schoolFees = json['schoolFees'] as bool
    ..schoolScholarship = json['schoolScholarship'] as bool
    ..schoolTransport = json['schoolTransport'] as bool
    ..schoolAccessability = json['schoolAccessability'] as bool
    ..schoolClubParticipation = json['schoolClubParticipation'] as bool
    ..schoolExtracurricularActivities =
        json['schoolExtracurricularActivities'] as bool
    ..disableRightsAndLaw = json['disableRightsAndLaw'] as bool
    ..nepalGovernmentServices = json['nepalGovernmentServices'] as bool
    ..complain = json['complain'] as bool
    ..partOfDisableGroup = json['partOfDisableGroup'] as bool
    ..takenTraining = json['takenTraining'] as bool
    ..memberOfGroup = json['memberOfGroup'] as bool
    ..leadershipPosition = json['leadershipPosition'] as bool
    ..lat = json['lat'] as String
    ..lng = json['lng'] as String
    ..surveyorName = json['surveyorName'] as String;
}

Map<String, dynamic> _$DisabilityToJson(Disability instance) =>
    <String, dynamic>{
      'district': instance.district,
      'muncipality': instance.muncipality,
      'wardNo': instance.wardNo,
      'surveyDate': instance.surveyDate,
      'personName': instance.personName,
      'birthDate': instance.birthDate,
      'gender': instance.gender,
      'currentAddress': instance.currentAddress,
      'parmanentAddress': instance.parmanentAddress,
      'careTaker': instance.careTaker,
      'formSpeaker': instance.formSpeaker,
      'formSpeakerRelation': instance.formSpeakerRelation,
      'phoneNumber': instance.phoneNumber,
      'disableType': instance.disableType,
      'disableReason': instance.disableReason,
      'disableStartAge': instance.disableStartAge,
      'hasdisableIdentityCard': instance.hasdisableIdentityCard,
      'disableIdentityCardType': instance.disableIdentityCardType,
      'maritalStatus': instance.maritalStatus,
      'educationStatus': instance.educationStatus,
      'schoolType': instance.schoolType,
      'occupationStatus': instance.occupationStatus,
      'disableIncome': instance.disableIncome,
      'disableFamilyIncome': instance.disableFamilyIncome,
      'nationalIdentityCard': instance.nationalIdentityCard,
      'awareNationalIdentityCard': instance.awareNationalIdentityCard,
      'birthCertificate': instance.birthCertificate,
      'awareBirthCertificate': instance.awareBirthCertificate,
      'marriageCertificate': instance.marriageCertificate,
      'awareMarriageCertificate': instance.awareMarriageCertificate,
      'voterIdCard': instance.voterIdCard,
      'awareVoterIdCard': instance.awareVoterIdCard,
      'disableIdCard': instance.disableIdCard,
      'awaredisableIdCard': instance.awaredisableIdCard,
      'socialSecurityAllowance': instance.socialSecurityAllowance,
      'awareSocialSecurityAllowance': instance.awareSocialSecurityAllowance,
      'bankAccount': instance.bankAccount,
      'awareBankAccount': instance.awareBankAccount,
      'healthInsurance': instance.healthInsurance,
      'awareHealthInsurance': instance.awareHealthInsurance,
      'landWealth': instance.landWealth,
      'familyAndSocietyBehavior': instance.familyAndSocietyBehavior,
      'friendsBehavior': instance.friendsBehavior,
      'familyAndSocialActivity': instance.familyAndSocialActivity,
      'voteInElection': instance.voteInElection,
      'usingMedicine': instance.usingMedicine,
      'providedMedicine': instance.providedMedicine,
      'providedMedicineDetail': instance.providedMedicineDetail,
      'freeService': instance.freeService,
      'usedAccessories': instance.usedAccessories,
      'vocationalTraining': instance.vocationalTraining,
      'vocationTrainingDuration': instance.vocationTrainingDuration,
      'wishVocationalTraining': instance.wishVocationalTraining,
      'whichVocationalTraining': instance.whichVocationalTraining,
      'currentBusiness': instance.currentBusiness,
      'businessSupport': instance.businessSupport,
      'businessSupportDetail': instance.businessSupportDetail,
      'schoolFees': instance.schoolFees,
      'schoolScholarship': instance.schoolScholarship,
      'schoolTransport': instance.schoolTransport,
      'schoolAccessability': instance.schoolAccessability,
      'schoolClubParticipation': instance.schoolClubParticipation,
      'schoolExtracurricularActivities':
          instance.schoolExtracurricularActivities,
      'disableRightsAndLaw': instance.disableRightsAndLaw,
      'nepalGovernmentServices': instance.nepalGovernmentServices,
      'complain': instance.complain,
      'partOfDisableGroup': instance.partOfDisableGroup,
      'takenTraining': instance.takenTraining,
      'memberOfGroup': instance.memberOfGroup,
      'leadershipPosition': instance.leadershipPosition,
      'lat': instance.lat,
      'lng': instance.lng,
      'surveyorName': instance.surveyorName,
    };
