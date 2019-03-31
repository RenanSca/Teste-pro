<?php
ini_set('display_errors',1);
ini_set('display_startup_erros',1);
error_reporting(E_ALL);
//CONEXÃO
include_once("Conexao/index.php");

    // var_dump($_POST);
    // exit;
    //Recebendo dados
    $nome = $_POST['seu_nome'];
    $email = $_POST['email'];
    $telefone = $_POST['numero'];
    $especialidade = $_POST['especialidade'];
    $data = $_POST['data'];
    $periodo = $_POST['periodoConsulta'];



    //TESTANDO SE OS CAMPOS NÃO ESTÃO VAZIOS location.href='../index.html';
    if(!empty($nome) and !empty($especialidade))
            {

        $sql = "CALL sp_ins_consulta ('$nome','$email','$telefone','$especialidade','$data','$periodo')";

        if ($conn->query($sql) === TRUE) {
            echo "<script>alert('Consulta salva com sucesso!')
                </script>";//;
        } else {
            echo "<script>alert('Reveja os dados!')
                </script>";
        }
    }else{
        echo "<script>alert('Preencha todos os campos!')
        </script>";
    }

    $conn->close();

?>