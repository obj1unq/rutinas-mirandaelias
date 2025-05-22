class Rutina{
//var descanso   =
//var intensidad =

method caloriasGastadas(tiempo){
    return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()
}

method intensidad() 

//method intensidad(_intensidad)

method descanso(tiempo)

//method descanso(_descanso)

}

class Running inherits Rutina{
var descanso = 0
var property intensidad //Sirve tambien para rellenar al metodo abstracto

override method descanso(tiempo){
    descanso = self.descansoPorTiempo(tiempo)
}

method descansoPorTiempo(tiempo) =if (tiempo >20) 5 else 2

}



class Maraton inherits Running{

const gastoMaraton = 2 

override method caloriasGastadas(tiempo){
    return super(tiempo)*gastoMaraton
  }
//super llama a la misma funcion de la clase principal
//importa donde esta la funcion

}

class Remo inherits Rutina{
const property intensidad = 1.3

override method descanso(tiempo){
  return tiempo/5
}
/*
override method intensidad(){
  return 1.3
}
*/
}

class RemoCompeticion inherits Remo{
//class RemoCompeticion inherits Remo(intensidad = 1.7){
//Este en el caso de que arriba haya puesto el var

//Si puse un metodo arriba lo sobreescribo con metodo
override method intensidad(){
  return 1.7
}

override method descanso(tiempo){
  return (super(tiempo)-3).max(2)
}

}
//El patron se llama template metodo, metodo plantilla
///Si tengo una funcion que se repite en todas las clases heredadas
//hay que templarlo y mandarlo para arriba implementado o de forma abstracta,
// en el caso de que cambie lo sobreescribo

//Clase abstracta, no se puede instanciar por si sola
//tiene al menos un metodo abstracto en este caso es Rutina