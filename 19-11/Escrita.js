const pessoa = {
    nome: "Matheus Medtler Alves",
    apelidos: ('Alves','Teteu','Medtler')
}

function PessoaApelido(obj){
    console.log(`Eu sou ${obj.nome}, mas pode me chamar de: ${obj.apelidos[0]} ou ${obj.apelidos[1]}`)
}

PessoaApelido(pessoa)


//b)
const novoObj = {
    ...pessoa,
    apelidos: ["Mathe","Math"]
}
 PessoaApelido(novoObj)


//2
const pessoa1 = {
    nome: 'Felipe',
    idade: 22,
    Profissao: "Engnheiro"
}

const pessoa2 = {
    nome: 'Arthur',
    idade: 24,
    profissao: "Arquiteto"

}

function MinhaFuncao(obj) {
    const resultado =[
        obj.nome,
        obj.nome.length,
        obj.idade,
        obj.profissao,
        obj.profissao.length
    ]
    return resultado
}


//3 

let carrinho = []

const fruta1 = {
    nome: "Maça",
    disponibilidade: true
}

const fruta2 = {
    nome: "Banana",
    disponibilidade: true
}
const fruta3 = {
    nome:"Laranja",
    disponibilidade: true
}
function adicionarAoCarrinho(fruta) {
    carrinho.push(fruta)
}

adicionarAoCarrinho(fruta1)
adicionarAoCarrinho(fruta2)
adicionarAoCarrinho(fruta3)

console.log(carrinho)