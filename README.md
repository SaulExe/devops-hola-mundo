# Hola Mundo CI/CD (Node + Docker + GitHub Actions + Render)

App mínima en Express con pruebas unitarias, Dockerfile y pipeline CI/CD que:
- Instala dependencias
- Ejecuta pruebas
- Construye y publica la imagen en Docker Hub
- (Opcional) Despliega vía Render usando un Deploy Hook

## Ejecutar local
```bash
npm ci
npm start
# abre http://localhost:3000
```

## Probar
```bash
npm test
```

## Docker local
```bash
docker build -t hola-mundo .
docker run -p 3000:3000 hola-mundo
```

## CI/CD
1. Crea un repositorio en GitHub y sube estos archivos con la rama `main`.
2. En **Settings > Secrets and variables > Actions** crea:
   - `DOCKERHUB_USERNAME` = tu usuario de Docker Hub
   - `DOCKERHUB_TOKEN` = token de acceso de Docker Hub
   - `RENDER_DEPLOY_HOOK` = URL del Deploy Hook (opcional)

Al hacer `push` a `main`, el workflow ejecutará pruebas, construirá y subirá la imagen a Docker Hub y, si está configurado `RENDER_DEPLOY_HOOK`, disparará un deploy en Render.
