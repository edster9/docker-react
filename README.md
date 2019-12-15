# Build the image

```
docker build -t esahakian/frontend:latest -f Dockerfile.dev .
```

# Run the container

```
docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app esahakian/frontend
```

# Run the container [test app]

```
docker run -it -v /app/node_modules -v $(pwd):/app esahakian/frontend npm run test
```

# Attach and run the container [test app]

```
docker run -it [container_id] npm run test
```

# Attache to the container

```
docker exec -it [container_id] sh
```

# Production build

```
docker build -t esahakian/frontend-prod:latest .
docker run -p 8080:80 esahakian/frontend-prod
```
