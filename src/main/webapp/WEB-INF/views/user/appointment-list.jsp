<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../components/head.jsp" %>
</head>

<body>

<c:if test="${user_logged.getAccount().equals('Médico')}">
    <%@ include file="../components/sidenav-medico.jsp" %>
</c:if>
<c:if test="${user_logged.getAccount().equals('Recepcionista')}">
    <%@ include file="../components/sidenav-receptionist.jsp" %>
</c:if>
<c:if test="${user_logged.getAccount().equals('Utente')}">
    <%@ include file="../components/sidenav-utente.jsp" %>
</c:if>


<div class="main">
    <!--menu da direita-->

    <div class="white_box2 box-align-left">

        <div class="perfil-row">
            <img src="/imagens/draw_checking.svg" alt="patientsPage" class="img-fill-form"/>
            <h3 class="consultas_title">Consultas</h3>
        </div>

        <div class="row">
            <div class=search_options>
                <form action="${userTypeURL}" method="post">
                    <div class="middle-row">
                        <div class="search-container">

                            <input id="data_id" type="date" class="form-input sm" placeholder="Data" name="date">

                            <c:if
                                    test="${user_logged.getAccount().equals('Médico') ||  user_logged.getAccount().equals('Recepcionista')}">
                                <input type="text" class="form-input sm" placeholder="Nome do Utente"
                                       name="patientName">
                            </c:if>

                            <c:if
                                    test="${user_logged.getAccount().equals('Utente') ||  user_logged.getAccount().equals('Recepcionista')}">
                                <select id="speciality_id" class="form-input sm" name="specialityName">
                                    <option value="" disabled selected>Especialidade</option>
                                    <!-- For -->
                                    <c:forEach var="speciality" items="${specialities}">
                                        <option value="${speciality.getName()}">${speciality.getName()}</option>
                                    </c:forEach>
                                </select>
                                <input type="text" class="form-input sm" placeholder="Nome do Médico"
                                       name="doctorName">
                            </c:if>
                            <select id="appointment-state_id" class="form-input sm" name="stateAppointment">
                                <option value="" disabled selected>Estado da consulta</option>
                                <option value="1001">Consultas não Realizadas</option>
                                <option value="1002">Consultas Desmarcadas</option>


                                <!-- For -->
                                <c:forEach var="state" items="${appointmentStates}">
                                    <option value="${state.getStateNr()}"> ${state.getDescription()}</option>
                                </c:forEach>
                            </select>
                            <c:if
                                    test="${user_logged.getAccount().equals('Utente') ||  user_logged.getAccount().equals('Recepcionista')}">
                                <select id="invoice-state_id" class="form-input sm" name="stateInvoice">
                                    <option value="" disabled selected>Estado da faturação</option>
                                    <!-- For -->
                                    <c:forEach var="state" items="${invoiceStates}">
                                        <option value="${state.getStateNr()}"> ${state.getDescription()}</option>
                                    </c:forEach>
                                </select>
                            </c:if>

                            <button class="btn-search2" type="submit">Pesquisar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>


        <div class="row">

            <section class="content-area middle-row">
                <table class="table">

                    <thead>
                    <tr class="appointment-table-title">
                        <th>Data</th>
                        <th>Hora</th>
                        <c:if
                                test="${user_logged.getAccount().equals('Médico') ||  user_logged.getAccount().equals('Recepcionista')}">
                            <th>Utente</th>
                        </c:if>
                        <c:if
                                test="${user_logged.getAccount().equals('Utente') ||  user_logged.getAccount().equals('Recepcionista')}">
                            <th>Especialidade</th>
                            <th>Médico</th>
                        </c:if>
                        <th>Estado</th>
                        <th><i class="fas fa-ellipsis-h"></i></th>
                    </tr>
                    </thead>
                    <tbody>

                    <!-- For -->
                    <c:forEach var="appointment" items="${appointments}">
                        <tr class="appointment-table-details">
                            <td>${appointment.getSlot().getDateStr()}</td>
                            <td>${appointment.getSlot().getTimeBegin()}</td>
                            <c:if test="${user_logged.getAccount().equals('Médico')}">
                                <td>${appointment.getPatient().getName()}</td>
                            </c:if>

                            <c:if test="${user_logged.getAccount().equals('Recepcionista')}">
                                <td>${appointment.getPatient().getFirstAndLastName()}</td>
                            </c:if>
                            <c:if test="${user_logged.getAccount().equals('Utente') || user_logged.getAccount().equals('Recepcionista')}">
                                <td>${appointment.getSlot().getDoctor().getSpeciality().getName()}</td>
                                <td> ${appointment.getSlot().getDoctor().getTitleAndName()}</td>
                            </c:if>
                            <td>${appointment.getAppointmentStatusStr()}</td>

                            <td><a
                                    href="/${userType}/appointment-details/${tempo}/${appointment.getAppointmentId()}"
                                    class="btn btn-link">Ver
                                mais
                            </a></td>
                        </tr>
                        <c:if test="${user_logged.getAccount().equals('Utente') || user_logged.getAccount().equals('Recepcionista')}">
                            <c:if test="${appointment.hasInvoice()}">
                                <tr class="appointment-table-details">
                                    <td style='border:none;'></td>
                                    <td style='border:none;'></td>
                                    <td class="specialTable1" style='border:none;'> Facturação: <span
                                            class="specialTable2"> ${appointment.getInvoice().getInvoiceStateStr()}</span>
                                    </td>
                                    <c:if test="${user_logged.getAccount().equals('Recepcionista')}">
                                        <c:if test="${!appointment.getInvoice().isPaid()}">
                                            <td style='border:none;'><a type="button"
                                                                        href="/patient-receptionist/invoice/${appointment.getInvoice().getInvoiceId()}"
                                                                        class="btn btn-green btn-w65"> Pagar</a></td>
                                        </c:if>
                                    </c:if>
                                </tr>
                            </c:if>
                        </c:if>

                    </c:forEach>

                    </tbody>
                </table>

            </section>

        </div>
    </div>
</div>
</body>

</html>