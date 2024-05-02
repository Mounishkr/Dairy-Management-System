import '../database.dart';

class CustomerCartTable extends SupabaseTable<CustomerCartRow> {
  @override
  String get tableName => 'CustomerCart';

  @override
  CustomerCartRow createRow(Map<String, dynamic> data) => CustomerCartRow(data);
}

class CustomerCartRow extends SupabaseDataRow {
  CustomerCartRow(super.data);

  @override
  SupabaseTable get table => CustomerCartTable();

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  String get productName => getField<String>('ProductName')!;
  set productName(String value) => setField<String>('ProductName', value);

  int get customerid => getField<int>('Customerid')!;
  set customerid(int value) => setField<int>('Customerid', value);

  int? get sellingPrice => getField<int>('SellingPrice');
  set sellingPrice(int? value) => setField<int>('SellingPrice', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);
}
