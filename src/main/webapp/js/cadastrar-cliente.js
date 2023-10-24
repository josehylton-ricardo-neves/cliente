function validarForm() {
    var nome = document.getElementById("nome").value;
    var email = document.getElementById("email").value;
    var telefone = document.getElementById("telefone").value;
    var nomeError = document.getElementById("nome-error");
    var emailError = document.getElementById("email-error");
    var telefoneError = document.getElementById("telefone-error");

    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    var telefoneRegex = /^\([1-9]{2}\)\s?[2-9][0-9]{3,4}\-[0-9]{4}$/;

    if (nome == "") {
        nomeError.textContent = "Por favor, insira um nome.";
        return false;
    }else {
        nomeError.textContent = "";
    }

    if (!emailRegex.test(email)) {
        emailError.textContent = "Por favor, insira um endereço de email válido.";
        return false;
    } else {
        emailError.textContent = "";
    }

    if (!telefoneRegex.test(telefone)) {
        telefoneError.textContent = "Por favor, insira um número de telefone no formato válido.";
        return false;
    } else {
        telefoneError.textContent = "";
    }

    return true;
}