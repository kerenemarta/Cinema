import 'package:flutter/material.dart';
import 'package:tentativa/Paginaum.dart';

final List<String> lancamentos = [
  'assets/Primeiro.png',
  'assets/Segundo.png',
  'assets/Terceiro.png',
  'assets/Quarto.png'
];

class PaginaInicialFilmes extends StatelessWidget {
  const PaginaInicialFilmes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Image.asset(
            'assets/fundo/back.png',
            fit: BoxFit.cover,
          ),
        ),

        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/Primeiro.png'),
                      radius: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text("Olá",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    const SizedBox(width: 4),
                    const Text("Ken",
                        style:
                        TextStyle(color: Colors.white70, fontSize: 16)),
                    const SizedBox(width: 190),
                    const Icon(Icons.notifications_none_outlined,
                        color: Colors.white),
                  ]),
                ],
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),

        SafeArea(
          child: Padding(
            padding:
            const EdgeInsets.only(top: 92.0, left: 21.0, right: 19.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Search",
                    style: TextStyle(color: Colors.white70, fontSize: 15)),
                SizedBox(width: 4),
              ],
            ),
          ),
        ),

        SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 119.0, left: 20.0, right: 19.0),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Procurar filmes...",
                    hintStyle: const TextStyle(color: Colors.white54),
                    prefixIcon: const Icon(Icons.search, color: Colors.white),
                    suffixIcon: const Icon(Icons.filter_list_sharp,
                        color: Colors.white),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    filled: true,
                    fillColor: Colors.white12,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Colors.blueAccent),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        SafeArea(
          child: Padding(
            padding:
            const EdgeInsets.only(top: 470.0, left: 10.0, right: 19.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Recomendado",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text("Ver mais >",
                          style: TextStyle(
                              color: Colors.blueAccent, fontSize: 15)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 130,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(lancamentos[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),

        SafeArea(
          child: Padding(
            padding:
            const EdgeInsets.only(top: 190.0, left: 10.0, right: 19.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Lançamentos",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text("Ver mais >",
                          style: TextStyle(
                              color: Colors.blueAccent, fontSize: 15)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 130,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(lancamentos[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ]),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Bilhetes"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: "Carteira"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        ],
      ),
    );
  }
}

class DestaquesCarrossel extends StatefulWidget {
  final List<String> imagens;

  const DestaquesCarrossel({super.key, required this.imagens});

  @override
  State<DestaquesCarrossel> createState() => _DestaqueCarrossel();
}

class _DestaqueCarrossel extends State<DestaquesCarrossel> {
  late PageController _controladorPagina;

  @override
  void initState() {
    super.initState();
    _controladorPagina = PageController(viewportFraction: 0.7);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        controller: _controladorPagina,
        itemCount: widget.imagens.length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _controladorPagina,
            builder: (context, child) {
              double value = 1.0;
              if (_controladorPagina.position.haveDimensions) {
                value = (_controladorPagina.page! - index).abs();
                value = (1 - value).clamp(0.0, 1.0);
              }
              final escala = 0.9 + (value * 0.1);
              return Center(
                child: Transform.scale(
                  scale: escala,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      widget.imagens[index],
                      height: 200,
                      width: double.infinity,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
