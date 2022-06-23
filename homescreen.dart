import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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
                print('home');
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
              leading: Icon(Icons.map),
              title: Text('Mapa'),
              subtitle: Text('Veja lugares que são perigosos'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/mapa');
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
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Olá Diego', style: TextStyle(fontSize: 20.0)),
          ),
          Text('Cadastrado desde 17/06/2022'),
          Text('Locais evitados: 8'),
          Text('Ultima vez utilizado: 18/06/2022'),
          Text('Seguidores: 80    seguindo: 20'),
          Container(
            height: 20,
          ),
          Text(
            'Taxa de perigos evitados:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            height: 10,
          ),
          Text('JAN:'),
          Container(
            height: 10,
          ),
          Text('FEB:'),
          Container(
            height: 10,
          ),
          Text('MAR:'),
          Container(
            height: 10,
          ),
          Text(
              '   |botão aqui|               Receber alerta de risco baseado em sua localização'),
          Container(
            height: 10,
          ),
          Text('Compartilhe como o Dexperta pode ter lhe ajudado hoje!!!',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Container(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Digite aqui',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60))),
            ),
          ),
        ],
      ),
    );
  }
}
