import '../database.dart';

class TblemployeeTable extends SupabaseTable<TblemployeeRow> {
  @override
  String get tableName => 'tblemployee';

  @override
  TblemployeeRow createRow(Map<String, dynamic> data) => TblemployeeRow(data);
}

class TblemployeeRow extends SupabaseDataRow {
  TblemployeeRow(super.data);

  @override
  SupabaseTable get table => TblemployeeTable();

  int get employeeID => getField<int>('employeeID')!;
  set employeeID(int value) => setField<int>('employeeID', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  double? get phoneNumber => getField<double>('PhoneNumber');
  set phoneNumber(double? value) => setField<double>('PhoneNumber', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get position => getField<String>('position');
  set position(String? value) => setField<String>('position', value);

  int? get salary => getField<int>('salary');
  set salary(int? value) => setField<int>('salary', value);
}
