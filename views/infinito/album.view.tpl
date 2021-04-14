<!-- Por cada producto se mostrara una cartita en el inicio de la pagina -->
<section>
  <h1>Mis Favoritos</h1>
</section>
<br/>
<br/>

<section class="cards row">
  <h2>Masculino</h2>
  {{foreach masculino}}
    <section class="col-sm-6 col-md-3 m-padding">
      <div class="card col-13 depth-2 m-padding">

        <span class="col-sm-12 center depth-1">
          <!-- Si existe imagen pequeña la muestra -->
          {{if urlthbprd}}
            <img src="{{urlthbprd}}" alt="{{codprd}} {{dscprd}}" class="imgthumb center {{ifnot hasInsignia}} NoInsignia {{endifnot hasInsignia}}"/>
          {{endif urlthbprd}}
        </span>

        <!-- Mostrando codigo interno y descripcion del producto -->
        <span class="col-12 center depth-1 m-padding card-desc {{ifnot hasInsignia}} NoInsignia {{endifnot hasInsignia}}"> 
           <span class="card-side">{{skuprd}}</span>
           <span class="col-12">{{dscprd}}</span> 
        </span>

        <!-- Mostrando cantidad disponible del producto  -->
        <span class="col-12 center depth-1 m-padding {{ifnot hasInsignia}} NoInsignia {{endifnot hasInsignia}}">
          <span class="col-6 m-padding">Cantidad</span>
          <span class="col-6 right m-padding">{{cantprd}}</span>

      </div>
    </section> 
  {{endfor masculino}} 
</section> 
</br>
</br> 

<section class="cards row">
  <h2>femenino</h2>
  {{foreach femenino}}
  <section class="col-12 col-sm-6 col-md-3 m-padding">
    <div class="card col-12 depth-2 m-padding">

      <span class="col-sm-12 center depth-1">
        <!-- Si existe imagen pequeña la muestra -->
        {{if urlthbprd}}
        <img src="{{urlthbprd}}" alt="{{codprd}} {{dscprd}}"
          class="imgthumb center {{ifnot hasInsignia}} NoInsignia {{endifnot hasInsignia}}" />
        {{endif urlthbprd}}
      </span>

      <!-- Mostrando codigo interno y descripcion del producto -->
      <span class="col-12 center depth-1 m-padding card-desc {{ifnot hasInsignia}} NoInsignia {{endifnot hasInsignia}}">
        <span class="card-side">{{skuprd}}</span>
        <span class="col-12">{{dscprd}}</span>
      </span>

      <!-- Mostrando cantidad disponible del producto  -->
      <span class="col-12 center depth-1 m-padding {{ifnot hasInsignia}} NoInsignia {{endifnot hasInsignia}}">
        <span class="col-6 m-padding">Cantidad</span>
        <span class="col-6 right m-padding">{{cantprd}}</span>

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

  .NoInsignia{
    opacity: 0.3;
  }
</style>