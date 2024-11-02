// GENERATED CODE EDIT WITH CAUTION
// THIS FILE **WILL NOT** BE REGENERATED
// This file should be version controlled and can be manually edited.
part of 'schema.g.dart';

// While migrations are intelligently created, the difference between some commands, such as
// DropTable vs. RenameTable, cannot be determined. For this reason, please review migrations after
// they are created to ensure the correct inference was made.

// The migration version must **always** mirror the file name

const List<MigrationCommand> _migration_20241102002642_up = [
  InsertColumn('user', Column.varchar, onTable: 'StoreModel'),
  InsertColumn('user', Column.varchar, onTable: 'RentModel'),
  InsertColumn('user', Column.varchar, onTable: 'ItemModel'),
  InsertColumn('user', Column.varchar, onTable: 'SalaryModel'),
  InsertColumn('user', Column.varchar, onTable: 'RentItemModel'),
  InsertColumn('belong', Column.varchar, onTable: 'PresenceModel'),
  InsertColumn('user', Column.varchar, onTable: 'PenjualanModel')
];

const List<MigrationCommand> _migration_20241102002642_down = [
  DropColumn('user', onTable: 'StoreModel'),
  DropColumn('user', onTable: 'RentModel'),
  DropColumn('user', onTable: 'ItemModel'),
  DropColumn('user', onTable: 'SalaryModel'),
  DropColumn('user', onTable: 'RentItemModel'),
  DropColumn('belong', onTable: 'PresenceModel'),
  DropColumn('user', onTable: 'PenjualanModel')
];

//
// DO NOT EDIT BELOW THIS LINE
//

@Migratable(
  version: '20241102002642',
  up: _migration_20241102002642_up,
  down: _migration_20241102002642_down,
)
class Migration20241102002642 extends Migration {
  const Migration20241102002642()
    : super(
        version: 20241102002642,
        up: _migration_20241102002642_up,
        down: _migration_20241102002642_down,
      );
}
