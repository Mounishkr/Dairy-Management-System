import '../database.dart';

class TblcustomerTable extends SupabaseTable<TblcustomerRow> {
  @override
  String get tableName => 'tblcustomer';

  @override
  TblcustomerRow createRow(Map<String, dynamic> data) => TblcustomerRow(data);
}

class TblcustomerRow extends SupabaseDataRow {
  TblcustomerRow(super.data);

  @override
  SupabaseTable get table => TblcustomerTable();

  int get customerID => getField<int>('CustomerID')!;
  set customerID(int value) => setField<int>('CustomerID', value);

  String get customerName => getField<String>('CustomerName')!;
  set customerName(String value) => setField<String>('CustomerName', value);

  int? get phoneNumber => getField<int>('PhoneNumber');
  set phoneNumber(int? value) => setField<int>('PhoneNumber', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get customerType => getField<String>('CustomerType');
  set customerType(String? value) => setField<String>('CustomerType', value);

  String? get customerEmail => getField<String>('CustomerEmail');
  set customerEmail(String? value) => setField<String>('CustomerEmail', value);
}
