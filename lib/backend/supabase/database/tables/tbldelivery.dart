import '../database.dart';

class TbldeliveryTable extends SupabaseTable<TbldeliveryRow> {
  @override
  String get tableName => 'tbldelivery';

  @override
  TbldeliveryRow createRow(Map<String, dynamic> data) => TbldeliveryRow(data);
}

class TbldeliveryRow extends SupabaseDataRow {
  TbldeliveryRow(super.data);

  @override
  SupabaseTable get table => TbldeliveryTable();

  int get deliveryID => getField<int>('deliveryID')!;
  set deliveryID(int value) => setField<int>('deliveryID', value);

  int? get phoneNumber => getField<int>('PhoneNumber');
  set phoneNumber(int? value) => setField<int>('PhoneNumber', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);

  int? get productID => getField<int>('ProductID');
  set productID(int? value) => setField<int>('ProductID', value);

  int? get productQuantity => getField<int>('ProductQuantity');
  set productQuantity(int? value) => setField<int>('ProductQuantity', value);
}
