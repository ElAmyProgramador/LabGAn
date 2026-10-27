-- Solo algo simple como dividir un segmento de Recta en una razón dada
module Geometria.Segmento where

import Geometria.Tipos
import Geometria.Punto

-- la función tomará los 2 puntos (extremos de un segmento de recta) y la razón en la que se va a dividir
seccionPunto :: (Fractional a, Eq a) => Punto2D a -> Punto2D a -> a -> Maybe (Punto2D a)
seccionPunto _ _ (-1)   = Nothing
seccionPunto a b r      = Just $ Punto2D x y
    where
        x = (coordX a + (r * coordX b)) / (1 + r)
        y = (coordY a + (r * coordY b)) / (1 + r)

pendiente :: Fractional a => Punto2D a -> Punto2D a -> a
pendiente p1 p2 = a / b
    where
        a = coordY p2 - coordY p1
        b = coordX p2 - coordX p1
