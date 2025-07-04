import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
    //Appbar dar página inicial
    appBar: AppBar(
      backgroundColor: Color(0xfffba0d8),
      toolbarHeight: 80,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(32))),

      title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Logo
            SizedBox(
              width: 75,
              child: Image.asset('assets/images/icon_logo.png')
              ),

            SizedBox(width: 5,),
        
            //Texto CIM
            Text("CIM", style: TextStyle(
              fontFamily: 'Oswald',
              fontSize: 42,
              fontWeight: FontWeight.bold
            ),
            ),
        
            //Texto Centro de informações a mulher
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CENTRO DE", 
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 25,
                    height: 1
                  ),
                  textAlign: TextAlign.left,
                ),
        
                Text("informações a Mulher".toUpperCase(), style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 15,
                  height: 1
                ),
                ),
              ],
            )
          ]
        ),
      ),
    
    body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40,),
      
          //Container do Botão de Emergência
          Container(
            decoration: BoxDecoration(
              color: Color(0xffc42217),
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(100),
                left: Radius.circular(20),
              )
            ),
            width: 400,
            height: 220,
            
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 8, bottom: 8),
              child: Row(
                children: [
                  //Texto lateral esquerdo do Row
                  SizedBox(
                    width: 170,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/texticon_emergencia.png'), //Texto Botão de Emergência
      
                        Text("Com um toque, alerte automaticamente contatos de emergência e envie sua localização.",
                        softWrap: true,
                        maxLines: null,
                        style: TextStyle(
                          height: 1,
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                        ),
                        ),
      
                        ElevatedButton(
                          onPressed: (){}, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xfffcbbd5),
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                            minimumSize: Size(0, 0)
                          ),
                          child: Text("Configurar Botão",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w900
                            )
                          )
                          ), 
                      ],
                    ),
                  ),
                  
                  //Texto lateral direito do Row
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                         shadowColor: Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                      ),
                      child: Image.asset("assets/images/Icone_BotaoEmergencia.png")
                      )
                  )
                ],
              ),
            ),
          ),
      
          SizedBox(height: 30,),
          
          //TextButton para configurações de gestos
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                minimumSize: Size(0, 0),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent
              ), 
              child: Text("Clique aqui, para configurar um gesto ou comando\nde voz, para acionar o botão de emergência.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  backgroundColor: Color(0xfffff1f9)
                ),
              ),
            ),
          ),
      
          SizedBox(height: 30,),
      
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background_SolicitarMedida.png"),
                fit: BoxFit.cover
              ),
            ),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 45, right: 45),
                  child: Text("Solicite seu pedido\nde medida\nprotetiva online",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    height: 1.2,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.25), 
                        offset: Offset(0, 10), 
                        blurRadius: 37, 
                      ),
                    ],
                  ),
                  ),
                ),

                SizedBox(height: 25,),

                Center(
                  child: ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff590037),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)
                      )
                    ),
                    child: Text("ACESSAR COM CADASTRO DO GOV",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                      ),
                    ),
                    ),
                ),

                SizedBox(height: 30,),

                //Botão 190
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Está passando por uma\nsituação de emergência?",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.25), 
                          offset: Offset(0, 10), 
                          blurRadius: 37, 
                        ),
                      ],
                    ),
                    ),

                    SizedBox(width: 10,),

                    ElevatedButton(
                      onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff590037),
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)
                        )
                      ),
                      child: Text("LIGUE 190",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 16
                      ),)
                      )
                  ],
                ),
                
                SizedBox(height: 30,),

                Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xff8d50b0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "O que são\n",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20
                                )
                              ),
                              TextSpan(
                                text: "medidas\nprotetivas?",
                                style: TextStyle(
                                  color: Color(0xfffba0d8),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20
                                )
                              )
                            ]
                          )
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            height: 115,
                            width: 3,
                            decoration: BoxDecoration(
                              color: Color(0xff4d58a4)
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 260,
                          child: Image.asset("assets/images/text_MedidaProtetiva.png"
                          ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}