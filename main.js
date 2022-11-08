const adicionarUsuario = function () {
    const nome = document.getElementById("nome").value;
    const senha = document.getElementById("senha").value;
    if(nome != "" && senha != ""){
        const url = `https://localhost:7185/${nome}/${senha}`;
        window.open(url);
    }
    document.getElementById("nome").value = "";
    document.getElementById("senha").value = "";
}
