<!DOCTYPE html>
<html lang="en">

<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="components/head.jsp" %>
</head>

<body>
	<%@ include file="components/sidenav-main.jsp" %>

		<div class="main">
			<!--menu da direita-->
			<div class="row first_row">
				<div class="col-4">
					<img src="imagens/noun_icon_01.svg" alt="" class="icon1" />
				</div>
				<div class="col-8 intro">
					<h1>CUIDE DE SI E DOS SEUS.</h1>
					<p id="texto-intro">
						O Centro Hospitalar UPskill inspira-se nos seus clientes para
						estar na vanguarda na proteção das famílias. Estamos mais
						inovadores na prestação de cuidados de saúde, mais próximos e mais
						ágeis.
					</p>
				</div>
			</div>
			
			<div id="vista_geral">
				VISTA GERAL
			</div>

			<div class="row middle-row">
				<div class="card_box">
					<div class="card">
						<div class="card-body">
							<img src="imagens/noun_wait.svg" class="wait_list" alt="..." />
							<h5 class="utentes"><span id="num_utentes">4</span> UTENTES</h5>
							<p class="linha_1">A AGUARDAR CONSULTAS</p>
							<p class="linha_2">
								<span id=num_atrasados>2</span> utentes estão atrasados
							</p>
							<a href="#" class="btn btn-button">VER LISTA DE ESPERA</a>
						</div>
						<div class="horizontal-border"></div>
					</div>
				</div>


				<div class="card_box">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">CHECK-IN</h5>
							<p class="card-text">
								Introduza o numero de consulta
							</p>
							<input type="text" id="num_consulta" placeholder="Nº de Consulta">
							<a href="#" class="btn btn-button btn-2">EFETUAR CHECKIN > </a>
						</div>
						<div class="horizontal-border"></div>
					</div>
				</div>
			</div>

			<div class="row last-row">

				<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">

					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="imagens/noun_news2.png" class="d-block w-100" alt="..." />
						</div>
						<div class="carousel-item">
							<img src="imagens/noun_newssns.png" class="d-block w-100" alt="..." />
						</div>
						<div class="carousel-item">
							<img src="'imagens/noun_news2.png'" class="d-block w-100" alt="..." />
						</div>
					</div>

					<button class="carousel-control-prev seta" type="button" data-bs-target="#carouselExampleControls"
						data-bs-slide="prev">
						<i class="fas fa-less-than simbolo_seta"></i>
					</button>

					<button class="carousel-control-next seta" type="button" data-bs-target="#carouselExampleControls"
						data-bs-slide="next">
						<i class="fas fa-greater-than simbolo_seta"></i>
					</button>

				</div>

			</div>
		</div>

</body>

</html>