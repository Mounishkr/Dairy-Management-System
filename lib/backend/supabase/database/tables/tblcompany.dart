import '../database.dart';

class TblcompanyTable extends SupabaseTable<TblcompanyRow> {
  @override
  String get tableName => 'tblcompany';

  @override
  TblcompanyRow createRow(Map<String, dynamic> data) => TblcompanyRow(data);
}

class TblcompanyRow extends SupabaseDataRow {
  TblcompanyRow(super.data);

  @override
  SupabaseTable get table => TblcompanyTable();

  int get companyID => getField<int>('CompanyID')!;
  set companyID(int value) => setField<int>('CompanyID', value);

  String? get companyName => getField<String>('CompanyName');
  set companyName(String? value) => setField<String>('CompanyName', value);

  String? get address => getField<String>('Address');
  set address(String? value) => setField<String>('Address', value);

  int? get phoneNumber => getField<int>('PhoneNumber');
  set phoneNumber(int? value) => setField<int>('PhoneNumber', value);

  String? get branch => getField<String>('Branch');
  set branch(String? value) => setField<String>('Branch', value);
}
