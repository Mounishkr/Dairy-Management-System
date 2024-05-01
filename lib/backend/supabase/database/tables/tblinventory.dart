import '../database.dart';

class TblinventoryTable extends SupabaseTable<TblinventoryRow> {
  @override
  String get tableName => 'tblinventory';

  @override
  TblinventoryRow createRow(Map<String, dynamic> data) => TblinventoryRow(data);
}

class TblinventoryRow extends SupabaseDataRow {
  TblinventoryRow(super.data);

  @override
  SupabaseTable get table => TblinventoryTable();

  int get productid => getField<int>('productid')!;
  set productid(int value) => setField<int>('productid', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get productName => getField<String>('ProductName');
  set productName(String? value) => setField<String>('ProductName', value);

  String? get brandName => getField<String>('BrandName');
  set brandName(String? value) => setField<String>('BrandName', value);
}
