const readlineSync = require('readline-sync')

function imprimeFrase(){
    console.log("Olá, tudo bem com você?")
}

function calculasoma(){
    console.log(`A soma de 5 + 5 é ${5+5}.`)
}

function exbirmenu(){  
    let opcao;

    // Enquanto a opçãp não for 3 (sair), o loop continuara 
    while(true){
        // Exibir o menu e capturar a entrada do usuário
        opcao=readlineSync.question("Escolha uma opção:\n");

        switch(opcao){
            case 1:
                imprimeFrase()
                break;
            case 2:
                calculasoma
                break;
            case 3:
                console.log("Saindo...");
                return; //Encerra a função, saindo do loop
            default:
                console.log("Opção inválida!");
                break
        }
    }
}

//chamar a função para exibir o menu
exbirmenu();