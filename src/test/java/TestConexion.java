import java.util.List;
import org.lc.proyecto.carro.modelo.dto.Producto;
import org.lc.proyecto.carro.modelo.dao.ProductoDAOImp;

public class TestConexion {

    public static void main(String[] args) {
        ProductoDAOImp productoDAO = new ProductoDAOImp();

        // Probar listarProducto()
        List<Producto> productos = productoDAO.listarProducto();

        if (productos != null && !productos.isEmpty()) {
            System.out.println("Productos recuperados de la base de datos:");
            productos.forEach(producto -> {
                System.out.println("ID: " + producto.getId());
                System.out.println("Nombre: " + producto.getNombre());
                System.out.println("Tipo: " + producto.getTipo());
                System.out.println("Precio: " + producto.getPrecio());
                System.out.println("------------------------------------");
            });
        } else {
            System.out.println("No se recuperaron productos o la lista está vacía.");
        }
    }
}
