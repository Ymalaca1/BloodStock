// ignore_for_file: prefer_const_constructors

import 'package:common_package/common.dart';
import 'package:flutter/material.dart';
import '../export_src.dart';

GlobalKey appKey = GlobalKey();

class HemocentroPage extends StatefulWidget {
  const HemocentroPage({Key? key}) : super(key: key);

  @override
  State<HemocentroPage> createState() => _HemocentroPageState();
}

class _HemocentroPageState extends State<HemocentroPage> {
  double valor = 0.0;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HemocentroController>(
      create: (context) => HemocentroController(),
      child: Builder(builder: (context) {
        final HemocentroController localController =
            context.watch<HemocentroController>();
        return Scaffold(
          key: appKey,
          extendBodyBehindAppBar: true,
          appBar: _appBar(localController, context),
          body: _body(localController),
        );
      }),
    );
  }

  PreferredSize _appBar(HemocentroController localController, contexto) {
    return PreferredSize(
      preferredSize: Size.fromHeight(6.5.h),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorPalette.primary,
        title: Center(
          child: Text('Hemocentros'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: contexto,
                    builder: (context) => filtro(localController, contexto));
              },
              icon: Icon(Icons.filter_list))
        ],
        elevation: Spacing.half,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Spacing.x4_half),
            bottomRight: Radius.circular(Spacing.x4_half),
          ),
        ),
      ),
    );
  }

  Widget _body(HemocentroController localController) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(localController.lat, localController.long),
        zoom: 10,
      ),
      zoomControlsEnabled: true,
      mapToolbarEnabled: true,
      mapType: MapType.normal,
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
      padding: EdgeInsets.only(top: 120.0),
      onMapCreated: localController.onMapCreated,
      markers: localController.markers,
    );
  }

  Widget filtro(
    HemocentroController localController,
    BuildContext context,
  ) {
    return SimpleDialog(
      title: Text("Filtrar por distancia"),
      backgroundColor: ColorPalette.backgroundInput,
      children: [
        _slider(localController),
        _button(localController),
      ],
    );
  }

  Widget _slider(HemocentroController localController) {
    return StatefulBuilder(
      builder: (context, setState) => SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.red[700],
          inactiveTrackColor: Colors.red[100],
          trackShape: RoundedRectSliderTrackShape(),
          trackHeight: 4.0,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          thumbColor: Colors.redAccent,
          overlayColor: Colors.red.withAlpha(32),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
          tickMarkShape: RoundSliderTickMarkShape(),
          activeTickMarkColor: Colors.red[700],
          inactiveTickMarkColor: Colors.red[100],
          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
          valueIndicatorColor: Colors.redAccent,
          valueIndicatorTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        child: Slider(
          value: valor,
          thumbColor: ColorPalette.secundary,
          activeColor: ColorPalette.primary,
          min: 0,
          max: 200,
          divisions: 100,
          label: localController.distancia,
          onChanged: (double value) {
            localController.setRaio(value);
            setState(() {
              valor = value;
              print(valor);
            });
          },
        ),
      ),
    );
  }

  Widget _button(HemocentroController localController) {
    return Padding(
      padding: EdgeInsets.only(right: 24, top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () async {
              await localController.filtrarHemocentro();
              Navigator.pop(context);
            },
            child: Text('Filtrar'),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          ),
          Padding(padding: EdgeInsets.only(left: 24)),
          TextButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {
                localController.resetMarkers();
                Navigator.pop(context);
              },
              child: Text(
                'Resetar Filtros',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
