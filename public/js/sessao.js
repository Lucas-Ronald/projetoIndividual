// sessão
function validarSessao() {
  // Função para validar a sessão e exibir o nome de usuário
  var email = sessionStorage.EMAIL_USUARIO;
  var nome = sessionStorage.NOME_USUARIO;
  var b_usuario = document.getElementById("b_usuario");

  if (email != null && nome != null) {
    b_usuario.innerHTML = nome;
  } else {
    // Redirecionar para a página de login se não houver sessão válida
    window.location = "../login.html";
  }
}
