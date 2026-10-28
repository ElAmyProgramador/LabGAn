# 📦 LabGAn
LabGAn es una biblioteca experimental creada con fines educativos para poder trabajar con objetos de la geometría analítica ($\mathbb{R}^2, \mathbb{R}^3$) vistos como un plano (en particular el plano cartesian) o como espacio vectorial.
Esta biblioteca se irá desarrollando conforme avanze mi curso de geometría analítica de la universidad, ya que es solo para retomar el ocnocimiento y generar construcciones.

## ✨ Características
En la versión 0.1.0.0 de esta biblioteca solo se añaden los tipos de Punto2D, así como las siguientes funciones
- Operaciones de suma y resta de puntos
- Distancias entre puntos y distancias desde el origen
- Tipo de dato Cuadrante que permite localizar puntos en los cuadrantes del plano $\mathbb{R}^2$
- Tipo de dato poligono para crear objetos asociados a puntos, mostrarlos y compararlos

## Módulos actuales
- [Geometria.Tipos](src/Geometria/Tipos.hs) contiene la definición de Punto2D, Cuadrante y sus estancias de Show, Eq.
- [Geometria.Punto](src/Geometria/Punto.hs) contiene funciones de comparación, suma, resta, etcétera entre los puntos de $\mathbb{R}^2$
- [Geometria.Poligono](src/Geometria/Poligono.hs) contiene la creación de objetos como triangulos, cuadrilatero y sus instancias de Show y Eq, y una función para calcular perimetros.

## Dependencias
Esta biblioteca esta hecha unicamente con el núcleo de Haskell, por lo que no necesita de bibliotecas externas. Solo será necesario usar el *prelude* de Haskell.

### GHCup
Para evitar problemas con distribuciones con filosofía rolling release como Arch Linux u OpenSUSE Tumbleweed se usará [GHCup](https://www.haskell.org/ghcup/) y cabal para generar el archivo de configuración del proyecto.

- La versión de Haskell y de ghci (el intérprete de Haskell) a usar es la version 9.10.3
- La versión de Cabal a usar es la versión 3.16.1.0

### Instalación
Para instalar esta biblioteca solamente haz git clone sobre este repo y utiliza cabal build (hasta donde sé).
```bash
cabal build
```

## Ejemplo de uso rápido
Se muestra un ejemplo sobre como sumar 2 puntos y como obtener la distancia entre ellos en $\mathbb{R}^2$.
```haskell
import Geometria

p1 = Punto2D 3 4
p2 = Punto2D 5.0 2

sumaPuntos2D p1 p2
distanciaPuntos2D p1 p2
```

## 📜 Licencia
Este proyecto está bajo la licencia [MIT](https://mit-license.org/). Puede ser usada libremente, modificada y distribuible libremente siempre y cuando se mantenga la atribución correspondiente a la biblioteca.

## 🤝 Contribuciones
Las contribuciones son bienvenidas. Para grandes cambios, abre primero un issue para discutir lo que te gustaría mejorar.
