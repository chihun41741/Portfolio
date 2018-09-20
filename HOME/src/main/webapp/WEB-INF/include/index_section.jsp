<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<section class="index_section">
			<article class="section_slider">
			<div id="carouselExampleIndicators" class="carousel slide"data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/imgs/Room1.png" alt="첫번째 슬라이드">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/imgs/Room2.png" alt="두번째 슬라이드">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/imgs/Room3.png" alt="세번째 슬라이드">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/imgs/Room5.png" alt="다섯번째 슬라이드">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"role="button" data-slide="prev"> 
				<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
				<span class="sr-only">이전</span>
				</a> 
				<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"> 
				<span class="carousel-control-next-icon" aria-hidden="true"></span> 
				<span class="sr-only">다음</span>
				</a>
			</div>
			</article>
		<div class="clear"></div>
		<br/>
		<br/>
		<article class="section_article">
			<h2>조건 검색</h2>
			<p>다양한 조건으로 검색하세요!!</p>
			<div class="clear"></div>
			
			<div class="thumbnail_img">
					<a href="#" class="thumbnail"><img src="${pageContext.request.contextPath}/resources/imgs/article_img1.JPG" alt="본문이미지1"></a>
					<a href="#" class="thumbnail"><img src="${pageContext.request.contextPath}/resources/imgs/article_img2.JPG" alt="본문이미지2"></a>
					<a href="#" class="thumbnail"><img src="${pageContext.request.contextPath}/resources/imgs/article_img3.JPG" alt="본문이미지3"></a>
			</div>
		</article>
		</section>
		<div class="clear"></div>