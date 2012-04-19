package sistemadeinventarios

class Producto {
    Institucion institucion
    Categoria categoria
    String nombre
    Integer existencia
    byte[] codigoBarras

    static mapping = {
        codigoBarras column: "codigoBarras", sqlType: "longblob"
    }

    static constraints = {
        codigoBarras    nullable:true
        institucion     nullable:true
        categoria       nullable:true
    }

    String toString(){
        nombre
    }
}
