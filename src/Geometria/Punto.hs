-- módulo de las operaciones con Puntos (de momento solo R^2)

module Geometria.Punto where

import Geometria.Tipos

-- constante del origen
origen :: Num a => Punto2D a
origen = Punto2D 0 0

-- función del punto medio
pMPunto2D :: Floating a => Punto2D a -> Punto2D a
pMPunto2D a = Punto2D (coordX a / 2) (coordY a / 2)

-- función de suma de Puntos 2D
sumaPuntos2D :: Floating a => Punto2D a -> Punto2D a -> Punto2D a
sumaPuntos2D a b = Punto2D (coordX a + coordX b) (coordY a + coordY b)

-- función de resta de Punto 2D
restaPuntos2D :: Floating a => Punto2D a -> Punto2D a -> Punto2D a
restaPuntos2D a b = Punto2D (coordX a - coordX b) (coordY a - coordY b)

-- función para calcular la distancia entre 2 Puntos
distanciaPuntos2D :: (Integral a, Floating b) => Punto2D a -> Punto2D a -> b
distanciaPuntos2D (Punto2D x1 y1) (Punto2D x2 y2) = sqrt $ fromIntegral d
    where
        d = (x2 - x1) ^2 + (y2 - y1)

-- función para calcular la distancia de un Punto al origen
distanciaPuntos2DOrigen :: (Integral a, Floating b) => Punto2D a -> b
distanciaPuntos2DOrigen a = distanciaPuntos2D origen a
