// ignore_for_file: prefer_const_constructors

import 'package:blood_stock_package/src/controller/request_repository.dart';
import 'package:blood_stock_package/src/model/request_card.dart';
import 'package:blood_stock_package/src/view/bottom_sheet_feed.dart';
import 'package:common_package/common.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    final tabela = RequestRepository.tabela;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(6.5.h),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: ColorPalette.primary,
          title: Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text('Requisições'),
          ),
          elevation: Spacing.half,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Spacing.x2_half),
                bottomRight: Radius.circular(Spacing.x2_half)),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Colocar a função do botão de requisição aqui
              },
              icon: const Icon(Icons.add),
              iconSize: 40,
              padding: EdgeInsets.only(right: 3.5.h),
            ),
          ],
        ),
      ),

      //Comentei esse Grid view aqui, só pra caso de quebrar o código eu lembrar onde que pode ter sido
      //body: GridView.count(
      //crossAxisCount: 1,
      //children: [
      body: SizedBox(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int receptor) {
            // Gesture detector
            return GestureDetector(
              onTap: () {
                NavigatorModal()
                    .modalBottomSheet(context, modal(context, receptor));
              },
              child: Container(
                margin: const EdgeInsets.only(
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white60,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                // coloquei esse height, mas ficou fora de formatação, Tiagão me ajudou a ter essas noções de espaçamento
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 50),
                    ListTile(
                      leading: SizedBox(
                        // ignore: unnecessary_new
                        child: new Container(
                          child: const Align(
                            alignment: Alignment.centerRight,
                          ),
                          //caso tenha algum problema, foi esse margin
                          margin: const EdgeInsets.only(
                            top: 3,
                            bottom: 3,
                          ),
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                tabela[receptor].image,
                              ),
                            ),
                          ),
                        ),
                      ),
                      title: Text(tabela[receptor].name),
                      textColor: (ColorPalette.primary),
                      trailing: Text(tabela[receptor].bloodType),
                    ),
                  ],
                ),
              ),
            );
          },
          padding: EdgeInsets.all(16),
          itemCount: tabela.length,
        ),
      ),
    );
  }

  buildListView() {
    //Gerando valores para a lista pré-setado
    final itens = List<String>.generate(20, (i) => "Item Teste $i");

    return ListView.builder(
      itemCount: itens.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.person),
          title: Text(itens[index]),
        );
      },
    );
  }

  // Onde eu estou retornando o modal
  // ignore: avoid_types_as_parameter_names
  Widget modal(context, int receptor) {
    final tabela = RequestRepository.tabela;
    // Dentro do container irei modelar e estilizar o bottom sheet

    //     return Container(
    //   width: double.infinity,
    //   margin: const EdgeInsets.all(16.0),
    //   clipBehavior: Clip.antiAlias,
    //   decoration: BoxDecoration(
    //     borderRadius: const BorderRadius.all(Radius.circular(16.0)),
    //   ),
    // );

    return Container(
      width: double.infinity,
      // margin: const EdgeInsets.all(0.0),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(20.h),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: ColorPalette.primary,
            elevation: Spacing.half,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Spacing.x6_half),
                    bottomRight: Radius.circular(Spacing.x6_half))),
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Spacing.half),
                      bottomRight: Radius.circular(Spacing.half),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spa,
                          children: [
                            Container(
                              height: 15.h,
                              width: 15.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(tabela[receptor].image),
                                ),
                                border: Border.all(
                                    color: ColorPalette.tertiary,
                                    width: 0.10.h),
                                borderRadius:
                                    BorderRadius.circular(Spacing.x10),
                              ),
                            ),
                            // Ajustando os itens dentro da App Bar do modal
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 3.h, vertical: 5),
                                  child: Text(tabela[receptor].name)
                                      .subtitle1(ColorPalette.secundary),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 3.h, vertical: 5),
                                  child: Text(tabela[receptor].local)
                                      .subtitle1(ColorPalette.secundary),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Spacing.x1_half, vertical: Spacing.x5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: Spacing.half),
                child: Text('Informações').body2(ColorPalette.textInput),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsetsDirectional.all(Spacing.x1_half),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: ColorPalette.tertiary.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(0, 1)),
                      ],
                      border:
                          Border.all(color: ColorPalette.background, width: 3),
                      borderRadius: BorderRadius.circular(Spacing.x3),
                      color: ColorPalette.background),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Paciente').subtitle1(ColorPalette.textInput),
                          Text(tabela[receptor].userName)
                              .subtitle2(ColorPalette.textInput)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tipo Sanguíneo')
                              .subtitle1(ColorPalette.textInput),
                          Text(tabela[receptor].bloodType)
                              .subtitle2(ColorPalette.textInput)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Solicitação').subtitle1(ColorPalette.textInput),
                          Text(tabela[receptor].userBloodType)
                              .subtitle2(ColorPalette.textInput)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Validade').subtitle1(ColorPalette.textInput),
                          Text(tabela[receptor].validade)
                              .subtitle2(ColorPalette.textInput)
                        ],
                      ),
                      Text('Descrição:').subtitle1(ColorPalette.textInput),
                      Expanded(
                        child: Text(
                                'Acidente de carro') //(tabela[receptor].description)

                            .subtitle2(ColorPalette.textInput),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
