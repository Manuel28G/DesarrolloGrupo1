INSERT INTO  ROL VALUES ('Admin Sistema','El administrador tiene acceso a todo el sistema sin restricción,con la capacidad de dar seguimiento a todo los procesos.' );
INSERT INTO  ROL VALUES ('Admin Organización','El administrador de la organizacion se encarga de gestionar la organización a la cual esta asociado, actualizando agregando y descartando información correspondiente.');
INSERT INTO  ROL VALUES ('Admin Dojo','El administrador del dojo es el encargado de llevar un seguimiento y tener al día la información relevante con respecto al dojo asociado.');
INSERT INTO  ROL VALUES ('Entrenador','El entrenador lleva un seguimiento de los atletas y los eventos realizados en el dojo.');
INSERT INTO  ROL VALUES ('Atleta','El atleta es la persona en formación que recibe clases en un dojo particular.');
INSERT INTO  ROL VALUES ('Representante','El representante como su nombre lo indica es el encargado del atleta menor, con lo cual puede dar seguimiento a las actividades realizadas por el menor.');


go
select * from PERSONA;

INSERT INTO dbo.PERSONA (
    per_nombre,
    per_apellido ,
    per_nacionalidad,
    per_alergias,
    per_direccion,
    per_sexo,
    per_tipo_sangre,
    per_fecha_nacimiento,
    per_activo,
    per_peso,
    per_estatura,
    per_nombre_usuario,
	per_clave
) 
VALUES (
    'Eduardo',
    'Sanchez Quintero',
    'Venezolano',
    'Coco',
    '2da. Avenida de La Lagunita. Quinta Los Querubines.',
    'M',
    'O-',
    '1968-03-05',
    1,
    88,
    1.78,
    'usuario01',
	'12345'
);


INSERT INTO dbo.PERSONA (
    per_nombre,
    per_apellido ,
    per_nacionalidad,
    per_alergias,
    per_direccion,
    per_sexo,
    per_tipo_sangre,
    per_fecha_nacimiento,
    per_activo,
    per_peso,
    per_estatura,
    per_nombre_usuario,
	per_clave
) 
VALUES (
    'Alejandro',
    'Perez',
    'Venezolano',
    'Coco',
    '2da. Avenida de La Lagunita. Quinta Los Querubines.',
    'M',
    'O-',
    '1968-03-05',
    1,
    88,
    1.78,
    'usuario02',
	'12345'
);
	insert into EMAIL values('correo1@gmail.com',1,5);
	insert into EMAIL values('correo2@gmail.com',0,5);
	insert into EMAIL values('corre3o@gmail.com',0,5);
	insert into EMAIL values('correo2@gmail.com',1,6);
	insert into EMAIL values('correo1@gmail.com',0,6);
	insert into EMAIL values('correo@gmail.com',0,6);
	insert into EMAIL values('correo1@gmail.com',1,7);
go

INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),2,5);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),1,2);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),1,1);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),2,2);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),2,3);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),3,3);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),4,2);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),5,3);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),6,4);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),7,4);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),8,4);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),9,4);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),10,5);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),11,5);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),12,5);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),13,5);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),14,5);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),15,5);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),16,5);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),17,5);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),18,5);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),19,6);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),20,4);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),20,5);
