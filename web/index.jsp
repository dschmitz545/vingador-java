<%-- 
    Document   : index
    Created on : Nov 9, 2020, 10:57:53 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Qual dos Vingadores é você?</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
        <script src="https://use.fontawesome.com/32c857d189.js"></script>
        <style>
            .control-radio{
                font-size: 18px;
                margin-left: 20px;
            }
            .radio-label{
                display: block;
            }
        </style>
        
    </head>
    <body>
        <section class="hero is-dark bold">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title is-1">
                        Qual dos Vingadores é você?
                    </h1>
                    <h3 class="subtitle is-3">
                        Responda as perguntas abaixo, e descubra qual <strong>vingador é você!</strong>
                    </h3>
                </div>
            </div>
        </section>
        <div class="container is-fluid">
            <form action="resultado" method="post">
                <table class="table is-bordered is-fullwidth">
                    <thead>
                        <tr>
                            <th>1. Quem é você em uma festa de amigos?</th>
                        </tr>
                        <tr>
                            <td is-justify-content-flex-start>
                                <div class="control-radio">
                                    <label class="radio-label">
                                        <input type="radio" name="answer1" value="1-a" required>
                                        A pessoa que controla a música e agita a festa.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer1" value="1-b" required>
                                        Alguém entre os que estão dançando.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer1" value="1-c" required>
                                        Está sempre perto da mesa de comida.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer1" value="1-d" required>
                                        Está em casa, longe da festa.
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>2. Em uma decisão difícil, com seus amigos, você:</th>
                        </tr>
                        <tr is-justify-content-flex-start>
                            <td is-justify-content-flex-start>
                                <div class="control-radio">
                                    <label class="radio-label">
                                        <input type="radio" name="answer2" value="2-a" required>
                                        Faz o que é certo, acima de tudo.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer2" value="2-b" required>
                                        Decide em conjunto e faz o que todos acharem melhor.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer2" value="2-c" required>
                                        Calcula as alternativas e mostra pra todo mundo onde há menos danos.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer2" value="2-d" required>
                                        Espera alguém decidir e vai na onda.
                                    </label>
                                </div>
                            </td>
                        <tr>
                            <th>3. Sua maior habilidade no meio da crise:</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="control-radio">
                                    <label class="radio-label">
                                        <input type="radio" name="answer3" value="3-a" required>
                                        Força.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer3" value="3-b" required>
                                        Lealdade.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer3" value="3-c" required>
                                        Pensamento lógico.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer3" value="3-d" required>
                                        Abordagem criativa.
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>4. Qual dessas frases se aplica mais a você?</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="control-radio">
                                    <label class="radio-label">
                                        <input type="radio" name="answer4" value="4-a" required>
                                        "Se eu tivesse oito horas para derrubar uma árvore, passaria seis afiando meu machado" (Abraham Lincoln)
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer4" value="4-b" required>
                                        "Mil vidas eu tivesse, mil vidas eu daria pela libertação da minha pátria" (Tiradentes)
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer4" value="4-c" required>
                                        "Lutar pelo amor é bom, mas alcançá-lo sem luta é melhor." (William Shakespeare)
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer4" value="4-d" required>
                                        "O verdadeiro homem mede a sua força quando se defronta com o obstáculo." (Antoine de Saint-Exupéry)
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>5. Como você faz para que os outros realizem uma tarefa?</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="control-radio">
                                    <label class="radio-label">
                                        <input type="radio" name="answer5" value="5-a" required>
                                        Cria um passo a passo para a realização da tarefa.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer5" value="5-b" required>
                                        Explica a tarefa e apresenta os motivos pelos quais deveriam fazer.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer5" value="5-c" required>
                                        Dá ordem de forma bem firme e direta.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer5" value="5-d" required>
                                        Faz primeiro e chama a seguirem o seu exemplo.
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>6. Um colega seu está fazendo algo errado para prejudicar alguém. Você:</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="control-radio">
                                    <label class="radio-label">
                                        <input type="radio" name="answer6" value="6-a" required>
                                        Monta um plano para expôr o que o colega está fazendo de errado.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer6" value="6-b" required>
                                        Apronta algo para que ele se dê mal.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer6" value="6-c" required>
                                        Conta para alguém que é autoridade sobre ele.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer6" value="6-d" required>
                                        Confronta ele para tirar satisfações.
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>7. Qual desses adjetivos as outras pessoas usariam pra te descrever melhor?</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="control-radio">
                                    <label class="radio-label">
                                        <input type="radio" name="answer7" value="7-a" required>
                                        Forte.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer7" value="7-b" required>
                                        Inteligente.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer7" value="7-c" required>
                                        Sem medo.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer7" value="7-d" required>
                                        Habilidoso/a.
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>8. Com qual personagem dos Simpsons você mais se identifica?</th>
                        </tr>
                        <tr>
                            <td>
                                <div class="control-radio">
                                    <label class="radio-label">
                                        <input type="radio" name="answer8" value="8-a" required>
                                        Homer.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer8" value="8-b" required>
                                        Marge.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer8" value="8-c" required>
                                        Bart.
                                    </label>
                                    <label class="radio-label">
                                        <input type="radio" name="answer8" value="8-d" required>
                                        Lisa.
                                    </label>
                                </div>
                            </td>
                        </tr>


                    </thead>

                </table>
                <p class="buttons">
                    <button class="button is-success">
                        <span class="icon is-small">
                            <i class="fa fa-check"></i>
                        </span>
                        <span>Save</span>
                    </button>
                </p>
            </form>
        </div>
    </body>
</html>
