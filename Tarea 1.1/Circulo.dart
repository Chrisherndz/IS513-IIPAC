<<<<<<< HEAD
void main(){
  //imprimir los datos de la clase
   final circulo1=Micirculo(radio:5,color:'Rojo');
  
  print('Radio: ${circulo1.radio}');
  print('Color: ${circulo1.color}');
  
  print('Area: ${circulo1.area()}');
  print('Perimetro: ${circulo1.perimetro()}');
  
}

class Micirculo{
  
  final double radio;
  final String color;
  
  Micirculo({
    required this.radio,
    required this.color,
    
  });
  

  double area(){
    //usar pow
    return 3.14*radio*radio;
  } 
  
  double perimetro(){
    return 2 * 3.14*radio;
  }
=======
void main(){
  //imprimir los datos de la clase
   final circulo1=Micirculo(radio:5,color:'Rojo');
  
  print('Radio: ${circulo1.radio}');
  print('Color: ${circulo1.color}');
  
  print('Area: ${circulo1.area()}');
  print('Perimetro: ${circulo1.perimetro()}');
  
}

class Micirculo{
  
  final double radio;
  final String color;
  
  Micirculo({
    required this.radio,
    required this.color,
    
  });
  

  double area(){
    //usar pow
    return 3.14*radio*radio;
  } 
  
  double perimetro(){
    return 2 * 3.14*radio;
  }
>>>>>>> ee55bf5936cca2d666dce400d75353fb1ee042e9
}