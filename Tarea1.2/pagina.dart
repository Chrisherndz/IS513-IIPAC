import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuenta de Google',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Cuenta de Google',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 2,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSection(
                  title: 'Tu cuenta está protegida',
                  description: 'La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
                  opcion: 'Ver detalles',
                  icon: Icons.check_circle,
                  color: Colors.green,
                ),
                SizedBox(height: 5),
                Divider(),
                _buildSection(
                  title: 'Verificación de privacidad',
                  description: 'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.',
                  opcion: 'Realizar la Verificación de privacidad',
                  icon: Icons.privacy_tip,
                  color: Colors.blue,
                ),
                SizedBox(height: 5),
                _buildInfoSection(),
                SizedBox(height: 10),
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos. Más información',
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.privacy_tip, color: Colors.blue),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required String description,
    required String opcion,
    required IconData icon,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 8),
                Text(description),
                SizedBox(height: 2),
                TextButton(
                  onPressed: () {},
                  child: Text(opcion,style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          Icon(icon, color: color, size: 80),
        ],
      ),
    );
  }

  Widget _buildInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('¿Buscas otra información?',style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        _buildInfoRow(Icons.search, 'Buscar en la Cuenta de Google'),
        SizedBox(height: 8),
        _buildInfoRow(Icons.help_outline, 'Ver las opciones de ayuda'),
        SizedBox(height: 8),
        _buildInfoRow(Icons.feedback, 'Enviar comentarios'),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}