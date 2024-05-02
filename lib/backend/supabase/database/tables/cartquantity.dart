import '../database.dart';

class CartquantityTable extends SupabaseTable<CartquantityRow> {
  @override
  String get tableName => 'Cartquantity';

  @override
  CartquantityRow createRow(Map<String, dynamic> data) => CartquantityRow(data);
}

class CartquantityRow extends SupabaseDataRow {
  CartquantityRow(super.data);

  @override
  SupabaseTable get table => CartquantityTable();

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  String get productName => getField<String>('ProductName')!;
  set productName(String value) => setField<String>('ProductName', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  int get customerid => getField<int>('Customerid')!;
  set customerid(int value) => setField<int>('Customerid', value);

  int? get sellingPrice => getField<int>('SellingPrice');
  set sellingPrice(int? value) => setField<int>('SellingPrice', value);
}
