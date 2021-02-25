<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Centro Hospitalar UPskill</title>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
            crossorigin="anonymous"></script>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <script src="https://kit.fontawesome.com/6afe83edf7.js" crossorigin="anonymous"></script>
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="style.css"/>


</head>

<body>
<div class="container">
    <div class="sidenav">
        <!-- menu da esquerda -->
        <img src="imagens\noun_centro_hospitalar_logo.svg" alt="logo" class="logo"/>
        <div class="welcome_box">
            <div class="perfil-row">
                <div class="col-4 user_photo">
                    <img src="imagens/doctor_photo.png" alt="user_photography"/>
                </div>
                <div class="col user_info">
                    <p id="welcome">Bem-vindo</p>
                    <p id="user_name">Dr. Miguel Pereira</p>
                    <p id="user_category">Médico</p>
                </div>
            </div>
            <div>
                <button type="button" class="btn-green btn-w70"> Ver Perfil</button>
            </div>
        </div>
        <div class="sidenav_row">
            <button type="button" class="">
                <img src="imagens/noun_home.svg"/> Início
            </button>
            <button type="button" class="">
                <img src="imagens/noun_utentes.svg"/> Utentes
            </button>

            <button type="button" class="">
                <img src="imagens/noun_heart rate.svg"/> Consultas
            </button>
        </div>

        <div class="sidenav_row">
            <p id="acessos_rapidos">Acessos Rápidos</p>
            <button type="button" class="botao_acessos">
                <img src="imagens/noun_information.svg"/> Informações gerais
            </button>
            <button type="button" class="botao_acessos">
                <img src="imagens/noun_calendar.svg"/> Calendário de vagas
            </button>
            <button type="button" class="botao_acessos">
                <img src="imagens/noun_phone.svg"/> Contactos
            </button>
        </div>

        <div class="sidenav_row log_out_box">
            <img src="imagens/noun_upskill.png" alt="" id="upskill_logo"/>
            <hr/>
            <button type="button" class="">
                <img src="imagens/noun_logout.svg"/> Terminar Sessão
            </button>
        </div>
    </div>


    <div class="main">
        <!--menu da direita-->
        <div class="row first_row">
            <div class="col-4">
                <img src="imagens/draw_doctor.svg" alt="" class="icon1"/>
            </div>
            <div class="col-8 display_time">
                <div class="time_box">
                        <span id="hour">
                            <i class="fas fa-clock"></i>
                            10:00
                        </span>
                </div>
                <div class="date_box">
                        <span id="date">
                            Quarta-feira 25 Fevereiro 2021
                        </span>
                </div>
            </div>
        </div>

        <div class="row middle-row3">

            <div class="col-3">
                <div class="card_box2">
                    <div class="card2">
                        <div class="card-body2">
                            <h2>
                                <span>14</span>
                            </h2>
                            <h3>Pacientes agendados</h3>
                            <i class="far fa-calendar-alt "></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="card_box2">
                    <div class="card2">
                        <div class="card-body2">
                            <h2>
                                <span>1</span>
                            </h2>
                            <h3>Pacientes confirmados</h3>
                            <i class="fas fa-calendar-check "></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="card_box2">
                    <div class="card2">
                        <div class="card-body2">
                            <h2>
                                <span>0</span>
                            </h2>
                            <h3>Pacientes atendidos
                                <i class="fas fa-user-check "></i>

                            </h3>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="card_box2">
                    <div class="card2">
                        <div class="card-body2">
                            <h2>
                                <span>0</span>
                            </h2>
                            <h3>Pacientes que faltaram
                            </h3>
                            <i class="fas fa-calendar-times "></i>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="row middle-row">
            <div class="col-7 data_appt">

                <div class="row">
                    <div class="next_appt">
                        <span class="text_next_appt">Próxima consulta</span>
                        <p class="text_next_appt2">Consulte a sua próxima consulta e paciente</p>
                    </div>
                </div>

                <div class="row">

                    <div class="col-4 next_appt_time">
                        <span class="time_box2">10:00</span>
                        <p class="date_box2">Sexta-feira</p>
                        <p class="date_box2">26 Fevereiro 2021</p>
                    </div>

                    <div class="col-8">
                        <div class="perfil-row">
                            <div class="col-3 user_photo">
                                <img src="imagens/next_patient_photo.png" alt="patient_id_photo"/>
                            </div>
                            <div class="col user_info2">
                                <span id="next_patient_name">Alice Antunes</span>
                                <p id="patient_age">Idade: 70 anos</p>
                                <span id="first_appt_ask">Primeira Consulta: SIM </span>
                                <p id="first_appt_ask">Estado da Consulta: CONFIRMADA </p>
                            </div>
                        </div>
                        <div class="row">
                            <button type="button" class="btn-blue btn-w80"> Consultar Perfil Paciente
                            </button>
                        </div>
                    </div>

                </div>


            </div>

            <div class="col-4 appt_options">
                <div>
                    <div class="but-begin_appt">
                        <button type="button" class="btn-green btn-w70"> Iniciar Consulta</button>
                    </div>
                    <div class="but-change_appt">
                        <button type="button" class="btn-green btn-w70"> Alterar data</button>
                    </div>
                    <div class="but-cancel_appt">
                        <button type="button" class="btn-green btn-w70"> Cancelar Consulta</button>
                    </div>
                    <div class="but-end_appt">
                        <button type="button" class="btn-green btn-w70"> Terminar Consulta</button>
                    </div>
                </div>

            </div>


        </div>
        <div class="row middle-row ">
            <div class="col-2">
                <img src="imagens/waiting.svg" alt="" class="icon2"/>
            </div>
            <div class="col-6 data_appt">
                <div class="row">
                    <span class="text_next_appt">Lista de pacientes em espera</span>
                </div>
                <div class="row">
                    <button type="button" class="btn-blue btn-w80"> Ver Lista de espera</button>
                </div>
            </div>

        </div>

    </div>
</div>
</div>
</body>
</html>