import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({Key? key}) : super(key: key);

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset('assets/images/fotoLogin.jpg')),
                accountName: Text('Diego Carvalho'),
                accountEmail: Text('diego.14@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text('Tela de Início'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Mapa'),
              subtitle: Text('Veja lugares que são perigosos'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/mapa');
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Forum'),
              subtitle: Text('Deixe seu comentário e nos ajude'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/forum');
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Sair'),
              subtitle: Text('Tela de login'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Forum'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Text('MF'),
            ),
            title: Text('Márcia Ferreira'),
            subtitle: Text('Fui assaltada aqui na ponte do rio madeira'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.greenAccent,
              child: Text('KC'),
            ),
            title: Text('Karina Carvalho'),
            subtitle: Text('O App  evitou que fosse assaltada no Skate Park'),
          ),
        ],
      ),
    );
  }
}
