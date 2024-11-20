const filme = {
    nome: "Auto da Compadecida", 
    ano: 2000, 
    elenco: [
        "Matheus Nachtergaele", "Selton Mello", "Denise Fraga", 
        "Virginia Cavendish"
    ], 
    transmissoesHoje: [
        {canal: "Telecine", horario: "21h"}, 
        {canal: "Canal Brasil", horario: "19h"}, 
        {canal: "Globo", horario: "14h"}
    ]
}

/*1 
Matheus Nachtergaele
Virginia Cavendish
canal: 'globo', horario: '14h'*/

const cachorro = {
    nome: "Juca", 
    idade: 3, 
    raca: "SRD"
}

const gato = {...cachorro, nome: "Juba"}

const tartaruga = {...gato, nome: gato.nome.replaceAll("a", "o")}

console.log(cachorro)
console.log(gato)
console.log(tartaruga)

/*
nome: 'Juca', idade: 3, raça:'SRD'
nome: 'Juba', idade: 3, raça:'SRD'
nome: 'Jubo', idade: 3, raça:'SRD'

b) Serve como se fosse uma cópia*/

//3

function minhaFuncao(objeto, propriedade) {
    return objeto[propriedade]
}

const pessoa = {
    nome: "Caio", 
    idade: 23, 
    backender: false
}

console.log(minhaFuncao(pessoa, "backender"))
console.log(minhaFuncao(pessoa, "altura"))

/*False 
undefined

b) A propriedade 'altura' não existe e o código tenta acessar por isso deu undefined*/
