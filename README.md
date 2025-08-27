# 🚀 Proyecto de Aplicación de Recetas

Este repositorio contiene dos proyectos: una aplicación móvil construida con **Flutter** y una API backend usando **Express.js**.

---

## 📁 Estructura del Proyecto

El repositorio está dividido en dos carpetas principales:

- **recipes_app**: La aplicación front-end de Flutter.  
- **recipes-api**: La API backend de Express.js.

---

## ⚙️ Primeros Pasos

### Configuración del Backend (`recipes-api`)

El backend es una API sencilla en Express.js que sirve una lista de recetas. Usa `ts-node-dev` para un servidor de desarrollo con recarga automática.

## 📁 Estructura del Proyecto
- controller: define el controlador que usa el backend
- data: define el mock de la data que se va a usar
- route: define la ruta de la api

1. Navega al directorio del backend:

```bash
cd recipes-api
```
```bash
npm install
```

Iniciar el servidor de desarrollo 

```bash
  npm run dev
```
La api se encuentra en: http://localhost:3000/api/recipes

# 📱 Aplicación de Recetas - Frontend (Flutter)

Este proyecto es la aplicación móvil de recetas, construida con **Flutter**. Se conecta a la API backend (`recipes-api`) para obtener la lista de recetas.

---

## 📁 Estructura del Proyecto
- Models: está el modelo de Receta
- screens: pantallas de login y recetas
- services: está la lógica para conectarse al backend
- widgets: componente para mostrar en una Card las recetas
Navegar al directorio del rpoyecto de flutter
```bash
  cd flutter/recipes_app
```
Instalar las dependencias de flutter
```bash
  flutter pub get
```
Ejecuta la aplicación de Flutter:
```bash
  flutter run
```

