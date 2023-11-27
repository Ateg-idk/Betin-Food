
    <div id="MenuEmpleado" class="offcanvas-body" style="margin-left: 0px; position: fixed; width: 300px; height: 100%; background: #6c8a8b; text-align: center;">
     <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
       <li class="nav-item">
        <a href="index.jsp"class="nav-link" style="color: white;">BETINFOOD</a>
            <div    class="foto"    style="margin-left: 20px;">
           <img src="img/empleados.png" width="200px" height="200px" alt="" class="img-fluid" />
        </div>
           <h2 href="#" th:text="${cliente.getNombres()}">Empleados</h2>
       </li>
       <li class="nav-item">
           <h3 class="nav-link" href="#" style="color: white;">Cargos</h3>
           <a href="registroPedido.jsp" type="button" class="btn btn-info" style="width:16rem; background: #8ea7a8;  border-color: #00000000; color: white;">REGISTRO PEDIDO</a></br>
       </li>
       <li class="nav-item">
     <br>
           <a type="button" href="reportesempleados.jsp" class="btn btn-info" style="width:16rem; background: #8ea7a8; border-color: #00000000 ;color: white;">REPORTE ORDENES</a>   
       </li>
       <li class="nav-item">
        <br>
           <a type="button" href="entregapedido.jsp" class="btn btn-info" style="width:16rem; background: #8ea7a8; border-color: #00000000 ;color: white;">ENTREGA PEDIDO</a>   
       </li>
     </ul>
    </div>

