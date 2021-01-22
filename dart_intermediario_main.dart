/*
String exibirDados(String nome, {int idade, double altura}){ //entre chaves = paramêtro opcional
  //print("Olá, Pedro");
  int novaIdade = idade ?? 0; // caso o parametro seja nulo, exibe um valor padrão
  double novaAltura = altura ?? 0; // caso o parametro seja nulo, exibe um valor padrão
  return "Olá, $nome, sua idade é $novaIdade anos, e tem $novaAltura de altura.";
}
*/

/*
 * //passando uma função como parâmetro, deve-se chama-la dentro da própria função
String exibirDados(String nome, Function funcao){
  print("Olá, $nome");
  funcao();
}

void calcularBonus(){
  print("Bônus calculado");
}
*/

/*
 //função anônima
 String exibirDados(String nome, Function funcao){
  print("Olá, $nome");
  funcao();
}
*/

//CLASSES, CONSTRUTORES E HERANÇAS
/*class Animal {

  String cor;
  void dormir(){
    print("Dormir");
  }
  
  /*
   * //Construtor completo da classe animal
  Animal(String cor){
    this.cor = cor;
  }
  */
  
  //construtor simplificado da classe animal
  /*
  Animal(this.cor);
  
  Animal.jabuti(this.cor){
    print("Construtor do Jabuti");
  }
  */
  
}

class Cao extends Animal {
  String corOrelha;
  
  void latir(){
    print("Latir");
  }
  
  @override
  void dormir(){
    print("Dorme cão");
  }
}

class Passaro extends Animal {
  String corBico;
  
  void voar(){
    print("Voa");
  }
  
  @override
  void dormir(){
    print("Dorme passaro");
  }
}
*/

//GETTERS AND SETTERS
class Conta {
  double _saque = 0; //underline não permite o acesso do valor fora da classe, requerindo um get/set  
  
  double get getSaque { //não precisa de parâmetro
    //validações/formatações
    return this._saque;
  }
  
  set setSaque(double saque){ //precisa de parâmetro
    if(saque > 0 && saque <= 500) { //regras de negócio apenas
      this._saque = saque; //set
    }
  }
}

void main() {
  
  //CHAMADA DE FUNÇÕES
  //exibirDados();
  //String nome = exibirDados("Pedro", idade:23); //Parametros opcionais: deve-se nomea-los antes do valor
  
  //FUNÇÃO COMO PARÂMETRO
  //String nome = exibirDados("Pedro", calcularBonus); // não precisa () para passar a função
  
  //CHAMADA DE FUNÇÃO ANÔNIMA
  //exibirDados("Pedro", (){print("Bônus calculado");}); //chamada de função anônima
  //(){}, onde a função vai dentro da chave
  
  //CLASSES, CONSTRUTORES E HERANÇA
  //Animal animal = new Animal("Marrom"); // no Dart o "new" é desnecessário
  //Animal animal = Animal.jabuti("Marrom");
  //animal.dormir();
  //print(animal.cor);
  //animal.cor = "Marrom"; //torna-se desnecessário a partir do momento que temos um construtor, pois pode ser recebido como parâmetro
  /*Cao cao = Cao();
  Passaro passaro = Passaro();
  cao.dormir();
  cao.latir();
  print("<< Passaro >>");
  passaro.dormir();
  passaro.voar();
  */
  
  //GETTERS AND SETTERS
  Conta conta = Conta();
  conta.setSaque = 500;
  print(conta.getSaque);
}