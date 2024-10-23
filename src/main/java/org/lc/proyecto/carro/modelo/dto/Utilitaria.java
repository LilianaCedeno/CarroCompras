package org.lc.proyecto.carro.modelo.dto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.util.*;
//  Esta clase se puede convertir en una clase añadir usuario, se deberia crear un dto con la estrucrura usuario
public class Utilitaria {

    public Optional<String> obtenerUsuario(HttpServletRequest request){
        HttpSession session = request.getSession();
        String usuario = (String) session.getAttribute("usuario");
        if(usuario != null){
            return Optional.of(usuario);
        }
        return Optional.empty();
    }

    /*public List<Producto> listarProducto(){
        return Arrays.asList(new Producto(1L,"Notbbok","Computación",18000),
                new Producto(2L,"Silla Gamer", "Oficina",10000),
                new Producto(3L,"Teclado ergonomico","Computación", 10000));
    }

    public Optional<Producto> porID(Long id) {
        return listarProducto().stream().filter(p -> p.getId().equals(id)).findAny();

    }*/
}
