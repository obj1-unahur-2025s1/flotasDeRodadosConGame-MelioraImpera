import rodados.*

class Dependencia {   // vamos a crear instancias de dependencias(no se le pone nombres)
    const property flota = []
    var property empleados

    method agregarAFlota(rodado) {flota.add(rodado)}
    method quitarDeFlota(rodado) {flota.remove(rodado)}
    method pesoTotalFlota() = flota.sum({f => f.peso()})
    method estaBienEquipada() = self.tieneAlMenosRodados3() && self.todosVanAlMenosA100()      //o con parametros
    method tieneAlMenosRodados3() = flota.size() >= 3        // cantidad en vez de los numeros
    method todosVanAlMenosA100() = flota.all({r => r.velocidadMaxima() >= 100})       //o kms por los parametros
    method capacidadTotalEnColor(color) = self.rodadosDeColor(color).sum({r=>r.capacidad()})
    method rodadosDeColor(color) = flota.filter({r=>r.color() == color})         //delegar tareas. sera mas facil resolver.
    method colorDelRodadoMasRapido() = self.rodadoMasRapido().color()
    method rodadoMasRapido() = flota.max({r=>r.velocidadMaxima()})
    method capacidadFaltante() = 0.max(empleados - self.capacidadFlota())
    method capacidadFlota() = flota.sum({r=>r.capacidad()})
    method esGrande() = empleados >= 40 && self.tieneAlMenosRodados(5)
    method tieneAlMenosRodados(cantidad) =flota.size() >= cantidad 
}
