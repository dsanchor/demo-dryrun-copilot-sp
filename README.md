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

## Despliegue en AKS

### Variables de entorno

```bash
export RESOURCE_GROUP=aks-demo-alb-rg
export CLUSTER_NAME=demo
export NAMESPACE=demo-dryrun
```

### Obtener credenciales

```bash
az aks get-credentials --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME
```

### Crear namespace

```bash
kubectl create namespace $NAMESPACE
```

### Desplegar la aplicación

```bash
kubectl apply -f k8s/application.yaml -n $NAMESPACE
```

### Obtener la IP pública del balanceador de carga

```bash
SVC_IP=$(kubectl get svc my-app-service -n $NAMESPACE -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
```

### Probar la aplicación

```bash
curl http://$SVC_IP/hello
```