import '../database.dart';

class TblpaymentsTable extends SupabaseTable<TblpaymentsRow> {
  @override
  String get tableName => 'tblpayments';

  @override
  TblpaymentsRow createRow(Map<String, dynamic> data) => TblpaymentsRow(data);
}

class TblpaymentsRow extends SupabaseDataRow {
  TblpaymentsRow(super.data);

  @override
  SupabaseTable get table => TblpaymentsTable();

  int get transactionid => getField<int>('transactionid')!;
  set transactionid(int value) => setField<int>('transactionid', value);

  int? get customerID => getField<int>('CustomerID');
  set customerID(int? value) => setField<int>('CustomerID', value);

  String? get mode => getField<String>('mode');
  set mode(String? value) => setField<String>('mode', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);
}
