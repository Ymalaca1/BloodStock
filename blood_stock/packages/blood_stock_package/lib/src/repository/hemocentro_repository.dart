import 'package:flutter/material.dart';
import '../export_src.dart';

class HemocentroRepository extends ChangeNotifier {
  final List<Hemocentro> _hemocentro = [
    //nordeste

    Hemocentro(
      nome: 'Hemoal Arapiraca',
      endereco:
          ' R. Desportista Ernesto Alves Siqueira, 49 - Centro, Arapiraca - Alagoas',
      latitude: -9.7531134,
      longitude: -36.664388,
    ),
    Hemocentro(
      nome: "Hemoal Trapiche, Hemocentro de Alagoas",
      endereco:
          "R. Dr. Jorge de Lima, 58 - Trapiche da Barra, Maceió - AL, 57010-300",
      latitude: -9.672659681946842,
      longitude: -35.7585371692111,
    ),
    Hemocentro(
        nome: "Hemocentro da Paraíba",
        endereco:
            "A 58013-420, Av. Dom Pedro II, 1548 - Jaguaribe, João Pessoa - PB, 58013-420",
        latitude: -7.119974,
        longitude: -34.871340),

    Hemocentro(
        nome: "Hemope",
        endereco:
            "R. Joaquim Nabuco, 171 - Graças, Recife - Pernambuco, 52011-000",
        latitude: -8.052673,
        longitude: -34.897924),

    Hemocentro(
        nome: "Hemocentro Dalton Cunha",
        endereco:
            "Av. Alm. Alexandrino de Alencar, 1800 - Tirol, Natal - RN, 59015-350",
        latitude: -5.810247,
        longitude: -35.196512),

    Hemocentro(
        nome: "Hemoce",
        endereco:
            "Praça das Flores - Av. Desembargador Moreira - Aldeota, Fortaleza - CE, 60140-200",
        latitude: -3.738900,
        longitude: -38.499049),

    Hemocentro(
        nome: "Hemocentro de Picos",
        endereco: "R. Luiz Nunes, 174-270 - Bomba, Picos - PI, 64600-000",
        latitude: -7.074135,
        longitude: -41.466932),

    Hemocentro(
        nome: "Hemomar",
        endereco: "R. Cinco de Janeiro, S/N - Jórdoa, São Luís - MA, 65040-450",
        latitude: -2.546264,
        longitude: -44.267427),

    Hemocentro(
        nome: "Hemocentro de Tocantins",
        endereco: "Av. NS 1, s/n - Lt. 1 - Centro, Palmas - TO, 77001-214",
        latitude: -10.166010,
        longitude: -48.331980),

    Hemocentro(
        nome: "Hemoba",
        endereco:
            "Ladeira do Hospital Geral, S/N - Brotas, Salvador - BA, 40286-240",
        latitude: -12.996232,
        longitude: -38.489924),

    Hemocentro(
        nome: "Instituo de Hematologia de Sergipe",
        endereco:
            "R. Guilhermino Rezende, 187 - Salgado Filho, Aracaju - SE, 49020-270",
        latitude: -10.925829837344482,
        longitude: -37.05155341115432),

    // Sudeste

    Hemocentro(
        nome: "Hemocentro de Divinópolis",
        endereco:
            "Rua José Gabriel Medef, 221 - Padre Liberio, Divinópolis - MG, 35500-139",
        latitude: -20.071870288772573,
        longitude: -44.88446771916259),
    Hemocentro(
        nome: "Hemocentro Unicamp",
        endereco:
            "Universidade Estadual de Campinas - R. Carlos Chagas, 480 - Cidade Universitária, Campinas - SP, 13083-878",
        latitude: -22.828094515707477,
        longitude: -47.0622526386311),

    Hemocentro(
        nome: "Hemorio",
        endereco: "R. Frei Caneca, 8 - Centro, Rio de Janeiro - RJ, 20211-030",
        latitude: -22.908461748757627,
        longitude: -43.189448976995564),
    Hemocentro(
        nome: "Hemocentro Mario Gatti",
        endereco:
            "Av. Pref. Faria Lima, 200 - Parque Italia, Campinas - SP, 13036-220",
        latitude: -22.9162031609951,
        longitude: -47.06934231534222),
    Hemocentro(
      nome: "Hemoes",
      endereco:
          "Av. Mal. Campos, 1468 - Maruípe, Vitória - Espírito Santo, 29047-105",
      latitude: -20.29794003793546,
      longitude: -40.31693834888162,
    ),

    Hemocentro(
      nome: "Hemocentro São Lucas - Unidade Liberdade",
      endereco:
          "Rua Barão de Iguape, 212 - 2º Andar - Liberdade, São Paulo - SP, 01507-000",
      latitude: -23.558419501005837,
      longitude: -46.63496727005334,
    ),
    Hemocentro(
      nome: "Hemocentro HCFMB",
      endereco: "Campus de, Av. Rubião Jr, Botucatu - SP, 18600-400",
      latitude: -22.888218233440952,
      longitude: -48.49554668465778,
    ),
    Hemocentro(
      nome: "Hemocentro do HCFAMEMA",
      endereco: "R. Lourival Freire, 240 - Fragata, Marília - SP, 17519-050",
      latitude: -22.22436358442754,
      longitude: -49.9377793386311,
    ),
    Hemocentro(
      nome: "Hemocentro de Ribeirão Preto",
      endereco:
          "Rua Barão de Iguape, 212 - 2º Andar - Liberdade, São Paulo - SP, 01507-000",
      latitude: -21.16107302486993,
      longitude: -47.84905893068445,
    ),

    // Sul
    Hemocentro(
        nome: "Instituto Pasquini de Hemoterapia e Hematologia Ltda",
        endereco:
            "R. Alcídes Munhoz, 433 - Mercês, Curitiba - Paraná, 80810-040",
        latitude: -25.42136908122506,
        longitude: -49.290776573627866),

    Hemocentro(
      nome: "HEMOSC",
      endereco:
          "Av. Prof. Othon Gama D'Eça, 756 - Centro, Florianópolis - SC, 88015-240",
      latitude: -27.58924959180274,
      longitude: -48.55111273108663,
    ),

    Hemocentro(
      nome: "HEMORGS",
      endereco:
          "Av. Bento Gonçalves, 3722 - Partenon, Porto Alegre - RS, 90650-001",
      latitude: -30.062997716203387,
      longitude: -51.17883036254695,
    ),

    // Centro-oeste

    Hemocentro(
        nome: "Hemocentro de Brasília",
        endereco:
            "BL 3 - SMHN conjunto A - Asa Norte, Brasília - DF, 70710-908",
        latitude: -15.785138524056366,
        longitude: -47.88596462650405),

    Hemocentro(
      nome: "Hemocentro Coordenador Estadual de Goiás Dr. Nion Albernaz",
      endereco: "Av. Anhanguera, 5195 - St. Coimbra, Goiânia - GO, 74535-010",
      latitude: -16.675846738015657,
      longitude: -49.27919724947088,
    ),

    Hemocentro(
      nome: "Hemocentro de Cuiabá",
      endereco: "Rua 13 de Junho, 1055 - Centro Sul, Cuiabá - MT, 78005-100",
      latitude: -15.605478596308918,
      longitude: -56.10140397240644,
    ),

    Hemocentro(
        nome: "Hemosul Santa Casa",
        endereco: "R. Rui Barbosa, 3633 - Centro, Campo Grande - MS, 79002-363",
        latitude: -20.453825181753395,
        longitude: -54.615992680534184),

    // Norte

    Hemocentro(
        nome: "Hemororaima",
        endereco:
            "Av. Brg. Eduardo Gomes, 3418 - Aeroporto, Boa Vista - RR, 69310-005",
        latitude: 2.8318773962020085,
        longitude: -60.689608163240756),

    Hemocentro(
        nome: "Hemoap",
        endereco:
            "Av. Raimundo Álvares da Costa, 1106 - Central, Macapá - AP, 68900-074",
        latitude: 0.042605998658922124,
        longitude: -51.059862420479284),

    Hemocentro(
        nome: "Hemoam",
        endereco:
            "Av. Constantino Nery, 4397 - Chapada, Manaus - Amazonas, 69050-001",
        latitude: -3.086064566723365,
        longitude: 60.027007205089305),

    Hemocentro(
        nome: "Centro de Hematologia de Belém",
        endereco: "Tv. Mauriti, 3085 - Marco, Belém - PA, 66093-681",
        latitude: -1.4371507714053993,
        longitude: -48.45807949805577),

    Hemocentro(
        nome: "Hemoacre",
        endereco:
            "Av. Getúlio Vargas, 2787 - Bosque, Rio Branco - AC, 69900-607",
        latitude: -9.95381485741557,
        longitude: -67.81907442656008),

    Hemocentro(
        nome: "Hemocentro de Rondônia",
        endereco:
            "2341, Av. Clóvis Arraes, 2207 - Urupá, Ji-Paraná - RO, 76900-209",
        latitude: -10.879626126157689,
        longitude: -61.94499572903766),
  ];

  List<Hemocentro> get hemocentro => _hemocentro;
}
