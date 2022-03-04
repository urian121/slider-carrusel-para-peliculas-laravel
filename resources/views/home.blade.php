<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Slider de Peliculas</title>
        <link type="text/css" rel="shortcut icon" href="{{ asset('img/logo.jpg') }}"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css"> 
        <link rel="stylesheet" href="{{ asset('css/slider.css') }}">
        <style>
          h1{
            font-weight: 800;
            text-align: center;
          }
        </style>
    </head>
    <body>
        
<h1>SLIDER - CARRUSEL DE PELICULAS</h1>

@if ($peliculas->count())
<div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <div id="news-slider" class="owl-carousel">
        
      @foreach ($peliculas as $pelicula)  
        <div class="post-slide">
          <div class="post-img">
            <img src="/fotosPeliculas/{{ $pelicula->id }}/{{ $pelicula->foto }}" alt="Foto Pelicula">
            <a href="#" class="over-layer"><i class="fa fa-link"></i></a>
          </div>
          <div class="post-content">
            <h3 class="post-title">
              <a href="#">{{ $pelicula->titulo }}</a>
            </h3>
            <p class="post-description">
              @if (strlen($pelicula->descripcion) >160)
              {{ substr ( $pelicula->descripcion, 0, 160) }} ...
              @else
              {{ $pelicula->descripcion }}
              @endif 
            </p>
            <p>
                @for ($i = 1; $i <=$pelicula->puntos; $i++)
                  <i class="zmdi zmdi-star zmdi-hc-lg" style="color: #f5c518"></i>
                @endfor

                @for ($a = 1; $a <= (10 - $pelicula->puntos); $a++)
                  <i class="zmdi zmdi-star-outline zmdi-hc-lg"></i> 
                @endfor
            </p>
            <span class="post-date"><i class="fa fa-clock-o"></i>
              {{ $pelicula->year }}
            </span>
            <a href="#" class="read-more">Ver Pelicula</a>
          </div>
        </div>
      @endforeach
      </div>
    </div>
  </div>
</div>

@else
  <h2>No hay Peliculas</h2>        
@endif


<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script>
<script>
$(function() {
    $("#news-slider").owlCarousel({
        items :4,
        itemsDesktop:[1199,3],
        itemsDesktopSmall:[980,2],
        itemsMobile : [600,1],
        navigation:true,
        navigationText:["",""],
        pagination:true,
        autoPlay:true
    });
});
        </script>
    </body>
</html>
