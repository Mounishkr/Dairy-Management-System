import '../database.dart';

class TblcategoryTable extends SupabaseTable<TblcategoryRow> {
  @override
  String get tableName => 'tblcategory';

  @override
  TblcategoryRow createRow(Map<String, dynamic> data) => TblcategoryRow(data);
}

class TblcategoryRow extends SupabaseDataRow {
  TblcategoryRow(super.data);

  @override
  SupabaseTable get table => TblcategoryTable();

  String get categoryCode => getField<String>('CategoryCode')!;
  set categoryCode(String value) => setField<String>('CategoryCode', value);

  String? get categoryName => getField<String>('CategoryName');
  set categoryName(String? value) => setField<String>('CategoryName', value);
}
