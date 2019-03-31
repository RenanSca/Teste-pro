<?php
ini_set('display_erros',1);
//CONEXÃO
include_once("Conexao/index.php");
try{
    //Recebendo dados
	$nome = $_POST['seu_nome'];
	$email = $_POST['email'];
    $telefone = $_POST['numero'];
	$especialidade = $_POST['especialidade'];
	$data = $_POST['data'];

    if(!empty($nome) and !empty($especialidade))
        {
             //CHAMANDO A PROCEDURE
        $sql = "call sp_ins_consulta(:nome,:email,:telefone,:especialidade,:data)";
        $cadastrarConsulta = $conn->prepare($sql);

            //INSERE OS DADOS
            $cadastrarConsulta->bindValue(':nome',$nome);
            $cadastrarConsulta->bindValue(':email',$email);
            $cadastrarConsulta->bindValue(':telefone', $telefone);
            $cadastrarConsulta->bindValue(':especialidade', $especialidade);
            $cadastrarConsulta->bindValue(':data', $data);
            //EXECUTA O UPDATE
            $results = $cadastrarConsulta->execute();

            if($results > 0){
                echo "<script>alert('Consulta salva com sucesso!')
                </script>";//location.href='../index.html';
            }else{
                echo "<script>alert('Reveja os dados!')
                </script>";//location.href='../index.html';
            }
            
        }
        else{
            echo "<script>alert('Preencha todos os campos!')
            </script>";
        }
    }catch(PDOException $e){
            echo 'Mensagem de erro: '.$e->getMessage()."<br>";
            echo 'Nome do arquivo: '.$e->getFile()."<br>";
            echo 'Linha: '.$e->getLine()."<br>";
        }
?>