class ConteudoProva {
  String pergunta;
  String questao1;
  String questao2;
  String questao3;
  String questao4;
  int resposta;
  int respostaCorreta=1;
  bool resultado=false;

  ConteudoProva(pergunta,q1,q2,q3,q4,resposta){
    this.pergunta=pergunta;
    this.questao1=q1;
    this.questao2=q2;
    this.questao3=q3;
    this.questao4=q4;  
    this.resposta=resposta;  
  }
  getQuestao1(){
    return questao1;
  }

  getQuestao2(){
    return questao2;
  }

  getQuestao3(){
    return questao3;
  }

  getQuestao4(){
    return questao4;
  }

  getPergunta(){
    return pergunta;
  }
  getResposta(){
    return resposta;
  }

  getResultado(){
    return resultado;
  }

  corrigirQuestao(){
    if(resposta==respostaCorreta){
      this.resultado=true;
    }
  }
}