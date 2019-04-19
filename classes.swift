import UIKit

var str = "Hello, playground"


class Igv {
    var tasa = 0.18
    
    func calculoIgv(cantidad: Double) -> Double {
        return cantidad * tasa
    }
    
    func calculoTotal(cantidad: Double) -> Double {
        return cantidad + calculoIgv(cantidad: cantidad)
    }
    
}


let miIgv = Igv()

miIgv.calculoIgv(cantidad: 90)

miIgv.calculoTotal(cantidad: 121)


struct Color {
    var red = 0
    var green = 0
    var blue = 0
    let alpha = 1
}

let cc = Color()

//cc.red = 29 no podemos cambiar las propiedades de "x" por que es un "let"

var cl = Color()

cl.red = 29

print(cl.red)

// propiedades de tipo, Se definen anteponiendo la palabra static.
struct Color1 {
    var red = 0
    var green = 0
    var blue = 0
    static let black = Color1()
    static let white = Color1(red:255, green:255, blue:255)
    static let yellow = Color1(red:255, green:255, blue:0)
}
let cl1 = Color1.yellow // R:255 G:255 B:0


// Inicializador Failable (Llevan una ? después de init.)
class Triangle {
    var a:Double, b:Double, c:Double
    
    init?(a:Double, b:Double, c:Double) {
        self.a = a
        self.b = b
        self.c = c
        if a+b<c || a+c<b || b+c<a {return nil}
    }
}
var t1 = Triangle(a:10, b:12, c:14) // t1! es un Triangle
print("\(t1!.a) \(t1!.b) \(t1!.c)") // 10.0 12.0 14.0
var t2 = Triangle(a:4, b:3, c:10) // t2 es nil

if let t3 = Triangle(a:10, b:4, c:3) { // t3 es un Triangle
    print("\(t3.a) \(t3.b) \(t3.c)") // No se cumple el if
}

// extension

extension Int {
    var sign: Sign { return self < 0 ? .Negative : .Positive }
    enum Sign { case Negative, Positive }
}
4.sign
