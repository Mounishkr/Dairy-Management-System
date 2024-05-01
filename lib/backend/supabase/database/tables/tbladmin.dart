import '../database.dart';

class TbladminTable extends SupabaseTable<TbladminRow> {
  @override
  String get tableName => 'tbladmin';

  @override
  TbladminRow createRow(Map<String, dynamic> data) => TbladminRow(data);
}

class TbladminRow extends SupabaseDataRow {
  TbladminRow(super.data);

  @override
  SupabaseTable get table => TbladminTable();

  int get adminID => getField<int>('AdminID')!;
  set adminID(int value) => setField<int>('AdminID', value);

  String? get userName => getField<String>('UserName');
  set userName(String? value) => setField<String>('UserName', value);

  String? get password => getField<String>('Password');
  set password(String? value) => setField<String>('Password', value);

  String? get email => getField<String>('Email');
  set email(String? value) => setField<String>('Email', value);

  int? get phoneNumber => getField<int>('PhoneNumber');
  set phoneNumber(int? value) => setField<int>('PhoneNumber', value);

  String? get address => getField<String>('Address');
  set address(String? value) => setField<String>('Address', value);
}
