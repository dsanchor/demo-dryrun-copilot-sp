# Spring Boot Rest API demo

## Build

```bash
mvn clean package
```

## Run

```bash
mvn spring-boot:run
```

## Test

```bash
curl http://localhost:8080/hello
```

## Test reverse operation
    
```bash
curl http://localhost:8080/reverse?input=hello
```

## Test remove-vowels operation
    
```bash
curl http://localhost:8080/remove-vowels?input=hello
```

## Run unit tests

```bash
mvn test
```

## Dockeriza la aplicación

### Crear la imagen

```bash
docker build -t demo-dryrun-sp .
```

### Ejecutar la imagen

```bash
docker run -p 8080:8080 demo-dryrun-sp
```

