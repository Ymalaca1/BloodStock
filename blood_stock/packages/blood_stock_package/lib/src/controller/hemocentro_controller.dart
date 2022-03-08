// ignore_for_file: prefer_const_constructors, avoid_function_literals_in_foreach_calls
import 'package:blood_stock_package/blood_stock_package.dart';
import 'package:common_package/common.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HemocentroController extends ChangeNotifier {
  double lat = 0.0;
  double long = 0.0;
  String erro = '';

  double _raio = 0.0;
  double get raio => _raio;
  void setRaio(double raio) {
    _raio = raio;
    notifyListeners();
  }

  String get distancia => raio < 1
      ? '${(raio * 1000).toStringAsFixed(0)} m'
      : '${(raio).toStringAsFixed(1)} km';

  late GoogleMapController _mapsController;
  Set<Marker> markers = <Marker>{};

  get mapsController => _mapsController;

  onMapCreated(GoogleMapController gmc) async {
    _mapsController = gmc;
    getPosicao();
    loadHemocentros();
  }

  getPosicao() async {
    try {
      Position posicao = await _posicaoAtual();
      lat = posicao.latitude;
      long = posicao.longitude;
      _mapsController.animateCamera(CameraUpdate.newLatLng(LatLng(lat, long)));
    } catch (e) {
      erro = e.toString();
    }
    notifyListeners();
  }

  void loadHemocentros() {
    final hemocentros = HemocentroRepository().hemocentro;
    if (markers.isEmpty) {
      hemocentros.forEach(
        (hemocentro) {
          addMarker(hemocentro);
        },
      );
    }
  }

  void addMarker(Hemocentro hemocentro) async {
    markers.add(
      Marker(
        markerId: MarkerId(hemocentro.nome),
        position: LatLng(hemocentro.latitude, hemocentro.longitude),
        icon: await BitmapDescriptor.fromAssetImage(
            ImageConfiguration(), academyAssets3('60')),
        onTap: () => {
          showModalBottomSheet(
              context: appKey.currentState!.context,
              builder: (context) => HemocentroDetalhes(hemocentro: hemocentro))
        },
      ),
    );
  }

  _posicaoAtual() async {
    LocationPermission permissao;
    bool ativado = await Geolocator.isLocationServiceEnabled();
    if (!ativado) {
      return Future.error("por favor ative sua localização");
    }
    permissao = await Geolocator.checkPermission();
    if (permissao == LocationPermission.denied) {
      permissao = await Geolocator.requestPermission();
      if (permissao == LocationPermission.denied) {
        return Future.error("a permissao foi negada");
      }
    }
    if (permissao == LocationPermission.deniedForever) {
      return Future.error("a permissao foi negada pra sempre");
    }
    return await Geolocator.getCurrentPosition();
  }

  Future<void> filtrarHemocentro() async {
    markers = {};
    loadHemocentros();
    double calDist = 0.0;
    Position posicao = await _posicaoAtual();
    Set<Marker> newMarkers = {};
    markers.forEach((maker) {
      calDist = Geolocator.distanceBetween(posicao.latitude, posicao.longitude,
              maker.position.latitude, maker.position.longitude) /
          1000;
      if (calDist < raio) {
        newMarkers.add(maker);
      }
    });
    viewNewMarkes(newMarkers);
  }

  void viewNewMarkes(Set<Marker> newMarkers) {
    print(markers.length);
    markers = newMarkers;
    print(markers.length);
    notifyListeners();
  }

  void resetMarkers() {
    markers = {};
    loadHemocentros();
    notifyListeners();
  }
}
