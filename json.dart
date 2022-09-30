import 'dart:convert';

void main(List<String> args) {
  const jsonString =
      '{"text": "foo", "value": 1, "status": false, "extra": null}';

//possiblita pesquisar os valores dendro do json
  final data = jsonDecode(jsonString);
  print(data['text']); // foo
  print(data['value']); // 1
  print(data['status']); // false
  print(data['extra']);

  // null
  final vap = jsonEncode(data);
  Usuario pessoa = new Usuario(nome: 'amor', idade: 12);

  //converter Objecto para mapa
  Map<String, dynamic> map = {
    'nome': pessoa.nome,
    'idade': pessoa.idade,
  };

  print('mapa convertido do objecto pessoa' + map.toString());

  ///converter lista para mapa
  List<int> valores = [5, 2];
  Map<int, dynamic> mapaLista = {0: 1, 1: 2};

  final mapaListaConvertidoOutraforma =
      Map.fromIterable(valores, key: (e) => e, value: (e) => {});
  print('mapa convertido da lista' + mapaLista.toString());
  print('mapa convertido da de outra forma' +
      mapaListaConvertidoOutraforma.toString());

  //converter mapa para lista
  
  final mapaParaLista = jsonDecode(mapaLista.toString());
  print('mapa convertido da lista' + mapaParaLista[0].toString());
}

class Usuario {
  String? nome;
  int? idade;
  Usuario({
    required this.nome,
    required this.idade,
  });
}
