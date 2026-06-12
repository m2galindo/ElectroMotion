
# Equipo ElectroMotion
 
Reto: Análisis de sistemas electromagnéticos en sistemas ingenieriles
Tecnológico de Monterrey — Profesor: Hiram Cordero
 
| Nombre | Matrícula |
|--------|-----------|
| Santiago Sarmiento Felix | A00227879 |
| Regina Gutiérrez Mayorga | A01384872 |
| Leonardo Valdés Pegueros | A00844642 |
| Marco Alejandro Galindo de la Cruz | A00845553 |
| Andrés Albino Salinas Assad | A00844462 |
| Daniela Lozano Cantú | A01287111 |
 
**Profesor:** Hiram Cordero

## Simulación FEM - Motor/Generador (ElectroMotion)

Script de MATLAB usado para modelar la Fuerza Electromotriz (FEM) inducida
en el prototipo de motor/generador, como parte del Reto Motor-Generador.

## Descripción

El modelo se basa en la Ley de Inducción de Faraday:

```
e(t) = N * B * A * w * sin(w*t)
```

donde:
- **N**: número de vueltas del embobinado
- **B**: magnitud del campo magnético [T]
- **A**: área de la espira [m²]
- **w**: velocidad angular [rad/s]
- **t**: tiempo [s]

## Contenido

- `simulacion_FEM.m` — Script de simulación (Anexo 1 del reporte).

El script genera una gráfica comparando la FEM producida con dos valores
distintos del número de vueltas del embobinado:

- N = 50 vueltas (valor experimental real del prototipo)
- N = 150 vueltas (propuesta de mejora, conectando las bobinas en serie)

## Parámetros utilizados

| Parámetro | Valor |
|-----------|-------|
| B (campo magnético)| 0.38 T |
| A (área de espira) | 0.003 m² |
| w (velocidad angular) | 75.4 rad/s (≈12 Hz) |
| N (caso base)      | 50 vueltas |
| N (caso comparación) | 150 vueltas |

## Resultados

- N = 50 → FEM pico ≈ 4.29 V
- N = 150 → FEM pico ≈ 12.87 V

Ambas curvas mantienen la misma frecuencia (12 Hz), confirmando que el
voltaje inducido es directamente proporcional al número de vueltas (N).

## Cómo ejecutarlo

1. Abre MATLAB (o Octave).
2. Abre el archivo `simulacion_FEM.m`.
3. Presiona **Run**.
4. Se mostrará la gráfica comparando ambas curvas de FEM.

## Equipo ElectroMotion

Reto: Análisis de sistemas electromagnéticos en sistemas ingenieriles
Tecnológico de Monterrey — Profesor: Hiram Cordero
