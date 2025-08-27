import 'package:flutter/material.dart';
import 'package:recipes_app/models/recetas.dart';
import 'package:recipes_app/services/api_service.dart';
import 'package:recipes_app/widgets/receta_card.dart';

class RecetasScreen extends StatefulWidget {
  const RecetasScreen({super.key});

  @override
  State<RecetasScreen> createState() => _RecetasScreenState();
}

class _RecetasScreenState extends State<RecetasScreen> {
  List<Receta> _recetas = [];
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final recetas = await RecipeService().getRecipes();
      setState(() {
        _recetas = recetas;
      });
    } catch (e) {
      setState(() {
        _error = 'Error al cargar recetas';
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error al cargar recetas')));
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Scaffold(
        appBar: AppBar(title: Text('Recetas')),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (_error != null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Recetas')),
        body: Center(child: Text(_error!)),
      );
    }

    if (_recetas.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text('Recetas')),
        body: Center(child: Text('No hay recetas disponibles')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Recetas')),
      body: RefreshIndicator(
        onRefresh: _load,
        child: ListView.builder(
          itemCount: _recetas.length,
          itemBuilder: (context, index) {
            final receta = _recetas[index];
            return RecetaCard(receta: receta);
          },
        ),
      ),
    );
  }
}
