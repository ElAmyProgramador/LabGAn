module Geometria (
    module Geometria.Tipos
) where

import Geometria.Tipos
import Geometria.Punto
import Geometria.Segmento
import Geometria.Poligono

-- Aquí hay algunas cosas para hacer tests
-- Se reocmienda escribir cada argumento del punto como un número con decimales para poder trabajr con las divisiones de Haskell

a = Punto2D 2.0 3.0
b = Punto2D (-2.0) 3.0
c = Punto2D (-1.0) 9.0

t1 = Triangulo a b c
c1 = Cuadrilatero (Punto2D 1.0 1.0) (Punto2D 7.0 3.0) (Punto2D 9.0 8.0) (Punto2D 3.0 8.0)
