import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://oyaqprfqercqvpqmkyem.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im95YXFwcmZxZXJjcXZwcW1reWVtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQ0OTIzNzksImV4cCI6MjAzMDA2ODM3OX0.gSR0BNZ6H_XxgHKIrLB9j-mCt-xwp5f45lI5UN92zsw';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
