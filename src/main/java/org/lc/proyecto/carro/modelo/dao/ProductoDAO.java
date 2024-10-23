package org.lc.proyecto.carro.modelo.dao;
import org.lc.proyecto.carro.modelo.dto.Producto;

import java.util.List;

public interface ProductoDAO {
    List<Producto> listarProducto();
    Producto porId(int id);


}
