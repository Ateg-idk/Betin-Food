<%-- 
    Document   : carrito
    Created on : 6 oct. 2023, 23:34:50
    Author     : samir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>
        <%@include file="referencias.jsp" %>
    </head>
    
    <body >
  <%@include file="header.jsp" %>
  <br>
  <br>
  <br>
  <div class="container">
    <h2>Carrito de Compra</h2>
    <table>
      <tr>
        <th>Producto</th>
        <th>Precio</th>
        <th>Cantidad</th>
        <th>Total</th>
      </tr>
      <tr>
        <td>Hamburguesa</td>
        <td>s/.5.99</td>
        <td class="quantity-input">
          <input type="number" min="0" value="0">
          <button style="background-color: #8ea7a8;">+</button>
        </td>
        <td class="total-price">s/.0.00</td>
      </tr>
      <tr>
        <td>Pizza</td>
        <td>s/.8.99</td>
        <td class="quantity-input">
          <input type="number" min="0" value="0">
          <button style="background-color: #8ea7a8;">+</button>
        </td>
        <td class="total-price">s/.0.00</td>
      </tr>
      <tr>
        <td>Papas Fritas</td>
        <td>s/.2.99</td>
        <td class="quantity-input">
          <input type="number" min="0" value="0">
          <button style="background-color: #8ea7a8;">+</button>
        </td>
        <td class="total-price">s/.0.00</td>
      </tr>
      <tr class="total-row">
        <td colspan="3">Total:</td>
        <td class="total-price">s/.0.00</td>
      </tr>
    </table>
    <div class="actions">
      <button class="btn">Actualizar</button>
      <button class="btn">Vaciar Carrito</button>
    </div>
    <div class="checkout"  style="background-color: #8ea7a8;">
      <span>Total a Pagar: s/.0.00</span>
      
      <a href="envioMapa.jsp" class="btn" style="background-color: rgb(255, 85, 85); color: white;">Continuar a pagar</a>
    </div>
  </div>
 

  <br><br><br><br><br><br>
 <%@include file="footer.jsp" %>
 
</body>
    
    <style>
    /* Estilos CSS para la interfaz moderna de nivel experto del carrito de compra */
    body {
        background-image: url(https://s3.amazonaws.com/orion-eat-app-files/orioneat-prod%2FWdNwkPDyygZ7jWn3B-FONDOBACK.png);
        font-family: 'Quicksand', sans-serif;
    }

    .container {
      max-width: 800px;
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

    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }

    th,
    td {
      padding: 12px;
      text-align: left;
    }

    th {
      background-color: #f2f2f2;
      color: #333;
    }

    tr:nth-child(even) {
      background-color: #f9f9f9;
    }

    .total-row {
      font-weight: bold;
    }

    .quantity-input {
      display: flex;
      align-items: center;
    }

    .quantity-input input {
      width: 40px;
      height: 30px;
      padding: 0 5px;
      text-align: center;
      border: 1px solid #ddd;
      border-radius: 4px;
      margin-right: 5px;
    }

    .quantity-input button {
      background-color: #0d6efd;
      color: white;
      border: none;
      border-radius: 4px;
      width: 30px;
      height: 30px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .quantity-input button:hover {
      background-color: #0d6efd;
    }

    .total-price {
      font-weight: bold;
    }

    .btn {
      padding: 10px 20px;
      background-color: #4CAF50;
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

    .actions {
      display: flex;
      justify-content: flex-end;
      margin-top: 20px;
    }

    .actions button {
      margin-left: 10px;
    }

    .checkout {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-top: 20px;
      padding: 10px 20px;
      background-color: #303235;
      color: white;
    }

    .checkout span {
      font-weight: bold;
    }

    .checkout button {
      padding: 8px 16px;
      background-color: #0d6efd;
      border-radius: 4px;
      border: none;
      color: white;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .checkout button:hover {
      background-color: #e7eee7;
    }

    @media (max-width: 600px) {
      .container {
        padding: 10px;
      }

      h2 {
        font-size: 24px;
      }

      th,
      td {
        padding: 8px;
      }

      .quantity-input input {
        width: 30px;
        height: 24px;
      }

      .quantity-input button {
        width: 24px;
        height: 24px;
      }

      .btn {
        padding: 8px 16px;
        font-size: 14px;
      }

      .checkout {
        flex-direction: column;
        align-items: flex-start;
      }

      .checkout span {
        margin-bottom: 10px;
      }

      
    }
  </style>
    
</html>
