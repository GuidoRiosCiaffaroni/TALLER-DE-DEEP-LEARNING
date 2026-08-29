# Proyecto Final de Deep Learning

## Clasificación de enfermedades foliares del tomate mediante MLP y CNN

Este repositorio contiene el desarrollo completo de un proyecto de clasificación supervisada multiclase de imágenes de hojas de tomate utilizando el conjunto de datos PlantVillage. El objetivo principal es comparar de manera metodológicamente justa una red neuronal multicapa (MLP) y una red neuronal convolucional (CNN), evaluando su capacidad para reconocer diez categorías sanitarias a partir de imágenes digitales.

El proyecto fue desarrollado en Python y está diseñado para ejecutarse en Google Colab. El notebook integra el proceso completo: configuración del entorno, descarga y organización del dataset, control de calidad, análisis exploratorio, preparación de los datos, diseño de modelos, entrenamiento comparable, evaluación final, interpretación y documentación de limitaciones.

---

## 1. Problema abordado

Las enfermedades foliares pueden producir cambios visuales en las hojas, como variaciones de color, manchas, lesiones y alteraciones de textura. La clasificación automatizada de estas imágenes puede apoyar procesos de detección temprana y análisis sanitario.

El problema se formula como una tarea de clasificación supervisada multiclase:

- Entrada: imagen RGB de una hoja de tomate.
- Salida: una de las diez categorías sanitarias disponibles.
- Tipo de aprendizaje: supervisado.
- Tipo de variable objetivo: categórica multiclase.
- Unidad de análisis: una imagen.

El experimento compara dos enfoques:

1. MLP: recibe cada imagen como un vector después de aplicar `Flatten`.
2. CNN: conserva la estructura espacial de la imagen y aprende patrones locales mediante convoluciones.

---

## 2. Objetivo general

Diseñar, entrenar y evaluar modelos de Deep Learning capaces de clasificar imágenes de hojas de tomate, comparando una MLP y una CNN bajo un protocolo experimental común y reproducible.

### Objetivos específicos

- Descargar y organizar el conjunto de datos PlantVillage.
- Verificar la integridad de las imágenes.
- Detectar y controlar duplicados exactos.
- Analizar la distribución de las clases.
- Dividir los datos en Train, Validation y Test.
- Evitar fuga de información entre las particiones.
- Construir una MLP como modelo de referencia.
- Construir una CNN orientada al procesamiento de imágenes.
- Entrenar ambos modelos bajo condiciones comparables.
- Seleccionar modelos utilizando exclusivamente Validation.
- Abrir Test una sola vez para la evaluación final.
- Comparar métricas globales, balanceadas y por clase.
- Analizar errores, generalización, eficiencia y limitaciones.

---

## 3. Conjunto de datos

Se utiliza PlantVillage, restringiendo el análisis a imágenes de hojas de tomate.

Características del conjunto procesado:

| Característica | Valor |
|---|---:|
| Imágenes únicas | 18.146 |
| Número de clases | 10 |
| Imágenes de entrenamiento | 12.702 |
| Imágenes de validación | 2.722 |
| Imágenes de prueba | 2.722 |
| Resolución utilizada | 128 x 128 píxeles |
| Canales | 3 (RGB) |
| Semilla aleatoria | 42 |

### Clases estudiadas

- `Tomato___Bacterial_spot`
- `Tomato___Early_blight`
- `Tomato___Late_blight`
- `Tomato___Leaf_Mold`
- `Tomato___Septoria_leaf_spot`
- `Tomato___Spider_mites Two-spotted_spider_mite`
- `Tomato___Target_Spot`
- `Tomato___Tomato_Yellow_Leaf_Curl_Virus`
- `Tomato___Tomato_mosaic_virus`
- `Tomato___healthy`

El dataset presenta desbalance entre clases. Por esta razón, Accuracy no se utiliza como único criterio de evaluación y se incorporan Balanced Accuracy, Precision Macro, Recall Macro y F1 Macro.

---

## 4. Estructura del proyecto

Archivo principal:

```text
20_Catedra_Final_Taller_DeepLearning.ipynb
```

Documentos complementarios generados:

```text
Resultados_y_Graficas_20_Catedra_Final_Taller_DeepLearning.pdf
Solo_Markdown_20_Catedra_Final_Taller_DeepLearning.pdf
README.txt
```

El notebook está organizado de forma progresiva mediante fases que cubren:

- Preparación y organización.
- Contexto del problema y variable objetivo.
- Descarga y exploración del dataset.
- Selección de clases de tomate.
- Verificación de integridad.
- Detección de duplicados.
- Análisis exploratorio y calidad de datos.
- División estratificada.
- Preprocesamiento de imágenes.
- Construcción de datasets de TensorFlow.
- Diseño de la MLP.
- Diseño de la CNN.
- Entrenamiento comparable.
- Evaluación sobre Validation.
- Selección del modelo.
- Evaluación final sobre Test.
- Comparación estadística y arquitectónica.
- Interpretación de errores.
- Limitaciones y trabajo futuro.

---

## 5. Tecnologías y librerías

El proyecto utiliza las siguientes herramientas:

- Python.
- Google Colab.
- NumPy: operaciones numéricas y manejo de arreglos.
- Pandas: tablas, reportes y análisis de resultados.
- Matplotlib: visualizaciones y curvas de aprendizaje.
- Seaborn: gráficos estadísticos y matrices de confusión.
- Pillow: lectura y validación de imágenes.
- Scikit-image: extracción HOG para experimentos auxiliares.
- Scikit-learn: partición, métricas y modelos de referencia.
- TensorFlow y Keras: construcción, entrenamiento y evaluación de redes neuronales.
- SciPy: análisis estadístico y procesamiento auxiliar.
- Joblib: persistencia de objetos y modelos auxiliares.

Todas las importaciones fueron consolidadas al inicio del notebook para facilitar la ejecución reproducible.

---

## 6. Instalación en Google Colab

Google Colab incluye la mayoría de las dependencias. Si fuera necesario, pueden instalarse o actualizarse con:

```python
!pip install -q numpy pandas matplotlib seaborn pillow tqdm
!pip install -q scikit-learn scikit-image scipy joblib
!pip install -q tensorflow
```

Después de la instalación, se recomienda reiniciar el entorno de ejecución solamente si Colab lo solicita.

---

## 7. Ejecución del notebook

1. Abrir `20_Catedra_Final_Taller_DeepLearning.ipynb` en Google Colab.
2. Seleccionar `Entorno de ejecución > Cambiar tipo de entorno de ejecución`.
3. Activar GPU cuando esté disponible.
4. Ejecutar la celda inicial de librerías.
5. Ejecutar las celdas en orden desde el inicio.
6. Autorizar el acceso a Kaggle o Google Drive únicamente cuando el notebook lo solicite.
7. Verificar las rutas del dataset antes de iniciar el procesamiento.
8. No modificar Train, Validation o Test después de iniciar el protocolo comparable.
9. Conservar Test cerrado hasta la evaluación final.

Para ejecutar todo el notebook:

```text
Entorno de ejecución > Ejecutar todas
```

El tiempo total depende del hardware asignado por Google Colab y de la disponibilidad de GPU.

---

## 8. Preparación de los datos

El pipeline aplica las siguientes operaciones:

1. Descarga y extracción de archivos.
2. Selección de las diez clases de tomate.
3. Consolidación de directorios.
4. Verificación de archivos corruptos.
5. Detección de duplicados exactos mediante hash.
6. Construcción de un inventario de imágenes.
7. División estratificada en Train, Validation y Test.
8. Redimensionamiento a 128 x 128 píxeles.
9. Conversión a tensores RGB.
10. Normalización de píxeles al intervalo `[0, 1]`.
11. Procesamiento por lotes de 32 imágenes.
12. Aplicación de data augmentation solamente durante entrenamiento.

### Prevención de fuga de datos

El proyecto aplica las siguientes medidas:

- Los duplicados se controlan antes de crear las particiones finales.
- La división conserva la proporción de clases.
- Validation se utiliza para selección y ajuste.
- Test no participa en el entrenamiento ni en la selección.
- Los mismos conjuntos se utilizan para comparar MLP y CNN.
- Después de abrir Test no se modifican arquitecturas, pesos ni hiperparámetros.

---

## 9. Modelos evaluados

### 9.1 Red neuronal multicapa (MLP)

La MLP transforma cada imagen de `128 x 128 x 3` en un vector de 49.152 características mediante `Flatten`.

Configuración principal:

| Componente | Configuración |
|---|---:|
| Entrada | 128 x 128 x 3 |
| Características después de Flatten | 49.152 |
| Primera capa oculta | 128 unidades |
| Segunda capa oculta | 64 unidades |
| Salida | 10 unidades Softmax |
| Dropout | 0,30 |
| Parámetros entrenables | 6.300.490 |

La MLP funciona como referencia, pero pierde explícitamente la estructura espacial de la imagen al vectorizarla.

### 9.2 Red neuronal convolucional (CNN A)

La CNN procesa directamente la estructura espacial de las imágenes. Sus filtros convolucionales aprenden patrones locales como bordes, texturas, manchas y formas.

Características principales:

- Capas convolucionales para extracción de características.
- Activación ReLU.
- Reducción espacial mediante pooling.
- Capas densas para clasificación final.
- Salida Softmax de diez clases.
- 424.042 parámetros entrenables.

La CNN utiliza aproximadamente 14,86 veces menos parámetros que la MLP.

---

## 10. Protocolo de entrenamiento comparable

Los modelos se entrenan utilizando las mismas condiciones experimentales:

| Elemento | Configuración |
|---|---:|
| Train | 12.702 imágenes |
| Validation | 2.722 imágenes |
| Batch size | 32 |
| Épocas máximas | 50 |
| Optimizador | Adam |
| Learning rate | 0,001 |
| Función de pérdida | Sparse Categorical Crossentropy |
| Monitor | `val_loss` |
| Early Stopping | Sí |
| Paciencia | 7 épocas |
| Restaurar mejores pesos | Sí |
| Checkpoint del mejor modelo | Sí |
| Semilla | 42 |

### Justificación de las decisiones

- Adam adapta la tasa de actualización de los parámetros durante el entrenamiento.
- Sparse Categorical Crossentropy es adecuada porque las etiquetas se representan como enteros.
- Softmax transforma la salida en una distribución de probabilidades entre diez clases.
- Early Stopping reduce el riesgo de continuar entrenando cuando Validation deja de mejorar.
- Model Checkpoint conserva el modelo con menor `val_loss`.
- La semilla 42 favorece la reproducibilidad.

---

## 11. Métricas de evaluación

Se utilizan métricas complementarias:

- Accuracy: proporción total de predicciones correctas.
- Balanced Accuracy: promedio del recall de cada clase.
- Precision Macro: precisión promedio dando igual peso a cada clase.
- Recall Macro: sensibilidad promedio entre clases.
- F1 Macro: media armónica entre Precision y Recall calculada por clase.
- F1 Weighted: F1 ponderado por el soporte de cada clase.
- Error Rate: proporción de predicciones incorrectas.
- Matriz de confusión: distribución de aciertos y errores entre clases.
- Reporte de clasificación: métricas detalladas por categoría.

F1 Macro y Balanced Accuracy son especialmente relevantes debido al desbalance del dataset.

---

## 12. Resultados finales sobre Test

Los modelos fueron evaluados sobre las mismas 2.722 imágenes de Test.

| Métrica | MLP | CNN A | Diferencia CNN - MLP |
|---|---:|---:|---:|
| Accuracy | 46,07 % | **95,81 %** | +49,74 pp |
| Balanced Accuracy | 27,90 % | **94,11 %** | +66,21 pp |
| Precision Macro | 28,08 % | **95,51 %** | +67,44 pp |
| Recall Macro | 27,90 % | **94,11 %** | +66,21 pp |
| F1 Macro | 20,20 % | **94,41 %** | +74,21 pp |
| F1 Weighted | 36,98 % | **95,69 %** | +58,71 pp |
| Error Rate | 53,93 % | **4,19 %** | -49,74 pp |

Resultados adicionales:

| Indicador | MLP | CNN A |
|---|---:|---:|
| Predicciones correctas | 1.254 | **2.608** |
| Predicciones incorrectas | 1.468 | **114** |
| Parámetros entrenables | 6.300.490 | **424.042** |
| Mejor época según `val_loss` | 25 | 18 |

La CNN clasifica correctamente 1.367 imágenes que la MLP clasifica de forma incorrecta. Esto equivale aproximadamente al 93,12 % de los errores cometidos por la MLP.

---

## 13. Interpretación técnica

La CNN A supera ampliamente a la MLP en todas las métricas finales. La diferencia no se explica simplemente por una mayor cantidad de parámetros, ya que la CNN utiliza muchos menos.

La ventaja se relaciona con el sesgo inductivo de las convoluciones:

- Preservan la estructura bidimensional de la imagen.
- Detectan patrones locales.
- Comparten pesos entre diferentes regiones.
- Aprenden representaciones jerárquicas.
- Requieren menos conexiones independientes.

La MLP aplana la imagen antes del aprendizaje y no representa de forma explícita la vecindad entre píxeles. Además, su primera capa densa concentra una gran cantidad de parámetros, aumentando el costo y el riesgo de aprender relaciones poco eficientes.

Los resultados respaldan la hipótesis de que una arquitectura convolucional es más adecuada que una MLP para este problema de clasificación de imágenes.

La conclusión se limita al Test interno de PlantVillage y al protocolo experimental ejecutado. No demuestra automáticamente el mismo rendimiento sobre imágenes reales obtenidas en terreno.

---

## 14. Visualizaciones incluidas

El notebook incorpora, entre otras, las siguientes visualizaciones:

- Distribución de imágenes por clase.
- Ejemplos representativos de las categorías.
- Análisis de dimensiones y calidad de imágenes.
- Curvas de pérdida de entrenamiento y validación.
- Curvas de Accuracy.
- Comparación de brechas Train-Validation.
- Matrices de confusión.
- Métricas por clase.
- Comparación MLP-CNN.
- Análisis de confianza predictiva.
- Inspección de predicciones correctas e incorrectas.
- Análisis de calidad visual y posibles fuentes de error.

Los resultados y gráficos también fueron exportados al documento:

```text
Resultados_y_Graficas_20_Catedra_Final_Taller_DeepLearning.pdf
```

---

## 15. Reproducibilidad

Para favorecer la reproducibilidad se aplican las siguientes prácticas:

- Semilla aleatoria igual a 42.
- Particiones guardadas y reutilizadas.
- Mismo Train y Validation para ambos modelos.
- Mismo optimizador y learning rate.
- Misma pérdida.
- Mismo tamaño de lote.
- Mismo máximo de épocas.
- Mismo criterio de Early Stopping.
- Checkpoints de mejores pesos.
- Registro de métricas y configuraciones.
- Consolidación de librerías al inicio del notebook.

Los resultados pueden variar ligeramente por diferencias de hardware, versiones de TensorFlow y operaciones no completamente deterministas en GPU.

---

## 16. Descarga de los archivos generados en Colab

Para comprimir y descargar todo el directorio `/content`:

```python
import shutil
from pathlib import Path
from google.colab import files

directorio_origen = Path("/content")
ruta_zip = shutil.make_archive(
    base_name="/content_completo",
    format="zip",
    root_dir=str(directorio_origen)
)

print(f"Archivo creado: {ruta_zip}")
files.download(ruta_zip)
```

El archivo ZIP se crea fuera de `/content` para evitar que el proceso intente incluir el archivo comprimido dentro de sí mismo.

---

## 17. Limitaciones

Los resultados deben interpretarse considerando las siguientes limitaciones:

- PlantVillage puede haber sido capturado en condiciones relativamente controladas.
- Las imágenes reales de terreno pueden contener fondos, iluminación y escalas diferentes.
- Existe desbalance entre clases.
- El número de observaciones no es idéntico para todas las categorías.
- Las imágenes fueron reducidas a 128 x 128 por restricciones computacionales.
- La exploración de hiperparámetros fue limitada.
- No se realizó validación externa con otro dataset.
- El entrenamiento dependió de los recursos disponibles en Google Colab.
- El experimento no demuestra desempeño operativo en producción.

---

## 18. Mejoras futuras

Las siguientes extensiones pueden desarrollarse en trabajos posteriores, pero no forman parte de los requisitos del experimento actual:

- Transfer Learning.
- EfficientNet.
- ResNet.
- Data augmentation ampliado.
- Validación externa con imágenes de campo.
- Grad-CAM para interpretación visual.
- Optimización sistemática de hiperparámetros.
- Calibración de probabilidades.
- Evaluación de robustez ante cambios de iluminación y fondo.
- Despliegue experimental mediante una API o aplicación web.

---

## 19. Conclusiones

El proyecto demuestra que la arquitectura CNN A es considerablemente más adecuada que la MLP para clasificar las imágenes de hojas de tomate del conjunto PlantVillage bajo el protocolo aplicado.

La CNN A alcanzó 95,81 % de Accuracy y 94,41 % de F1 Macro, mientras que la MLP obtuvo 46,07 % y 20,20 %, respectivamente. Además, la CNN utilizó aproximadamente 14,86 veces menos parámetros.

La evidencia confirma la importancia de preservar y explotar la estructura espacial de las imágenes. Sin embargo, la validez de la conclusión se restringe al conjunto de datos y a las condiciones internas del experimento. La validación con imágenes externas constituye la principal prioridad antes de considerar una aplicación en condiciones reales.

---

## 20. Uso académico

Este repositorio fue desarrollado con fines académicos y educativos. Los resultados no deben interpretarse como diagnóstico agronómico ni reemplazan la evaluación realizada por profesionales especializados.

---

## 21. Licencia

Antes de publicar el repositorio, se recomienda:

- Revisar y respetar la licencia original de PlantVillage.
- Agregar un archivo `LICENSE` para el código propio.
- Documentar correctamente las fuentes de datos.
- Evitar publicar credenciales, tokens o archivos `kaggle.json`.
- No subir datasets completos si su licencia no lo permite.

Una alternativa habitual para código académico es la licencia MIT, siempre que sea compatible con las condiciones institucionales y con las dependencias utilizadas.

---

## 22. Referencia del notebook

```text
20_Catedra_Final_Taller_DeepLearning.ipynb
```

