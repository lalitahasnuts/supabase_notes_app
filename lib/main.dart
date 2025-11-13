import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app_router.dart';

const supabaseUrl = 'https://cyddzxqpjxesdfrhatkl.supabase.co';
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5ZGR6eHFwanhlc2RmcmhhdGtsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjMwMzA4NDEsImV4cCI6MjA3ODYwNjg0MX0.iyUwxAGjgNNF3x8M-ql1QmgPYoUuo17nO3vLITzudtM';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
  );
  
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Notes',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const AppRouter(),
    );
  }
}