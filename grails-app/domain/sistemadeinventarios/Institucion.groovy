package sistemadeinventarios

class Institucion {
    static hasMany = [productos:Producto]
    String nombre
    List productos

    String toString(){
        nombre
    }

}
