import 'dart:io';
void main(){
    var saudacao = "Hello World";
    var mensagem = "Digite um numero: ";
    var numero  = Read(saudacao, mensagem);
    print("O dobro desse numero é: ${numero*2}");
}



double Read(saudacao, mensagem){//parametros de função com tipos dinamicos
    //intepolação de string com $ para cada variavel
    print("${saudacao} - ${mensagem}");
    //leitura de console com a biblioteca dart.io retornando um (string?)
    var input = stdin.readLineSync();
    var numero = double.tryParse(input == null ? "": input);  

    if(numero == null){
        print("Entrada invalida.");
        return Read(saudacao, mensagem);
    }    
    else
        return numero;  
}