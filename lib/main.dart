import 'package:flutter/material.dart';
import 'main.dart';
import 'Paginaum.dart';
import 'video_splash.dart';

void main() {
  runApp(Aplicativo());
}

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoInicial(),
    );
  }
}

class TelaApresentacao extends StatefulWidget {
  @override
  State<TelaApresentacao> createState() => _TelaApresentacaoEstado();
}

class _TelaApresentacaoEstado extends State<TelaApresentacao> {
  final PageController _controlador = PageController();
  int paginaAtual = 0;

  final List<Map<String, String>> paginas = [
    {
      "imagem": "assets/Primeiro.png",
      "titulo": "Garante os primeiros Lugares !",
      "subtitulo":
      "Texto de exemplo para representar uma descrição curta sobre a funcionalidade."
    },
    {
      "imagem": "assets/Segundo.png",
      "titulo": "Pipocas e Bebidas garantidas",
      "subtitulo": "Texto de exemplo para representar uma descrição curta sobre a funcionalidade."
    },
    {
      "imagem": "assets/Terceiro.png",
      "titulo": "Evite filas enormes na compra dos Ingressos !",
      "subtitulo": "Texto de exemplo para representar uma descrição curta sobre a funcionalidade."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controlador,
            itemCount: paginas.length,
            onPageChanged: (indice) {
              setState(() => paginaAtual = indice);
            },
            itemBuilder: (context, indice) {
              final pagina = paginas[indice];
              return Stack(
                children: [
                  // Imagem de fundo
                  Image.asset(
                    pagina["imagem"]!,
                    fit: BoxFit.cover,
                    height: 555,
                    width: double.infinity,
                  ),

                  // Escurece embaixo
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.black,
                          Colors.black,
                          Colors.black,
                          Colors.black,
                          Colors.black54,
                          Colors.black45,
                          Colors.black38,
                          Colors.transparent,
                          Colors.transparent,
                          Colors.transparent,
                          Colors.transparent,
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            paginas.length,
                                (indicePonto) => Container(
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              width: paginaAtual == indicePonto ? 23 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: paginaAtual == indicePonto
                                    ? Colors.blue
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 18),

                        // Título
                        Text(
                          pagina["titulo"]!,
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "Inter",
                          ),
                        ),
                        const SizedBox(height: 17),

                        // Subtítulo
                        Text(
                          pagina["subtitulo"]!,
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: "Inter",
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(height: 50),

                        // Botão
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(double.infinity, 52),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          onPressed: () {
                            if (paginaAtual == paginas.length - 1) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => TelaEntradaGoogle()),
                              );
                            } else {
                              _controlador.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          icon: const Icon(Icons.arrow_forward,
                              color: Colors.white),
                          label: Text(
                            paginaAtual == paginas.length - 1
                                ? "Começar"
                                : "Prosseguir ",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),

          // Botão "Saltar"
          Positioned(
            top: 50,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => TelaEntradaGoogle()),
                );
              },
              child: const Text(
                "Saltar →",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Inter",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class TelaEntradaGoogle extends StatefulWidget {
  @override
  State<TelaEntradaGoogle> createState() => EstadoEntradaGoogle();
}

class EstadoEntradaGoogle extends State<TelaEntradaGoogle> {
  final PageController _controlador = PageController();
  int paginaAtual = 0;

  final List<Map<String, String>> paginas = [
    {
      "imagem": "assets/Quarto.png",
      "titulo": "Preparado para a nova aventura ?",
      "subtitulo":
      "Texto de exemplo para representar uma descrição curta sobre a funcionalidade."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              PageView.builder(
                  controller: _controlador,
                  itemCount: paginas.length,
                  onPageChanged: (indice) {
                    setState(() => paginaAtual = indice);
                  },
                  itemBuilder: (context, indice) {
                    final pagina = paginas[indice];
                    return Stack(
                        children: [
                          // Imagem de fundo
                          Image.asset(
                            pagina["imagem"]!,
                            fit: BoxFit.cover,
                            height: 795,
                            width: double.infinity,
                          ),

                          // Gradiente que escurece embaixo
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black,
                                  Colors.black,
                                  Colors.black,
                                  Colors.black,
                                  Colors.black,
                                  Colors.black54,
                                  Colors.black45,
                                  Colors.black38,
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),

                          Padding(
                              padding: const EdgeInsets.all(30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  // Título
                                  Text(
                                    pagina["titulo"]!,
                                    style: const TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: "Inter",
                                    ),
                                  ),
                                  const SizedBox(height: 17),

                                  // Subtítulo
                                  Text(
                                    pagina["subtitulo"]!,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Inter",
                                      color: Colors.white70,
                                    ),
                                  ),
                                  const SizedBox(height: 50),

                                  // Botão
                                  SizedBox(
                                    width: double.infinity,
                                    height: 50,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueAccent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset("assets/google.png", height: 24, width: 24),
                                          const SizedBox(width: 8),
                                          const Flexible(
                                            child: Text(
                                              "Entrar com o Google",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(fontSize: 18, color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 20),

                                  Center(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const Paginaum(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "Entrar",
                                        style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                          )
                        ]
                    );
                  }
              )
            ]
        )
    );
  }
}
