-- Este modulo tiene los tipos de datos así como su instanciación en clases.
-- La instanciación es manual en principio para que practique como hacerlo manualmente y tambien para que en caso de errores se puede ver como está definido algo y tener la estructura siempre a la vista

module Geometria.Tipos where

-- el tipo de dato Punto2D (Para R²)
data Punto2D a = Punto2D {
    coordX :: a,
    coordY :: a
}
-- coordX y coordY son funciones que directamente devuelven el valor en la coordenada x e y

-- cuadrante en el plano cartesiano
data Cuadrante = I | II | III | IV

-- Instanciación de clases

-- Punto2D
-- Show
instance Show a => Show (Punto2D a) where
    show (Punto2D x y) = "(" ++ show x ++ "," ++ show y ++ ")"

-- Eq
instance Eq a => Eq (Punto2D a) where
    (==) :: Punto2D a -> Punto2D a -> Bool
    (Punto2D x1 y1) == (Punto2D x2 y2) =
        x1 == x2 && y1 == y2
    (/=) :: Eq a => Punto2D a -> Punto2D a -> Bool
    (Punto2D x1 y1) /= (Punto2D x2 y2) =
        x1 /= x2 || y1 /= y2

-- Cuadrante
instance Show Cuadrante where
    show I      = "I"
    show II     = "II"
    show III    = "III"
    show IV     = "IV"
