create table empresa(
id_empresa number PRIMARY KEY,
tipo_documento varchar2(20),
id_representante number,
nombre varchar2(200),
direccion varchar2(200),
ciudad varchar2(200),
pais varchar2(200),
telefono number
);

create table representante(
id_representante number PRIMARY KEY,
tipo_documento varchar2(20),
numero_documento number,
nombre varchar2(200),
direccion varchar2(200),
ciudad varchar2(200),
pais varchar2(200),
telefono number
);

create table vehiculo(
id_vehiculo number PRIMARY KEY,
placa varchar2(20) ,
motor varchar2(200),
chasis varchar2(200),
modelo varchar2(200),
fecha_matricula date,
pasajeros_sentados number,
pasajeros_depie number,
peso_seco varchar2(200),
peso_bruto varchar2(200),
cantidad_puertas number,
marca varchar2(200),
linea varchar2(200)
);

create table afiliacion_vehiculo(
id_afiliacion_veh number PRIMARY KEY,
id_vehiculo number,
id_empresa number
);

create table conductor(
id_conductor number PRIMARY KEY,
tipo_documento varchar2(20),
numero_documento number,
nombre varchar2(200),
direccion varchar2(200),
ciudad varchar2(200),
pais varchar2(200),
telefono number
);

create table afiliacion_conductor(
id_afiliacion_con number PRIMARY KEY,
id_vehiculo number,
id_conductor number
);


alter table empresa add CONSTRAINT "EMPRESA_FK1" FOREIGN KEY ("ID_REPRESENTANTE")
	  REFERENCES "SYSTEM"."REPRESENTANTE" ("ID_REPRESENTANTE") ENABLE;

alter table afiliacion_vehiculo add CONSTRAINT "AFILIACION_VEHICULO_FK1" FOREIGN KEY ("ID_VEHICULO")
	  REFERENCES "SYSTEM"."VEHICULO" ("ID_VEHICULO") ENABLE;
      
alter table afiliacion_vehiculo add CONSTRAINT "AFILIACION_VEHICULO_FK2" FOREIGN KEY ("ID_EMPRESA")
	  REFERENCES "SYSTEM"."EMPRESA" ("ID_EMPRESA") ENABLE;
      
alter table afiliacion_conductor add CONSTRAINT "AFILIACION_CONDUCTOR_FK1" FOREIGN KEY ("ID_VEHICULO")
	  REFERENCES "SYSTEM"."VEHICULO" ("ID_VEHICULO") ENABLE;
      
alter table afiliacion_conductor add CONSTRAINT "AFILIACION_CONDUCTOR_FK2" FOREIGN KEY ("ID_CONDUCTOR")
	  REFERENCES "SYSTEM"."CONDUCTOR" ("ID_CONDUCTOR") ENABLE;