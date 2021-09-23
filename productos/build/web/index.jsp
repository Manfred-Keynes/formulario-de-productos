<%-- 
    Document   : index
    Created on : 22/09/2021, 10:19:11
    Author     : mfer_
--%>
<%@page import ="modelo.Marca" %>
<%@page import ="java.util.HashMap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    </head>
    <body>
        <h1>Agregar productos</h1>
        <div class="container">
            <form  action="sr_producto" method="post" class="formgroup">
            <!--label for="lbl_codigo"><b>Codigo</b></label-->
            <!--input type="number" name="txt_codigo" id="txt_Codigo" placeholder="Ejemplo: 001" required class="form-control"-->
            <label for="lbl_nombre"><b>Nombre</b></label>
            <input type="text" name="txt_nombre" id="txt_nombre" placeholder="Ejemplo: Nombre 01" required class="form-control">
             <label for="lbl_marca"><b>Marca</b></label>
             <select name="lista_marcas" id="lista_marcas" class="form-select">
                <% 
                Marca marca = new Marca();
                HashMap<String,String> drop = marca.drop_lista();
                for (String i:drop.keySet()){
                    out.println("<option value='"+ i +"'>"+ drop.get(i) +"</option>");
                    }
                %>
            </select>
            
            <label for="lbl_descripcion"><b>Descripcion</b></label>
            <input type="text" name="txt_descripcion" id="txt_descripcion" placeholder="Ejemplo: Alcohol en gel galon" required class="form-control">
            <label for="lbl_costo"><b>Costo</b></label>
            <input type="number" step="0.01" name="txt_costo" id="txt_costo" placeholder="Ejemplo: 7.50" required class="form-control"> 
            <label for="lbl_precio"><b>Precio de venta</b></label>
            <input type="number" step="0.01" name="txt_precio" id="txt_precio" placeholder="Ejemplo: 9.99" required class="form-control">
            <label for="lbl_existencia"><b>Existencia</b></label>
            <input type="number" name="txt_existencia" id="txt_existencia" placeholder="Ejemplo: 1" required class="form-control">
            <br>
            <button name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-success">Agregar</button>
            </form>
            <br>
            <table class="table table-dark table-hover">
    <thead>
      <tr>
        <th>Codigo</th>
        <th>Nombre</th>
        <th>Marca</th>
        <th>Descripcion</th>
        <th>Costo</th>
        <th>Precio de venta</th>
        <th>Precio de Existencia</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>001</td>
        <td>Desinfectante</td>
        <td>Superlimpio</td>
        <td>Alcohol en gel </td>
        <td>7.5</td>
        <td>9.99</td>
        <td>200</td>
      </tr>
      <tr>
        <td>002</td>
        <td>Detergente</td>
        <td>Limpiatodo</td>
        <td>Detergente en polvo </td>
        <td>8.5</td>
        <td>12.99</td>
        <td>150</td>
      </tr>
    </tbody>
  </table>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    </body>
</html>
