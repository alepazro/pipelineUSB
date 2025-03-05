# Usar la imagen base oficial de OpenJDK 17
FROM eclipse-temurin:17-jre-alpine

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR generado en target a la carpeta /app del contenedor
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Exponer el puerto 8080 (puedes cambiarlo si tu aplicación usa otro puerto)
EXPOSE 8080

# Comando para ejecutar el archivo JAR
ENTRYPOINT ["java", "-jar", "demo.jar"]