import '../database.dart';

class TblorderTable extends SupabaseTable<TblorderRow> {
  @override
  String get tableName => 'tblorder';

  @override
  TblorderRow createRow(Map<String, dynamic> data) => TblorderRow(data);
}

class TblorderRow extends SupabaseDataRow {
  TblorderRow(super.data);

  @override
  SupabaseTable get table => TblorderTable();

  int get orderID => getField<int>('OrderID')!;
  set orderID(int value) => setField<int>('OrderID', value);

  int? get productID => getField<int>('ProductID');
  set productID(int? value) => setField<int>('ProductID', value);

  int? get quantity => getField<int>('Quantity');
  set quantity(int? value) => setField<int>('Quantity', value);

  int? get totalAmount => getField<int>('TotalAmount');
  set totalAmount(int? value) => setField<int>('TotalAmount', value);

  int? get invoiceNumber => getField<int>('InvoiceNumber');
  set invoiceNumber(int? value) => setField<int>('InvoiceNumber', value);

  int? get customerID => getField<int>('CustomerID');
  set customerID(int? value) => setField<int>('CustomerID', value);

  int? get transactionid => getField<int>('transactionid');
  set transactionid(int? value) => setField<int>('transactionid', value);

  String? get date => getField<String>('Date');
  set date(String? value) => setField<String>('Date', value);

  String? get productname => getField<String>('Productname');
  set productname(String? value) => setField<String>('Productname', value);
}
