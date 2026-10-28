-- módulo para tener ciertos objetos en forma de poligonos, este módulo es auxiliar
module Geometria.Poligono where

import Geometria.Tipos
import Geometria.Punto (distanciaPuntos2D)
import Data.List (nub) -- esto es solo para tener la función nub para eliminar puntos repetidos

data Poligono a =
    Triangulo (Punto2D a) (Punto2D a) (Punto2D a)
    | Cuadrilatero (Punto2D a) (Punto2D a) (Punto2D a) (Punto2D a)

-- Instanciación de clases

-- Show
instance (Show a) => Show (Poligono a) where
    show (Triangulo a b c) =
        "Triangulo [" ++ show a ++ ", " ++ show b ++ ", " ++ show c ++ "]"
    show (Cuadrilatero a b c d) =
        "Cuadrilátero [" ++ show a ++", " ++ show b ++ ", " ++ show c ++ ", " ++ show d ++ "]"

-- Eq
instance (Eq a) => Eq (Poligono a) where
    (==) :: Poligono a -> Poligono a -> Bool
    (Triangulo a b c) == (Triangulo d e f) =
        let l1 = nub [a, b, c]
            l2 = nub [d, e, f]
        in l1 == l2 -- aprovechando la instancia Eq de los puntos en Tipos.hs y de las listas
    (Cuadrilatero a b c d) == (Cuadrilatero e f g h) =
        let l1 = nub [a, b, c, d]
            l2 = nub [e, f, g, h]
        in l1 == l2
    (/=) :: Poligono a -> Poligono a -> Bool
    (Triangulo a b c) /= (Triangulo d e f) =
        let l1 = nub [a, b, c]
            l2 = nub [d, e, f]
        in l1 /= l2
    (Cuadrilatero a b c d) /= (Cuadrilatero e f g h) =
        let l1 = nub [a, b, c, d]
            l2 = nub [e, f, g, h]
        in l1 /= l2

-- Algunas funciones del módulo
perimetro :: (Floating a, Fractional a) => Poligono a -> a
perimetro (Triangulo a b c) = x + y + z
    where
        x = distanciaPuntos2D a b
        y = distanciaPuntos2D b c
        z = distanciaPuntos2D a c
perimetro (Cuadrilatero a b c d) = w + x + y + z
    where
        w = distanciaPuntos2D a b
        x = distanciaPuntos2D b c
        y = distanciaPuntos2D c d
        z = distanciaPuntos2D a d
