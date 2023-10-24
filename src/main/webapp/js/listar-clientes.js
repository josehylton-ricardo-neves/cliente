function confirmarExclusao(clienteId) {
    var confirmacao = window.confirm("Tem certeza que deseja excluir este cliente?");
    if (confirmacao) {
        window.location.href = "/cliente/ExcluirCliente?id=" + clienteId;
    } else {
        return false;
    }
}