<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="sidenav">
    <!-- menu da esquerda MEDICO-->
    <img src="imagens/noun_centro_hospitalar_logo.svg" alt="logo" class="logo"/>

    <div class="welcome_box">
        <div class="perfil-row">
            <div class="col-4 user_photo">
                <img src="/uploaded_images/${user_logged.getPhotoURL()}" alt="user_photography"/>
            </div>
            <div class="col user_info">
                <p id="welcome">Bem-vindo</p>
                <a id="user_name" href="/user">${user_logged.getFirstAndLastName()}</a>
                <p id="user_category">${user_logged.getAccount()}</p>
            </div>
        </div>
        <div>
            <a type="button" href="/user" class="btn-green btn-w70"> Ver Perfil </a>
        </div>
    </div>


    <div class="panel-scroll">
        <div class="sidenav_row">
            <a href="/doctor-inicio" class="botao_acessos">
                <img src="imagens/noun_home.svg"/> Início
            </a>
            <a href="/lista_utentes_doctor" class="botao_acessos">
                <img src="imagens/noun_utentes.svg" /> Utentes
            </a>
            <a href="/lista_medicos_doctor_patient" class="botao_acessos">
                <img src="imagens/noun_utentes.svg" /> Médicos
            </a>
            <a href="/consultas_doctor" class="botao_acessos">
                <img src="imagens/noun_heart rate.svg"/> Consultas
            </a>
        </div>

        <div class="sidenav_row">
            <p id="acessos_rapidos">Acessos Rápidos</p>
            <a type="button" href="informacoesGerais" class="botao_acessos">
                <img src="imagens/noun_information.svg" /> Informações gerais
            </a>
            <button type="button" class="botao_acessos">
                <img src="imagens/noun_calendar.svg" /> Calendário de vagas
            </button>
            <a type="button" href="contactos" class="botao_acessos">
                <img src="imagens/noun_phone.svg" /> Contactos
            </a>
        </div>
    </div>

    <div class="sidenav_row log_out_box">
        <img src="imagens/noun_upskill.png" alt="" id="upskill_logo"/>
        <hr/>
        <button type="button" class="">
            <img src="imagens/noun_logout.svg"/> Terminar Sessão
        </button>
    </div>
</div>