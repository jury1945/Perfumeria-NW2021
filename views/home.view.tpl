<!-- Por cada producto se mostrara una cartita en el inicio de la pagina -->
 <link rel="stylesheet" href="public/css/basu.css" />
<section class="sec_galeria">
  <h2>Catálogo</h2>
</section>

<section class="infod">
  <p>Revisa nuestro catálogo de perfumes y productos de alta calidad.</p>
  <p id="p2">Podras revisar aqui tus perfumes preferidos</p>
</section>

<section class="row"> 
  <section class="textobasico">
    <h3><b>Masculino</b></h3>
  </section>
  {{foreach masculino}}
    <section class="col-sm-6 col-md-3 m-padding">
      <div class="card col-13 depth-2 m-padding">

        <span class="col-sm-12 center depth-1">
          <!-- Si existe imagen pequeña la muestra -->
          {{if urlthbprd}}
            <img src="{{urlthbprd}}" alt="{{codprd}} {{dscprd}}" class="imgthumb center"/>
          {{endif urlthbprd}}
        </span>


        <!-- Mostrando codigo interno y descripcion del producto -->
        <span class="col-112 col-12 center depth-1 m-padding card-desc">
          <span class="card-side">{{skuprd}}</span>
          <span class="col-12">{{dscprd}}</span>
        </span>

          <!-- Boton para añadir a la carretilla -->
          <span class="col-12 bold center m-padding">
            <a class="boxc" href="#modal-opened"  id="modal-closed">L{{prcprd}}</a>
                 <div class="modal-container" id="modal-opened">
  <div class="modal">

    <div class="modal__details">
      <h1 class="modal__title">MuseeDuParfum</h1>
      <p class="modal__description">Excelente eleccion</p>
    </div>
    <p class="modal__text">¿Desea agregarlo al carrito de compra?</p>


 <a href="index.php?page=addToCart&codprd={{codprd}}" class="l-padding btn btn-primary col-12 sendToCart"> <button  class="modal__btnt">Aceptar &rarr;</button></a>
 </br>
 </br>
 </br>
 <a href="#modal-closed"> <button  class="modal__btnt" class="l-padding btn btn-primary col-12"> <button  class="modal__btnt">Cancelar &rarr;</button></a>
   
   <a href="#modal-closed" class="link-2"></a>
 

  </div>
</div>
            </span>
        </span>

      </div>
    </section>
  {{endfor masculino}} 
</section>
</br>
</br>

<section class="row">
  <section class="textobasico">
    <h3><b>Femenino</b></h3>
  </section>
  {{foreach femenino}}
  <section class="col-sm-6 col-md-3 m-padding">
    <div class="card col-13 depth-2 m-padding">

      <span class="col-sm-12 center depth-1">
        <!-- Si existe imagen pequeña la muestra -->
        {{if urlthbprd}}
        <img src="{{urlthbprd}}" alt="{{codprd}} {{dscprd}}" class="imgthumb center" />
        {{endif urlthbprd}}
      </span>


      <!-- Mostrando codigo interno y descripcion del producto -->
      <span class="col-112 col-12 center depth-1 m-padding card-desc">
        <span class="card-side">{{skuprd}}</span>
        <span class="col-12">{{dscprd}}</span>
      </span>

      <!-- Boton para añadir a la carretilla -->
      <span class="col-12 bold center m-padding">
        <a href="index.php?page=addToCart&codprd={{codprd}}" class="l-padding btn btn-primary col-12 sendToCart"> L
          {{prcprd}}</a>
      </span>
      </span>

    </div>
  </section>
  {{endfor femenino}}
</section>
</br>
</br>



<script>

  /* Ruta que devuelva un archivo JSON al dar clic en sendToCart.
     Se manda por post el hipervinculo y en console sale lo que devuelve.
  */

  $().ready(function()
  {
    $(".sendToCart").click(function(e)
    {
      e.preventDefault();
      e.stopPropagation();

      $.post(
        $(this).attr("href"),
        function(data, success, xqXML)
        {
          console.log(data);

          /* Si cartAmount existe y es mayor que 0 */
          if(data.cartAmount && data.cartAmount > 0)
          {
            window.location.reload();
          }
        }
      )
    });

  });

</script>

<style>
  .sec_galeria{
      margin-top: 7rem;
  }

  .sec_galeria h2{
    font-size: 1.7rem;
  }

  .infod p{
    padding-top: 1rem;
    padding-bottom: 1rem;
    font-size: 1.5rem; 
  }

  .infod p#p2{
    padding-top: 0rem;
    margin-bottom: 1.5rem;
  }

  .textobasico{
    font-size: 0.9rem;
  }

  .card{
    position: relative;
  }

  .card-desc{
    height: 4em;
    overflow: hidden; /*scroll*/
  }

  .card-side{
      position: absolute;
      top:6em;
      left:1em;
      transform-origin: left top;
      transform: rotate(-90deg);
  }

  .l-padding{
    background-color: #fff;
    color: black;
  }

  .col-13{
    background-color: #fff;
  }

  .l-padding:hover{
    background-color: white;
    color: while;
  }

  .col-sm-12{
    background-color: white;
  }

  .col-112{
    background-color: white;
  }

  .sendToCart{
    text-decoration: none;
  }


</style>
