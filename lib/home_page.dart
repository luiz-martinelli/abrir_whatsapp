import 'package:flutter/material.dart';
import 'package:notificacao_whats/defaults.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  var whatsappUrlAndroid = "whatsapp://send?phone=+5549984148345&text=Salve";
  var whatsappUrlWeb = "https://api.whatsapp.com/send/?phone=+554699261668&text=Salve";

  abrirWhatsapp() async {
    if(Platform.isMobile()){
      if( await canLaunchUrl(Uri.parse(whatsappUrlAndroid))){
        await launchUrl(Uri.parse(whatsappUrlAndroid));
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("whatsapp não instalado")
        )
      );}
      }else{
        if(await canLaunchUrl(Uri.parse(whatsappUrlWeb))){
          await launchUrl(Uri.parse(whatsappUrlWeb));}
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Teste Whatsapp")
    ),
      body: Center(
        child: ElevatedButton(
          onPressed: abrirWhatsapp, 
          child: const Text("Clique")
        )
      ),
    );
  }
}