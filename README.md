# PruebaDatatools
Prueba de conocimiento de seleccion de personal


Prerequisitos
-Eclipse con pligin de Spring boot
-node.js
-angular cli
-Oracle xe


Pasos para ejecutar empresa-transporte
-En oracle en el usuario system ejecutar el archivo create_table.sql
-Descompimir los 2 archivos en la ruta de su preferencia
-Improtar la carpeta empresa-transporte en eclipse como proyecto maven
-modificar el archivo pom.xml, donde esta la dependendia de la coneccion a oracle:
   <dependency>
		<groupId>com.oracle</groupId>
		<artifactId>ojdbc</artifactId>
		<version>8</version>
		<scope>system</scope>
		<systemPath>d:/proyecto_prueba/empresa-transporte/ojdbc8.jar</systemPath>
	</dependency>
	cambiar la ruta a donde descomprimio el proyecto		
	<systemPath>d:/proyecto_prueba/empresa-transporte/ojdbc8.jar</systemPath>
-Click derecho en el proyecto - Run As - Spring Boot App
-En la consola de windows ejecutar el siguiente comando en una ruta para dejar el proyecto angular
	ng new prueba
-Reemplazar la carpeta src creada por el angular por la que se descomprimio
-Ejecutar en la consola de windows el comando:
ng serve

ingresar en un navegador la ruta:
http://localhost:4200/
