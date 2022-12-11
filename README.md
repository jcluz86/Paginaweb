## Indice

- [Sobre](#-sobre)
- [Tecnologias Utilizadas](#-tecnologias-utilizadas)
- [Pré-requisitos](#-Pré-requisitos)
- [Como baixar e executar o projeto](#-como-baixar-e-executar-o-projeto)

## 🔖&nbsp; Sobre

O Shared Data tem como objetivo principal facilitar o compartilhamento de arquivos do samba, trazendo uma interface leve e intuitiva para que um leigo em informática consiga utilizá-lo.

---

## 🚀 Tecnologias utilizadas

O projeto foi desenvolvido utilizando as seguintes tecnologias

- [HTML + CSS](https://www.w3.org/)
- [PHP](https://www.php.net/)
- [Dotnet](https://dotnet.microsoft.com/pt-br/)

---

## Pré-requisitos

Antes de começar, você vai precisar ter instalado em seu servidor Linux o samba e o dotnet.

```bash
  #Para distribuições que utilizam o apt como gerenciador de pacotes, utilize os comandos abaixo.
  $ sudo apt install samba
  $ sudo apt update && apt install -y aspnetcore-runtime-6.0
```

## 🗂 Como baixar e executar o projeto

Este projeto é divido em duas partes:
1. Back-End (servidor)
2. Front-End (web)

💡O Front-end necessita que o Back-end esteja sendo executado para funcionar.


### 🎲 Rodando o Back End (servidor)

```bash
  # Clone este repositório
  $ git clone <https://github.com/jcluz86/Paginaweb>

  # Pelo terminal, crie uma pasta na raiz com o nome shareddata e dê as devidas permissões
  $ mkdir shareddata
  $ chmod 777 -R shareddata/

  # Após baixar o repositório, entre na pasta back-end e copie a pasta server e a pasta script para a pasta shareddata
  $ sudo cp -Rf server /shareddata
  $ sudo cp -Rf script /shareddata

  #Navegue até a pasta server e execute a aplicação
  $ cd /shareddata/server
  $ sudo dotnet run
  # O servidor iniciará na porta https:7185

```

### 🎲 Rodando o Front End (Web)

```bash
  # Copie todos os arquivos da pasta front-end para a pasta shareddata
  $ cd /shareddata/back-end/
  $ mv * /shareddata
  # Pelo seu navegador, abra o arquivo index.html
```


---

Desenvolvido por Andre Dias, Andre Nascimento, Brandon, Israel, Julio.


---