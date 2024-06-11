  void main() {
  final List<Tarea>tareas=[
   Tarea('Estudiar','Para el examen final de Lenguaje de Programacion'),
   Tarea('Informes','Sobre los balances en Contabilidad'),
   Tarea('Proyectos','Para finalizar materia de Base de Datos'),  
    
  ];
  
  //imprimiendo la lista original  
  print('Lista de tareas:');
  for (final tarea in tareas) {
  print(tarea);
  }
 
  //agregando elementos  a la lista  
  tareas.add(Tarea('Pagar Matricula','Para Reingresar el siguiente periodo'));
    
  //cambiar el estado de la tarea de False a True
  tareas[1].completarTarea();
  tareas[2].completarTarea();
    
  //eliminar un elemento
  tareas.removeWhere((tarea) => tarea.titulo == 'Estudiar');
  
  //lista modificada con elementos agregados o eliminados
  print('\nLista de tareas después de modificar:');
  for (final tarea in tareas) {
    print(tarea);
  }
  
}

class Tarea{
  String titulo;
  String descripcion;
  bool completa;
  
  //inicializar las propiedades
  Tarea(this.titulo, this.descripcion) : completa = false;
  
  //void para verificar si se completaron las tareas 
  void marcarComoCompletada() {
    completa = true;
  }
  
   // Método para marcar la tarea como completada(True)
  void completarTarea() {
    completa = true;
  }

  // Método para marcar la tarea como incompleta(False)
  void desmarcarTarea() {
    completa = false;
  }
  
   @override
  String toString() {
    return 'Tarea(Titulo: $titulo, Descripcion: $descripcion, Completa: $completa)';
  }

    
  
}