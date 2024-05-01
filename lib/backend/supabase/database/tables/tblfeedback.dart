import '../database.dart';

class TblfeedbackTable extends SupabaseTable<TblfeedbackRow> {
  @override
  String get tableName => 'tblfeedback';

  @override
  TblfeedbackRow createRow(Map<String, dynamic> data) => TblfeedbackRow(data);
}

class TblfeedbackRow extends SupabaseDataRow {
  TblfeedbackRow(super.data);

  @override
  SupabaseTable get table => TblfeedbackTable();

  int get feedbackID => getField<int>('feedbackID')!;
  set feedbackID(int value) => setField<int>('feedbackID', value);

  int? get customerID => getField<int>('CustomerID');
  set customerID(int? value) => setField<int>('CustomerID', value);

  int? get rating => getField<int>('rating');
  set rating(int? value) => setField<int>('rating', value);

  int? get phoneNumber => getField<int>('PhoneNumber');
  set phoneNumber(int? value) => setField<int>('PhoneNumber', value);
}
