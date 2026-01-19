# Katas - Dart 

Ejercicio de familiarización con  conceptos de Dart

## Como crear un proyecto dart  desce cero.

- Crear la carperta  y moverse dentro.
- -En la terminal hay que ejecutar el  comando `dart create . --force` . Este comando 
genera la estructura base del proyecto (carpetas `bin`, `lib`, etc.).
- Para ejecutar  se utiliza  control + f5  o el comando  `dart run`  Si se usa el  comando, hay que asegurase de estar en la carpeta del proyecto. Las katas están  en el directorio   bin.

`dart run bin/nombre_del_archivo.dart`

## Usando git clone.

- Moverse a la carpeta donde se va a ejecutar  `git clone`
- ejecutar el comando `dart pub get` para descargar dependencias. El comando  descarga las librerías necesarias configuradas en el `pubspec.yaml`.


## Estructura del proyecto 
```
Katas-Dart/
├── .dart_tool/          # Archivos internos de compilación (ignorado por Git)
├── bin/                 # Directorio principal para tus ejercicios y Katas
│   ├── ElectronicDevice.dart
│   ├── ....
│   └── WalletClosure.dart
├── lib/                 # Lógica reutilizable y definiciones de clases
├── test/                # Pruebas unitarias para tus ejercicios
├── .gitignore           # Define qué archivos no se suben a GitHub
├── analysis_options.yaml # Configuración de reglas de estilo (Lints)
├── pubspec.lock         # Versiones exactas de las dependencias instaladas
├── pubspec.yaml         # Configuración del proyecto y dependencias
└── README.md            # Documentación del repositorio
```

