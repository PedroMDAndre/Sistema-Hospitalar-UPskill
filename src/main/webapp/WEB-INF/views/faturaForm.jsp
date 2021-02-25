<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title>Centro Hospitalar UPskill</title>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
    crossorigin="anonymous"></script>


  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
  <script src="https://kit.fontawesome.com/6afe83edf7.js" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="style.css" />
  <link rel="icon" href="favicon.ico" type="image/x-icon">

</head>

<body>
  <div class="container">
    <div class="sidenav">
      <!-- menu da esquerda -->
      <img src="imagens\noun_centro_hospitalar_logo.svg" alt="logo" class="logo" />
      <div class="welcome_box">
        <p id="welcome">Olá de novo,</p>
        <p id="user_name">Pedro Romano</p>
        <p id="user_category">Funcionário</p>
      </div>
      <div class="sidenav_row">
        <button type="button" class="">
          <img src="imagens/noun_home.svg" /> Início
        </button>
        <button type="button" class="">
          <img src="imagens/noun_utentes.svg" /> Utentes
        </button>
        <button type="button" class="">
          <img src="imagens/noun_doctor.svg" /> Médicos
        </button>
        <button type="button" class="">
          <img src="imagens/noun_heart rate.svg" /> Consultas
        </button>
      </div>

      <div class="sidenav_row">
        <p id="acessos_rapidos">Acessos Rápidos</p>
        <button type="button" class="botao_acessos">
          <img src="imagens/noun_information.svg" /> Informações gerais
        </button>
        <button type="button" class="botao_acessos">
          <img src="imagens/noun_calendar.svg" /> Calendário de vagas
        </button>
        <button type="button" class="botao_acessos">
          <img src="imagens/noun_phone.svg" /> Contactos
        </button>
      </div>

      <div class="sidenav_row log_out_box">
        <img src="imagens/noun_upskill.png" alt="" id="upskill_logo" />
        <hr />
        <button type="button" class="">
          <img src="imagens/noun_logout.svg" /> Terminar Sessão
        </button>
      </div>
    </div>




    <div class="main">
      <!--Form da direita-->
      <div class="main">
        <div class="white_box">

            <img src="imagens\noun_centro_hospitalar_logo.svg" alt="logo" class="logo_small" />
            <h3 class="registo">
                Formulário Fatura
            </h3>
            <form class="registry-form" action="/registar" method="get">


                <div class="perfil-main-col">

                    <div class="perfil-row">
                        <div class="cell-row">
                            <label for="nomeUtente_id">Nome</label>
                            <input id="nomeUtente_id" type="text" class="form-input" name="nomeUtente" required
                                placeholder="Nome do Utente" />
                            <p class="msg-error">Nome inválido</p>

                        </div>


                          <div class="cell-row">
                            <label for="nrUtente_id">Nº de Utente</label>
                            <input id="nrUtente_id" type="text" class="form-input" name="nrUtente"
                                placeholder="Nº de Utente" />
                            <p class="msg-error">Número Invalido</p>
                        </div>
                    </div>

                    <div class="perfil-row">
                        
                        <div class="cell-row">
                            <label for="nifUtente_id">NIF</label>
                            <input id="nifUtente_id" type="text" class="form-input" name="nifUtente" required
                                placeholder="NIF do Utente" />
                            <p class="msg-error">NIF inválido</p>
                        </div>
                    

                        <div class="cell-row">
                            <label for="dataDeFatura_id">Data da Fatura</label>
                            <input id="dataDeFatura_id" type="date" class="form-input" name="dataDeFatura"
                                required>
                        </div>
                    </div>

                    <div class="perfil-row">
                        <div class="cell-row">
                            <label for="morada_id">Morada do Utente</label>
                            <input id="morada_id" type="text" class="form-input" name="morada"
                                placeholder="Morada do Utente" />
                        </div>
                    

                    
                        <div class="cell-row">
                            <label for="codigoPostal_id">Código Postal do Utente</label>
                            <input id="codigoPostal_id" type="text" class="form-input" name="codigoPostal"
                                placeholder="Código Postal do Utente" />
                        </div>
                        
                    </div>

                    <div class="perfil-row">
                        <div class="cell-row">
                            <label for="documento_id">Documento de Identificação</label>
                            <select id="documento_id" class="form-input" name="documento" required>
                                <option value="escolha uma opção" disabled selected>Escolha uma Opção</option>
                                <option value="BI">Bilhete de Identidade</option>
                                <option value="CC">Cartão de Cidadão</option>
                                <option value="Passaporte">Passaporte</option>
                            </select>
                        </div>
                        <div class="cell-row">
                            <label for="nrDocumento_id">Nº do Documento</label>
                            <input id="nrDocumento_id" type="text" class="form-input" name="nrDocumento" required
                                placeholder="Nº do documento selecionado" />
                        </div>
                    </div>

                    <div class="perfil-row">
                        <div class="cell-row cell-morada">
                            <label for="especialidade_id">Especialidade</label>
                            <select id="especialidade_id" class="big-form-input" name="especialidade" multiple>
                                <option value="especialidade" disabled selecte> Especialidade utilizada pelo utente</option>
                                <option value="AP">Anatomia Patológica</option>
                                <option value="AN">Anestesiologia</option>
                                <option value="ACV">Angiologia e Cirurgia Vascular</option>
                                <option value="CD">Cardiologia</option>
                                <option value="CC">Cirurgia Cardíaca</option>
                                <option value="CCT">Cirurgia Cardiotorácica</option>
                                <option value="CG">Cirurgia Geral</option>
                                <option value="CMF">Cirurgia Maxilo-Facial</option>
                                <option value="CPD">Cirurgia Pediátrica</option>
                                <option value="CPR">Cirurgia Plástica Reco. e Est.</option>
                                <option value="CT">Cirurgia Torácica</option>
                                <option value="DV">Dermato-Venereologia</option>
                                <option value="DI">Doenças Infecciosas</option>
                                <option value="EN">Endocrinologia e Nutrição</option>
                                <option value="EST">Estomatologia</option>
                                <option value="FC">Farmacologia Clínica</option>
                                <option value="GTL"> Gastrenterologia</option>
                                <option value="GM">Genética Médica</option>
                                <option value="GO">Ginecologia/Obstetrícia</option>
                                <option value="HC">Hematologia Clínica</option>
                                <option value="IA">Imunoalergologia</option>
                                <option value="IH">Imunohemoterapia</option>
                                <option value="MD">Medicina Desportiva</option>
                                <option value="MT">Medicina do Trabalho</option>
                                <option value="MFR">Medicina Física e de Reabilitação</option>
                                <option value="MGF">Medicina Geral e Familiar</option>
                                <option value="MI">Medicina Intensiva</option>
                                <option value="MIT">Medicina Interna</option>
                                <option value="ML">Medicina Legal</option>
                                <option value="MN">Medicina Nuclear</option>
                                <option value="MT">Medicina Tropical</option>
                                <option value="NFL">Nefrologia</option>
                                <option value="NC">Neurocirurgia</option>
                                <option value="NL">Neurologia</option>
                                <option value="NR">Neurorradiologia</option>
                                <option value="OFT">Oftalmologia</option>
                                <option value="OM">Oncologia Médica</option>
                                <option value="OR">Ortopedia</option>
                                <option value="OTR">Otorrinolaringologia</option>
                                <option value="PC">Patologia Clínica</option>
                                <option value="PED">Pediatria</option>
                                <option value="PNE">Pneumologia</option>
                                <option value="PSI">Psiquiatria</option>
                                <option value="PIA">Psiquiatria da Infância e da Adolescência</option>
                                <option value="RAD">Radiologia</option>
                                <option value="RAO">Radioncologia</option>
                                <option value="RMT">Reumatologia</option>
                                <option value="SP">Saúde Pública</option>
                                <option value="URL">Urologia</option>
                                
                    
                            </select>
                        </div>
                        
                        </div>
                        <p class="help-form">Utilize "ctrl" (Windows) ou "command" (Mac) para selecionar várias opções.</p>

                        <div class="perfil-row">
                        <div class="cell-row cell-morada">
                            <label for="serviço_id">Serviço</label>
                            <select id="serviço_id" class="big-form-input" name="serviço" multiple>
                                <option value="serviço" disabled selected>Serviço utilizado pelo utente</option>
                                <option value="AC">Análises Clínicas</option>
                                <option value="CIR">Cirurgia</option>
                                <option value="CSL">Consulta</option> 
                                <option value="ED">Exames Diagnóstico</option>
                                <option value="INT">Internamento</option>                             
                            </select>
                        </div>
                    </div>
                    <p class="help-form">Utilize "ctrl" (Windows) ou "command" (Mac) para selecionar várias opções.</p>

                    <div class="perfil-row">
                        <div class="cell-row">
                            <label for="valorfat_id">Valor Total</label>
                            <input id="valorfat_id" type="text" class="form-input" name="valorfat"
                                placeholder="Valor Total da Fatura" />
                        </div>                                                        
                    </div>
                   
                <div class="margin-form">
                <button type="submit" class="btn btn-blue" value="criarConta">Criar Fatura</button>
                </div>
                
            </form>

        </div>
    </div>
</body>

</html>