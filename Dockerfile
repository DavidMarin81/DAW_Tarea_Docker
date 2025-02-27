# Usa una imagen base de Java
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR generado a la imagen
COPY target/demo-0.0.1-SNAPSHOT.jar /app/entrenador-entrevistas.jar

# Especifica el comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "entrenador-entrevistas.jar"]
