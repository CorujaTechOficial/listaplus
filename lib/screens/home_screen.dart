import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../app/lists/list_screen_body.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key, required this.listId});

  final String listId;

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) => ListScreenBody(listId: widget.listId);
}
