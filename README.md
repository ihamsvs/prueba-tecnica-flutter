🚀 Proyecto de Aplicación de Recetas
Este repositorio contiene dos proyectos: una aplicación móvil construida con Flutter y una API backend usando Express.js.

📁 Estructura del Proyecto
El repositorio está dividido en dos carpetas principales:

recipes_app: La aplicación front-end de Flutter.

recipes-api: La API backend de Express.js.

⚙️ Primeros Pasos
Configuración del Backend (recipes-api)
El backend es una API sencilla en Express.js que sirve una lista de recetas. Usa ts-node-dev para un servidor de desarrollo con recarga automática.

Navega al directorio del backend:

Bash

cd recipes-api
Instala las dependencias de Node.js:

Bash

npm install
Inicia el servidor de desarrollo:

Bash

npm run dev
La API se ejecutará en http://localhost:3000. Puedes acceder a los datos de las recetas en el endpoint http://localhost:3000/api/recipes.

Configuración del Frontend (recipes_app)
Navega al directorio del proyecto de Flutter:

Bash

cd recipes_app
Instala las dependencias de Flutter:

Bash

flutter pub get
Asegúrate de que tu dispositivo móvil o emulador esté conectado y funcionando.

Ejecuta la aplicación de Flutter:

Bash

flutter run
La aplicación móvil se iniciará y se conectará a la API local que iniciaste en el paso anterior para obtener los datos de las recetas.
