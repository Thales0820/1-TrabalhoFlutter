import '../ui/widgets/mensagem_alerta.dart';
import 'package:flutter/widgets.dart';

class CalcularImcBloc {

  var resultado = '';
  final BuildContext context;
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();

  CalcularImcBloc(this.context);

  void calcular() {
    final valorPeso = double.parse(pesoController.text);
    final valorAltura = double.parse(alturaController.text);
    final mensagem = MensagemAlert();

    double imc = valorPeso / (valorAltura * valorAltura);

    if (imc < 18.5) {
      resultado = 'Seu IMC indica magreza';

      mensagem.show(context: context,
          titulo: 'Resultado', texto: 'Seu IMC indica magreza');
    }
    else if (imc >= 18.5 && imc <= 24.9) {
      resultado = 'Seu IMC indica que você está normal';

      mensagem.show(context: context,
          titulo: 'Resultado', texto: 'Seu IMC indica que você está normal');
    }
    else if (imc >= 25 && imc <= 29.9) {
      resultado = 'Seu IMC indica que você está com sobrepeso';

      mensagem.show(context: context,
          titulo: 'Resultado', texto: 'Seu IMC indica que você está com sobrepeso');
    }
    else if (imc >= 30 && imc <= 39.9) {
      resultado = 'Seu IMC indica obesidade';

      mensagem.show(context: context,
          titulo: 'Resultado', texto: 'Seu IMC indica obesidade');
    }
    else {
      resultado = 'Seu IMC indica obesidade grave';

      mensagem.show(context: context,
          titulo: 'Resultado', texto: 'Seu IMC indica obesidade grave');
    }
  }
}
