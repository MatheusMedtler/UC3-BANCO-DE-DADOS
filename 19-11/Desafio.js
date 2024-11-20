//1

const readlineSync = require('readline-sync'); 

function criarObjetoUsuario() {
    
    const nome = readlineSync.question('Qual é o seu nome? ');
    const idade = readlineSync.questionInt('Qual é a sua idade? ');
    const profissao = readlineSync.question('Qual é a sua profissão? ');

    const usuario = {
        nome: nome,
        idade: idade,
        profissao: profissao
    };


    console.log(usuario);

    console.log(typeof usuario); // Esperado: "object"
}


criarObjetoUsuario();

//2

function compararFilmes(filme1, filme2) {
    
    const foiLançadoAntes = filme1.ano < filme2.ano;
    const foiLançadoNoMesmoAno = filme1.ano === filme2.ano;


    console.log(`O primeiro filme foi lançado antes do segundo? ${foiLançadoAntes}`);
    console.log(`O primeiro filme foi lançado no mesmo ano do segundo? ${foiLançadoNoMesmoAno}`);
}


const filme1 = {
    nome: "Filme A",
    ano: 2010
};

const filme2 = {
    nome: "Filme B",
    ano: 2015
};

compararFilmes(filme1, filme2);


//3


//3


function inverterDisponibilidade(fruta) {
   
    fruta.disponibilidade = !fruta.disponibilidade;
    

    return fruta;
}


const fruta1 = {
    nome: "Maçã",
    disponibilidade: true
};

const fruta2 = {
    nome: "Banana",
    disponibilidade: true
};

const fruta3 = {
    nome: "Laranja",
    disponibilidade: true
};


console.log(inverterDisponibilidade(fruta1));
console.log(inverterDisponibilidade(fruta2)); 
console.log(inverterDisponibilidade(fruta3))