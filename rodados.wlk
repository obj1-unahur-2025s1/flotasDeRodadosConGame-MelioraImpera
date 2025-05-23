class Corsa { //clases en singular
    var property color    //permite consultar el atributo y tambien permite settear
    method capacidad() = 4
    method velocidadMaxima() = 150
    method peso() = 1300
}
// const corsa 2 = new Corsa(color="verde")  debe haber una referencia para poder acceder que conozca el objeto
// listaAutos.add(new Corsa(color="azul"))
class Kwid {
    var property tieneTanqueAdicional
    method capacidad() = if(tieneTanqueAdicional) 3 else 4
    method velocidadMaxima() = if(tieneTanqueAdicional) 110 else 120
    method peso() = 1200 + if(tieneTanqueAdicional) 150 else 0
    method color () = "azul"
} //unKwid.tieneTanqueAdicional(false)

object trafic {
    var property interior = comodo
    var property motor = pulenta
    method capacidad() = interior.capacidad()
    method velocidadMaxima() = motor.velocidad()
    method peso() = 4000 + interior.peso() + motor.peso()
    method color() = "blanco"
}

object comodo {
    method capacidad() = 5
    method peso() = 700
}

object popular {
    method capacidad() = 12
    method peso() = 1000
}

object pulenta {
    method peso() = 800
    method velocidad() = 130
} // pueden tener otro nombre porque responde a trafic nomas

object bataton {
    method peso() = 500
    method velocidad() = 80
}

class Especial {
    const property peso //una vez que creas una instancia no la podes modificar
    var property color
    var property velocidadMaxima
    var property capacidad
}// const esp1 = new Especial(color="beige", velocidadMaxima=100, capacidad=4, peso=1200)
