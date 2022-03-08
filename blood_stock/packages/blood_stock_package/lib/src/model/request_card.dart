// Aqui imagino que ficariam a parte de requerir as informações
// Mockada da API para reproduzir no feed

class Receptor {
  String image;
  String name;
  String description;
  String bloodType;
  String local;
  String userBloodType;
  String userName; //Nome do paciente (quando alguém requere para uma pessoa )
  String validade;

  Receptor({
    required this.image,
    required this.name,
    required this.description,
    required this.bloodType,
    required this.local,
    required this.userBloodType,
    required this.userName,
    required this.validade,
  });
}
