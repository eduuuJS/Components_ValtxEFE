import 'package:efe_components/components/btn_cancel.dart';
import 'package:efe_components/components/btn_primary.dart';
import 'package:efe_components/components/input_primary.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Components"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BtnPrimary(
                  onTap: () {},
                  text: "Iniciar Sesión",
                  isMaxHeight: true,
                ),
                BtnPrimary(
                  onTap: () {},
                  text: "Agregar",
                ),
                BtnPrimary(
                  onTap: () {},
                  text: "Agregar",
                  isGreen: true,
                ),
                BtnCancel(
                  text: "Cancelar",
                  onTap: () {},
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InputPrimary(
                  label: "Nombre",
                  textEditingController: TextEditingController(text: "Hola"),
                ),
                InputPrimary(label: "Nombre"),
                InputPrimary(label: "Nombre"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
