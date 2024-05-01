import '../database.dart';

class TblproductsTable extends SupabaseTable<TblproductsRow> {
  @override
  String get tableName => 'tblproducts';

  @override
  TblproductsRow createRow(Map<String, dynamic> data) => TblproductsRow(data);
}

class TblproductsRow extends SupabaseDataRow {
  TblproductsRow(super.data);

  @override
  SupabaseTable get table => TblproductsTable();

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  String? get categoryCode => getField<String>('CategoryCode');
  set categoryCode(String? value) => setField<String>('CategoryCode', value);

  String? get productName => getField<String>('ProductName');
  set productName(String? value) => setField<String>('ProductName', value);

  int? get sellingPrice => getField<int>('SellingPrice');
  set sellingPrice(int? value) => setField<int>('SellingPrice', value);

  String? get mFGDate => getField<String>('MFGDate');
  set mFGDate(String? value) => setField<String>('MFGDate', value);

  String? get eXPDate => getField<String>('EXPDate');
  set eXPDate(String? value) => setField<String>('EXPDate', value);
}
