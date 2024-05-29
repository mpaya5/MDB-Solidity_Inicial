# Tema 01: Tipos de datos y estructuras
## Tipos de Valor y Funciones en Solidity
### Tipos de Valor
- **Variables enteras**: Representan números enteros *(sin decimales)*:
    - **Entero sin signo**: `uint(Optional[divisible de 8 hasta 256] = 256) nombre_variable;`
    - **Entero con signo**: `int(Optional[divisible de 8 hasta 256] = 256) nombre_variable;`
- **Strings**: Representan cadenas de caracteres: `string nombre_variable;`
- **Booleanos**: Dos posibles valores, *true* o *false*: `bool nombre_variable;`
- **Addresses**: Contienen un valor de 20 bytes *(direcciones en Ethereum)*: `address nombre_variable;`.
- **Bytes**: `bytes(Optional[1, divisibles de 4 hasta 256]) nombre_variable;`
- **Enums**: Tipos de datos definidos por el usuario. Restringen la variable a tener sólo uno de los valores predefinidos.
``` 
enum tipo_nuevo {Nombre1, Nombre2, Nombre3}
tipo_nuevo nombre_variable;
```

### Tipos de estructuras de datos complejas
- **Structs**: Sirven para crear tipos de datos personalizados. Se define la estructura con un nombre y unas propiedades asociadas dentro de ella.
```
struct Ejemplo {
    address propiedad1;
    string propiedad2;
    uint8 propiedad3;
}
```
- **Arrays**: Colección de elementos del mismo tipo. El tamaño de los arrays en Solidity puede ser estático o dinámico.
```
uint32 array_estatico[15];
uin32 array_dinamico[];
```
- **Mappings**: Actúan como tablas de hash. Almacenan los datos en forma de pares clave-valor. `mapping(keyType => valueType) nombre_variable;`:
    - **keyType** (la clave), puede ser cualquier tipo de valor "simple".
    - **valueType** (el valor), puede sr cualquier tipo de valor, incluyendo structs, arrays u otro mapping.

### Funciones
Las funciones son unidades ejecutables del código dentro de un contrato. Pueden devolver valores de retorno al ser ejecutadas.
- Sin valores de retorno:
```
function nombre_funcion(dataType parametro1, datatype parametro2) modificadores {
    ...
}
```
- Con valores de retorno:
```
function nombre_funcion(dataType parametro1, dataType parametro2) modificadores returns (dataType return_value) {
    ...
}
```