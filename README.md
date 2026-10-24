# Registro de Corrimientos Universal de 8 Bits (Práctica 1)

Este proyecto consiste en el diseño e implementación de un Registro de Corrimientos Universal de 8 bits desarrollado de forma puramente esquemática en Xilinx ISE Foundation para una FPGA. El sistema permite realizar operaciones lógicas, aritméticas y rotacionales en ambos sentidos, así como la carga paralela de datos y la retención de estado (hold), visualizando los resultados en tiempo real a través de los LEDs de la tarjeta.

Para asegurar una visualización correcta de los desplazamientos, el sistema incorpora un módulo divisor de frecuencia (DIV) que reduce la señal del reloj interno de la FPGA.

------------------------------------------------------------------------------------------------------------------------------

# ESTRUCTURA DEL PROYECTO

El repositorio está organizado de la siguiente manera para mantener el espacio de trabajo limpio de archivos temporales de síntesis:

Practica1/
├── assets/                 # Evidencia visual y capturas del diseño
│   └── Screenshot_DIV.png  # Diagrama esquemático del divisor de frecuencia
├── bin/
│   └── main.bit            # Binario ejecutable final listo para programar en la FPGA
├── ipcore_dir/             # Bloques lógicos e IP Cores (incluye la netlist m.ngc para compilar)
├── DIV.sch                 # Esquemático del divisor de frecuencia
├── DIV.sym                 # Símbolo jerárquico del divisor de frecuencia
├── main.sch                # Esquemático principal del circuito de control
├── pines.ucf               # Archivo de restricciones y asignación física de pines
├── Practica1.xise          # Archivo de proyecto de Xilinx ISE
└── README.md              # Documentación del proyecto

------------------------------------------------------------------------------------------------------------------------------

# ESPECIFICACIONES DE FUNCIONAMIENTO

El circuito se controla mediante 3 selectores de operación (S2, S1, S0), 8 entradas de datos divididas entre switches y botones, y un reloj global mapeado al oscilador de la tarjeta.

# TABLA DE MODOS DE OPERACIÓN

La lógica de control del registro responde a la combinación de los selectores en el siguiente orden binario [S2, S1, S0]:

[S2, S1, S0] | Modo de Operación                    | Descripción
-------------|--------------------------------------|-------------------------------------------------------------------------
    000      | Corrimiento Lógico a la Derecha      | Desplaza los bits a la derecha introduciendo un 0 en el MSB.
    100      | Corrimiento Rotacional a la Derecha  | El bit que sale por la derecha vuelve a entrar por la izquierda.
    010      | Corrimiento Aritmético a la Derecha  | Desplaza a la derecha rellenando los espacios basándose en el LSB.
    110      | Carga de Datos (Load)                | Carga en paralelo los 8 bits configurados en las entradas.
    001      | Corrimiento Lógico a la Izquierda    | Desplaza los bits a la izquierda introduciendo un 0 en el LSB.
    101      | Corrimiento Rotacional a la Izquierda| El bit que sale por la izquierda vuelve a entrar por la derecha.
    011      | Corrimiento Aritmético a la Izquierda| Desplaza a la izquierda preservando la lógica de relleno.
    111      | Retención (Hold)                     | Mantiene el último valor estable en los LEDs sin importar los ciclos de reloj.

------------------------------------------------------------------------------------------------------------------------------

# ASIGNACIÓN DE PINES (MAPEO DE HARDWARE)

Basado en las restricciones físicas definidas en pines.ucf, la distribución de los periféricos en la tarjeta está configurada de la siguiente manera:

## RELOJ GLOBAL
* CLK --> Pin B8 (Oscilador interno de la FPGA)

## ENTRADAS DE CONTROL Y SELECTORES
Los selectores se encuentran ubicados en los switches izquierdos de la placa:
* S2 --> Pin R17 (Switch)
* S1 --> Pin N17 (Switch)
* S0 --> Pin L13 (Switch)

## ENTRADAS DE CARGA PARALELA (C0 a C7)
La carga de datos combina 4 switches y 4 botones físicos, saltando el cuarto switch de la derecha como bit inactivo:
* C7 --> Pin K17 (Switch de entrada)
* C6 --> Pin K18 (Switch de entrada)
* C5 --> Pin H18 (Switch de entrada)
* C4 --> Pin G18 (Switch de entrada)
* C3 --> Pin H13 (Botón)
* C2 --> Pin E18 (Botón)
* C1 --> Pin D18 (Botón)
* C0 --> Pin B18 (Botón)

## SALIDAS VISUALES (LEDs)
El estado completo del registro de 8 bits se despliega linealmente en la barra de LEDs de la tarjeta:
* Q7 --> Pin R4  (LED 7)
* Q6 --> Pin F4  (LED 6)
* Q5 --> Pin P15 (LED 5)
* Q4 --> Pin E17 (LED 4)
* Q3 --> Pin K14 (LED 3)
* Q2 --> Pin K15 (LED 2)
* Q1 --> Pin J15 (LED 1)
* Q0 --> Pin J14 (LED 0)

------------------------------------------------------------------------------------------------------------------------------

# MÓDULO DIVISOR DE FRECUENCIA (DIV)

Debido a que el reloj nativo de la placa oscila a una frecuencia demasiado alta (generalmente 50 MHz), los corrimientos ocurrirían de forma invisible al ojo humano. Para solucionar esto, se diseñó un bloque divisor de frecuencia que toma la señal CLK base y genera pulsos lentos secuenciales mediante contadores en cascada, permitiendo transiciones suaves y perceptibles en los LEDs.

El esquema detallado de la infraestructura del divisor se encuentra documentado en la carpeta assets/.

------------------------------------------------------------------------------------------------------------------------------

# CÓMO COMPILAR

Abre `Practica1.xise` en Xilinx ISE 14.7 y ejecuta **Generate Programming File**. Verificado: el proyecto compila desde un clon limpio (`xc3s500e-5fg320`, 24 slices de 4,656) y cumple todas las restricciones de tiempo. Para solo programar la tarjeta, usa `bin/main.bit`.

------------------------------------------------------------------------------------------------------------------------------

# AUTORÍA

El diseño, los esquemáticos y el código de esta práctica son obra de **Esteban Santiago**.
