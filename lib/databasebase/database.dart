// These imports are only needed to open the database
import 'package:moor/ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:moor/moor.dart';
import 'dart:io';

part 'database.g.dart';

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get district => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get muncipality => text().withLength(min: 1, max: 50).nullable()();
  IntColumn get name => integer().nullable()();
  TextColumn get surveyDate => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get personName => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get birthDate => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get gender => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get currentAddress => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get parmanentAddress => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get careTaker => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get formSpeaker => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get formSpeakerRelation => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get phoneNumber => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get disableType => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get disableReason => text().withLength(min: 1, max: 50).nullable()();
  IntColumn get disableStartAge => integer().nullable()();
  // DateTimeColumn get dueDate => dateTime().nullable()();
  BoolColumn get hasdisableIdentityCard => boolean().withDefault(Constant(false))();
  TextColumn get disableIdentityCardType => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get maritalStatus => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get educationStatus => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get schoolType => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get occupationStatus => text().withLength(min: 1, max: 50).nullable()();
  IntColumn get disableIncome => integer().nullable()();
  IntColumn get disableFamilyIncome => integer().nullable()();
  BoolColumn get nationalIdentityCard => boolean().withDefault(Constant(false))();
  BoolColumn get awareNationalIdentityCard => boolean().withDefault(Constant(false))();
  BoolColumn get birthCertificate => boolean().withDefault(Constant(false))();
  BoolColumn get awareBirthCertificate => boolean().withDefault(Constant(false))();
  BoolColumn get marriageCertificate => boolean().withDefault(Constant(false))();
  BoolColumn get awareMarriageCertificate => boolean().withDefault(Constant(false))();
  BoolColumn get voterIdCard => boolean().withDefault(Constant(false))();
  BoolColumn get awareVoterIdCard => boolean().withDefault(Constant(false))();
  BoolColumn get disableIdCard => boolean().withDefault(Constant(false))();
  BoolColumn get awaredisableIdCard => boolean().withDefault(Constant(false))();
  BoolColumn get socialSecurityAllowance => boolean().withDefault(Constant(false))();
  BoolColumn get awareSocialSecurityAllowance => boolean().withDefault(Constant(false))();
  BoolColumn get bankAccount => boolean().withDefault(Constant(false))();
  BoolColumn get awareBankAccount => boolean().withDefault(Constant(false))();
  BoolColumn get healthInsurance => boolean().withDefault(Constant(false))();
  BoolColumn get awareHealthInsurance => boolean().withDefault(Constant(false))();
  BoolColumn get landWealth => boolean().withDefault(Constant(false))();
  TextColumn get familyAndSocietyBehavior => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get friendsBehavior => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get familyAndSocialActivity => text().withLength(min: 1, max: 50).nullable()();
  BoolColumn get voteInElection => boolean().withDefault(Constant(false))();
  BoolColumn get usingMedicine => boolean().withDefault(Constant(false))();
  BoolColumn get providedMedicine => boolean().withDefault(Constant(false))();
  BoolColumn get providedMedicineDetail => boolean().withDefault(Constant(false))();
  BoolColumn get freeService => boolean().withDefault(Constant(false))();
  BoolColumn get usedAccessories => boolean().withDefault(Constant(false))();
  BoolColumn get vocationalTraining => boolean().withDefault(Constant(false))();
  TextColumn get vocationTrainingDuration => text().withLength(min: 1, max: 50).nullable()();
  BoolColumn get wishVocationalTraining => boolean().withDefault(Constant(false))();
  TextColumn get whichVocationalTraining => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get currentBusiness => text().withLength(min: 1, max: 50).nullable()();
  BoolColumn get businessSupport => boolean().withDefault(Constant(false))();
  TextColumn get businessSupportDetail => text().withLength(min: 1, max: 50).nullable()();
  BoolColumn get schoolFees => boolean().withDefault(Constant(false))();
  BoolColumn get schoolScholarship => boolean().withDefault(Constant(false))();
  BoolColumn get schoolTransport => boolean().withDefault(Constant(false))();
  BoolColumn get schoolAccessability => boolean().withDefault(Constant(false))();
  BoolColumn get schoolClubParticipation => boolean().withDefault(Constant(false))();
  BoolColumn get schoolExtracurricularActivities => boolean().withDefault(Constant(false))();
  BoolColumn get disableRightsAndLaw => boolean().withDefault(Constant(false))();
  BoolColumn get nepalGovernmentServices => boolean().withDefault(Constant(false))();
  BoolColumn get complain => boolean().withDefault(Constant(false))();
  BoolColumn get partOfDisableGroup => boolean().withDefault(Constant(false))();
  BoolColumn get takenTraining => boolean().withDefault(Constant(false))();
  BoolColumn get memberOfGroup => boolean().withDefault(Constant(false))();
  BoolColumn get leadershipPosition => boolean().withDefault(Constant(false))();
  TextColumn get lat => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get lng => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get surveyorName => text().withLength(min: 1, max: 50).nullable()();
  TextColumn get img => text().withLength().nullable()();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Tasks])
class MyDatabase extends _$MyDatabase {
  // we tell the database where to store the data with this constructor
  MyDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;

    // All tables have getters in the generated class - we can select the tasks table
  Future<List<Task>> getAllTasks() => select(tasks).get();

  // Moor supports Streams which emit elements when the watched data changes
  Stream<List<Task>> watchAllTasks() => select(tasks).watch();

  Future insertTask(Task task) => into(tasks).insert(task);

  // Updates a Task with a matching primary key
  Future updateTask(Task task) => update(tasks).replace(task);

  Future deleteTask(Task task) => delete(tasks).delete(task);
}