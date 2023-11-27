<%-- 
    Document   : envioMapa
    Created on : 6 oct. 2023, 23:45:15
    Author     : samir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mapa</title>
        <%@include file="referencias.jsp" %>
    </head>
    <body style="background-color:#C6C8CD;">

        <!-- Aqui va el menu -->
        <%@include file="header.jsp" %>
        <div class="container " style="margin-top: 6rem;">
            <div class="row justify-content-center">
                <div class="col-8 text-center">
                    <h1>Direccion de envio</h1>
                </div>
                <div class="col-10 container">
                    <div class="row justify-content-center">
                        <div class="col-1">
                            <input type="hidden" id="txtlat" name="latitud" value="0">
                            <input type="hidden" id="txtlng" name="longitud" value="0">
                            <label class="align-middle" for="direccion"><b>Direccion</b></label>
                        </div>
                        <div class="col-8">
                            <input type="text" class="form-control" id="direccion" placeholder="Ingrese su direccion aqui">    
                        </div>
                        <div class="col-3">
                            <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" id="btnConfirmarEnvio" class="btn btn-primary" style="background-color: #8ea7a8;">Confirmar direccion</button>
                        </div>
                        <div class="col-12 container  " style="margin-top: 1rem;">
                            <div class="row justify-content-center">
                                <div style="width: 85%; height:400px;" id="map"></div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="exampleModalLabel">Pago Con Tarjeta</h1>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!--<div class="embed-responsive ">
                        <iframe class="embed-responsive-item" src="/pagoTarjeta" ></iframe>
                    </div>-->
                    <html>
                    <head>
                    <title>Pago con Tarjeta</title>
                    <style>
                         body {
        background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
        font-family: 'Quicksand', sans-serif;
    }
                        
                        .container2 {
                        max-width: 400px;
                        margin: 20px auto;
                        padding: 20px;
                        background-color: white;
                        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                        }
                        
                        h2 {
                        text-align: center;
                        margin-top: 0;
                        color: #333;
                        }
                        
                        form {
                        margin-top: 20px;
                        }
                        
                        label {
                        display: block;
                        margin-bottom: 5px;
                        color: #333;
                        }
                        
                        input[type="text"],
                        input[type="tel"],
                        input[type="email"],
                        input[type="number"],
                        input[type="password"] {
                        width: 100%;
                        height: 30px;
                        padding: 5px;
                        border: 1px solid #ddd;
                        border-radius: 4px;
                        margin-bottom: 10px;
                        }
                        
                        input[type="text"]:focus,
                        input[type="tel"]:focus,
                        input[type="email"]:focus,
                        input[type="number"]:focus,
                        input[type="password"]:focus {
                        outline: none;
                        border-color: #4CAF50;
                        }
                        
                        .card-container {
                        position: relative;
                        width: 100%;
                        height: 200px;
                        background-color: #f9f9f9;
                        border-radius: 4px;
                        margin-bottom: 10px;
                        }
                        
                        .card-type {
                        position: absolute;
                        top: 10px;
                        left: 10px;
                        font-size: 18px;
                        color: #999;
                        }
                        
                        .card-number {
                        position: absolute;
                        bottom: 10px;
                        left: 10px;
                        font-size: 18px;
                        color: #333;
                        }
                        
                        .card-details {
                        display: flex;
                        justify-content: space-between;
                        margin-bottom: 10px;
                        }
                        
                        .expiry-date,
                        .cvv {
                        flex-basis: 48%;
                        }
                        
                        .btn {
                        padding: 10px 20px;
                        background-color: #0d6efd;
                        color: white;
                        border: none;
                        border-radius: 4px;
                        cursor: pointer;
                        font-size: 16px;
                        transition: background-color 0.3s ease;
                        }
                        
                        .btn:hover {
                        background-color: #45a049;
                        }
                    </style>
                    </head>
                    
                    <body>
                    <div class="container container2">
                        
                        <form>
                        <label for="cardholder">Titular de la Tarjeta</label>
                        <input type="text" id="cardholder" placeholder="Nombre Completo" required>

                        <label for="cardnumber">Número de Tarjeta</label>
                        <div class="card-container">
                            <span class="card-type">VISA</span>
                            <span class="card-number">**** **** **** 1234</span>
                        </div>
                        <label for="cardholder">Numero de tarjeta</label>
                        <input type="text" id="cardholder" placeholder="Ingrese tarjeta" required>    
                        <div class="card-details">
                            <div class="expiry-date">
                            <label for="expiry">Fecha de Vencimiento</label>
                            <input type="text" id="expiry" placeholder="MM/YY" required>
                            </div>
                            <div class="cvv">
                            <label for="cvv">CVV</label>
                            <input type="password" id="cvv" placeholder="CVV" required>
                            </div>
                        </div>
                        
                        <a href="pedidoCliente.jsp" class="btn">Pagar</a>
                        </form>
                    </div>
                    </body>
                    </html>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div>
          <br><br><br><br><br><br>
          <%@include file="footer.jsp" %>
        <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-core.js"></script>
        <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-service.js"></script>
        <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-ui.js"></script>
        <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-mapevents.js"></script>

        <script type="text/javascript">
            var lastMarker;
            var romeMarker;

            var coordenadas;
        </script>
        <script type="text/javascript">


            /**
             * Adds a polygon to the map
             *
             * param  {H.Map} map      A HERE Map instance within the application
             */
            function agregarMarker(evt) {
                var coord = map.screenToGeo(evt.currentPointer.viewportX,
                    evt.currentPointer.viewportY);
        
                if (romeMarker != null) {
                    map.removeObject(romeMarker);
        
                }
                romeMarker = new H.map.Marker({ lat: coord.lat, lng: coord.lng });
                romeMarker.setData('Hola');
        
                document.getElementById('txtlat').value = coord.lat;
                document.getElementById('txtlng').value = coord.lng;
        
                map.addObject(romeMarker);
        
        
            };
        
            function addPolygonToMap(map) {
        
                var style = {
                    strokeColor: '#829',
                    lineWidth: 8
                };
        
                var lineString = new H.map.Polygon(new H.geo.LineString(
                    [-12.007803, -77.017874, 210,
                    -11.992739, -77.017338, 297,
                    -11.99137, -76.998767, 405,
                    -11.999345, -76.994361, 406,
                    -12.009978, -76.996214, 262,
                    -12.017791, -77.005397, 210,
                    -12.007803, -77.017874, 210]
                ), { style, style });
        
        
                lineString.setData('Polygon');
                var container = new H.map.Group({
                    objects: [lineString]
                });
        
                lineString.addEventListener('tap', agregarMarker, false);
        
                map.addObject(container);
        
            }
        
        
            var platform = new H.service.Platform({
                'apikey': 'GgV8IZH1gTE_KWUr-MVAsJM3S4CSx_yH_wuPGcNxj3k'
            });
        
            var defaultLayers = platform.createDefaultLayers();
        
            //Step 2: initialize a map - this map is centered over Europe
            var map = new H.Map(document.getElementById('map'),
                defaultLayers.vector.normal.map, {
                    center: { lat: -12.007527, lng: -77.007121 },
                    zoom: 14,
                    pixelRatio: window.devicePixelRatio || 1
                });
            // add a resize listener to make sure that the map occupies the whole container
            window.addEventListener('resize', () => map.getViewPort().resize());
        
            //Step 3: make the map interactive
            // MapEvents enables the event system
            // Behavior implements default interactions for pan/zoom (also on mobile touch environments)
            var behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));
        
            // Create the default UI components
            var ui = H.ui.UI.createDefault(map, defaultLayers);
        
        
            // Now use the map as required...
            addPolygonToMap(map);
        
        
        
            coordenadas = [null,null]
            if (coordenadas[0] != null && coordenadas[1] != null) {
                romeMarker = new H.map.Marker({ lat: coordenadas[0], lng: coordenadas[1] });
                map.addObject(romeMarker);
                console.log("marker agregado!");
            }
        </script>
    </body>
</html>
