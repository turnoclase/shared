# AGENTS.md — TurnoClase Shared

## Descripción del repositorio

Repositorio de recursos compartidos del proyecto TurnoClase. No contiene código ejecutable. Sirve como almacén centralizado de materiales de diseño, documentación visual y recursos gráficos utilizados por los demás repositorios del proyecto.

## Contenido

```
shared/
├── 01_artwork/              # Recursos gráficos (iconos, imágenes de marketing, etc.)
├── 02_diagramas/            # Diagramas del sistema
│   ├── 01_modelo_datos.*    # Modelo de datos de Firestore (Omnigraffle + PDF)
│   └── 02_estructura_turnoclase.*  # Arquitectura general del proyecto (Omnigraffle + PDF)
└── 04_migracion_v4/         # Capturas de pantalla y materiales de la migración a v4
    └── *.png                # Capturas del simulador durante el proceso de migración
```

## Herramientas utilizadas

- **OmniGraffle** — para los diagramas (`.graffle`). Los PDF exportados son la versión de consulta rápida.
- **SwiftDraw** — para convertir SVGs en SF Symbols, PNG, PDF o código Swift. Ver [swhitty/SwiftDraw](https://github.com/swhitty/SwiftDraw).

## Convenciones

- Los diagramas se mantienen en formato `.graffle` (fuente) y `.pdf` (exportación).
- Las capturas de pantalla de simulador se nombran con el formato estándar de Xcode: `Simulator Screenshot - <dispositivo> - <fecha>.png`.
- Los recursos de artwork se organizan por tipo dentro de `01_artwork/`.

## Commits

Al completar cualquier adición o actualización de recursos, crear un commit con:

- **Mensaje en español**, en imperativo y conciso (p.ej. `Actualizar diagrama del modelo de datos`).
- Un commit por recurso o conjunto de recursos relacionados.
- No incluir ficheros temporales de macOS (`.DS_Store`) ni caches de OmniGraffle.

## Consideraciones para agentes

- Este repositorio **no tiene código que compilar ni tests que ejecutar**.
- No modificar los diagramas `.graffle` directamente desde un agente; editar los PDFs sólo si se generan desde la fuente.
- Los recursos gráficos de este repositorio son de referencia; los assets de las apps residen en los repositorios `ios/` y `android/`.
- Al actualizar diagramas, exportar siempre también la versión PDF correspondiente.
