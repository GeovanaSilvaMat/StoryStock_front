import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/second_page.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar uma Nova Conta'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            // Adicione um widget para selecionar uma foto de perfil aqui.
            Text('Nome'),
            TextFormField(
              decoration: InputDecoration(
              ),
            ),
            SizedBox(height: 10),
            Text('Email'),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            Text('Data de Nascimento'),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
              ),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 10),
            Text('Definir uma Senha'),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            Text('Confirmar Senha'),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para processar o registro do usuário
                // Após o processamento, você pode navegar para a segunda etapa.
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: Text('Próximo'),
            ),
          ],
        ),
      ),
    );
  }
}

class second_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Etapa do Registro'),
      ),
      body: Center(
        child: Text('Página da Segunda Etapa do Registro'),
      ),
    );
  }
}
