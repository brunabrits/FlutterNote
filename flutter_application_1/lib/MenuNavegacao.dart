import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/graficos.dart';
import 'package:flutter_application_1/ajuda.dart';
import 'package:flutter_application_1/pesquisa.dart';
import 'package:flutter_application_1/comentarios.dart';


class MenuNavegacao extends StatelessWidget {
  final preenchimento = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: preenchimento,
          children: [
            const SizedBox(
              height: 20,
            ),
            cabecalho(
               imagem:"",
            ),
            const SizedBox(
              height: 16,
            ),
            menuItem(
              texto: "Principal",
              icone: Icons.home,
              clique: () => itemSelecao(context, 0),
            ),
            const SizedBox(
              height: 16,
            ),
            menuItem(
              texto: "Pesquisa",
              icone: Icons.search,
              clique: () => itemSelecao(context, 1),
            ),
            const SizedBox(
              height: 16,
            ),
            menuItem(
              texto: "Gráficos",
              icone: Icons.stacked_bar_chart,
              clique: () => itemSelecao(context, 2),
            ),
            Center(
              child: const SizedBox(
                height: 24,
              ),
            ),
            menuItem(
              texto: "Comentários",
              icone: Icons.comment,
              clique: () => itemSelecao(context, 3),
            ),
            Divider(
              color: Colors.black,
            ),
            const SizedBox(
              height: 24,
            ),
            menuItem(
              texto: "Ajuda",
              icone: Icons.help,
              clique: () => itemSelecao(context, 4),
            ),
          ],
        ),
      ),
    );
  }

  menuItem({
    required String texto,
    required IconData icone,
    VoidCallback? clique,
  }) {
    return ListTile(
      leading: Icon(icone, color: Colors.black),
      title: Text(texto, style: TextStyle(color: Colors.black)),
      hoverColor: Colors.purple[200],
      onTap: clique,
    );
  }

  cabecalho({required String imagem}) => Center(
        child: InkWell(
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage:NetworkImage(imagem),
              ),
              SizedBox(
                width: 20,
              ),
              Column(),
            ],
          ),
        ),
      );

  itemSelecao(BuildContext context, int i) {
    Navigator.of(context).pop();

    switch (i) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MinhaPagina(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Pesquisa()),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Graficos(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Comentarios(),
          ),
        );
        break;
      case 4:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Ajuda(),
          ),
        );
        break;
      default:
    }
  }
}
