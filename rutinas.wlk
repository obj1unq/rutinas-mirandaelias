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
var intensidad

override method descanso(tiempo){
    descanso = self.descansoPorTiempo(tiempo)
}

method descansoPorTiempo(tiempo) =if (tiempo >20) 5 else 2

method intensidad(_intensidad) {
  intensidad = _intensidad
}
}



class Maraton inherits Running{

const gastoMaraton = 2 

override method caloriasGastadas(tiempo){
  return (100 * (tiempo - descanso * intensidad) * gastoMaraton)
}


}

class Remo inherits Rutina{


override method descanso(tiempo){
  return tiempo/5
}

override method intensidad(){
  return 1.3
}

}

class RemoCompeticion inherits Remo{

override method intensidad(){
  return 1.7
}

override method descanso(tiempo){
  return tiempo/5.max(2)
}

}
/*

*/