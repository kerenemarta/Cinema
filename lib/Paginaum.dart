import 'dart:convert';
import 'package:tentativa/Inicio.dart';

import 'package:flutter/material.dart';



class Paginaum extends StatelessWidget {
  const Paginaum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // IMAGEM DE FUNDO
          SizedBox.expand(
            child: Image.asset(
              "assets/fundo/back.png",
              fit: BoxFit.cover,
            ),
          ),



          // CONTEÚDO DA PÁGINA
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),

                  // LOGO
                  Center(
                    child: Image.asset(
                      "assets/logotipo.png",
                      height: 70,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // TÍTULO
                  const Text(
                    "Entrar",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // CAMPO EMAIL
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_outlined, color: Colors.white70),
                      hintText: "Digite seu email",
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),

                  // CAMPO SENHA
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_outline, color: Colors.white70),
                      suffixIcon: const Icon(Icons.visibility_outlined, color: Colors.white70),
                      hintText: "Digite a palavra passe",
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),

                  // LINHA ESQUECEU SENHA
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (val) {},
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                          ),
                          const Text(
                            "Keep me signed in",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> const Esquece()),
                        );
                        },
                        child: const Text("Forgot password?",
                          style: TextStyle(color: Colors.blueAccent),

                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // BOTÃO ENTRAR
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaginaInicialFilmes(),
                          ),
                        );
                      },
                      child: const Text(
                        "Entrar",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // OU
                  Row(
                    children: const [
                      Expanded(child: Divider(color: Colors.white38)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("or", style: TextStyle(color: Colors.white54)),
                      ),
                      Expanded(child: Divider(color: Colors.white38)),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // LOGIN SOCIAL
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook, color: Colors.white, size: 35),
                      ),
                      const SizedBox(width: 30),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.g_mobiledata_sharp, color: Colors.white, size: 40),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // CRIAR CONTA
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Não tens uma conta? ",
                        style: TextStyle(color: Colors.white70),
                      ),
                      GestureDetector(  onTap: () {
                          Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => Criarconta()),
                          );
                       },
                        child: const Text(
                          "Criar conta!",
                          style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // TERMOS
                  const Text(
                    "Para continuar a navegar com segurança confira os Termos e condições e as política e privacidade.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white54, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Criarconta extends StatelessWidget {
  const Criarconta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // IMAGEM DE FUNDO
          SizedBox.expand(
            child: Image.asset(
              "assets/fundo/back.png",
              fit: BoxFit.cover,
            ),
          ),



          // CONTEÚDO DA PÁGINA
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),

                  // LOGO
                  Center(
                    child: Image.asset(
                      "assets/logotipo.png",
                      height: 70,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // TÍTULO
                  const Text(
                    "Cadastrar-se",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // CAMPO EMAIL
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Nome",
                        style: const TextStyle(color: Colors.white,
                            fontSize: 16,
                          fontWeight: FontWeight.bold),
                      )
                    ],
                  ),

                  const SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.supervised_user_circle, color: Colors.white70),
                      hintText: "Digite seu nome",
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),

// CAMPO USUARIO
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Email",
                        style: const TextStyle(color: Colors.white,
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),

                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_outlined, color: Colors.white70),
                      hintText: "Digite seu email",
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),


                  // CAMPO SENHA

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Password",
                      style: const TextStyle(color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),

                  TextField(

                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_outline, color: Colors.white70),
                      suffixIcon: const Icon(Icons.visibility, color: Colors.white70),
                      hintText: "Digite a palavra passe",
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 30),


                  // BOTÃO ENTRAR
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
                      child: const Text(
                        "Entrar",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),


                  // CRIAR CONTA
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Já possui uma conta? ",
                        style: TextStyle(color: Colors.white70),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Entrar!",
                          style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Esquece extends StatelessWidget {
  const Esquece({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // IMAGEM DE FUNDO
          SizedBox.expand(
            child: Image.asset(
              "assets/fundo/back.png",
              fit: BoxFit.cover,
            ),
          ),



          // CONTEÚDO DA PÁGINA
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),

                  // LOGO
                  Center(
                    child: Image.asset(
                      "assets/logotipo.png",
                      height: 70,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // TÍTULO
                  const Text(
                    "Esqueceu da palavra-passe",
                    style: TextStyle(
                      fontSize: 26, fontFamily: "Inter",
                      fontWeight: FontWeight.w500,

                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Digite o se Email para recuperar senha",
                        style: const TextStyle(color: Colors.white,
                            fontSize: 13),
                      )
                    ],
                  ),
                  const SizedBox(height: 50), Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Email",
                        style: const TextStyle(color: Colors.white,
                            fontSize: 16, fontWeight: FontWeight.bold,
                        fontFamily: "Inter"),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  // CAMPO USUARIO

                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email, color: Colors.white70),
                      hintText: "Digite seu email",
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 33),

                  // BOTÃO ENTRAR
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Recupera(),
                          ),
                        );
                      },

                      child: const Text(
                        "Continuar",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class Recupera extends StatefulWidget {
  const Recupera({super.key});

  @override
  State<Recupera> createState()=>_RecuperaState();
}
class _RecuperaState extends State<Recupera>{
  final List<FocusNode> focusNodes =List.generate(6, (index)=>FocusNode());
  final List<TextEditingController> controllers= List.generate(6,(index)=> TextEditingController());

  void _onChanged(int index, String value) {
    if(value.isNotEmpty && index<5){

      FocusScope.of(context).requestFocus(focusNodes[index+1]);}
    else if (value.isNotEmpty && index>0) {
      FocusScope.of(context).requestFocus(focusNodes[index - 1]);
    }
    }

    String get _pin=> controllers.map((c)=> c.text).join();

    @override
    void dispose(){
      for(final controller in controllers){
  controller.dispose();
  }
      for(final node in focusNodes){
  node.dispose();
  }
      super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
      // IMAGEM DE FUNDO
      SizedBox.expand(
      child: Image.asset(
        "assets/fundo/back.png",
        fit: BoxFit.cover,
      ),
    ),

    // CONTEÚDO DA PÁGINA
    SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    const SizedBox(height: 60),

    // LOGO
    Center(
    child: Image.asset(
    "assets/logotipo.png",
    height: 70,
    ),
    ),
    const SizedBox(height: 5),

      // TÍTULO
      const Text(
        "Pin de confirmação",
        style: TextStyle(
          fontSize: 26, fontFamily: "Inter",
          fontWeight: FontWeight.w500,

          color: Colors.white,
        ),
      ),
      const SizedBox(height: 5),


      const Text(
        "Digite o código de confirmação que enviamos para o seu Email.",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 13),
      ),

      const SizedBox(height: 50),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,children:List.generate(6, (index){
        return SizedBox(width: 50,
          child: TextField(controller: controllers[index],
            focusNode: focusNodes[index],
            maxLength:1,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white,
                fontSize: 18),
            decoration: const InputDecoration(
              counterText: "",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.white24
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.blueAccent
                ),
              ),
            ),
            onChanged: (value)=>_onChanged(index,value),
          ),
        );

      }),
      ),
      const SizedBox(height: 40),




      // BOTÃO ENTRAR
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Proximo(),
              ),
            );
          },
          child: const Text(
            "Proximo",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
      const SizedBox(height: 25),



    ],
    ),
    ),
    ),
        ],
      ),
    );
  }
}
class Proximo extends StatelessWidget {
  const Proximo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // IMAGEM DE FUNDO
          SizedBox.expand(
            child: Image.asset(
              "assets/fundo/back.png",
              fit: BoxFit.cover,
            ),
          ),



          // CONTEÚDO DA PÁGINA
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),

                  // LOGO
                  Center(
                    child: Image.asset(
                      "assets/logotipo.png",
                      height: 70,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // TÍTULO
                  const Text(
                    "Repor a palavra-passe",
                    style: TextStyle(
                      fontSize: 26, fontFamily: "Inter",
                      fontWeight: FontWeight.w500,

                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Insira uma nova palavra Passe, mais segura",
                        style: const TextStyle(color: Colors.white,
                            fontSize: 13),
                      )
                    ],
                  ),
                  const SizedBox(height: 50), Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Palavra-Passe",
                        style: const TextStyle(color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter"),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  // CAMPO USUARIO

                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key, color: Colors.white70),

                      hintText: "Digite a palavra passe",
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20), Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Confirmar Palavra-Passe",
                        style: const TextStyle(color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter"),
                      )
                    ],
                  ),
                  const SizedBox(height: 10), TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key, color: Colors.white70),
                      suffixIcon: const Icon(Icons.visibility_outlined, color: Colors.white70),
                      hintText: "Digite a palavra passe",
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 33),

                  // BOTÃO ENTRAR
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Recupera(),
                          ),
                        );
                      },

                      child: const Text(
                        "OK",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}









