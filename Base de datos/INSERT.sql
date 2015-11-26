INSERT INTO  ROL VALUES ('Admin Sistema','El administrador tiene acceso a todo el sistema sin restricción,con la capacidad de dar seguimiento a todo los procesos.' );
INSERT INTO  ROL VALUES ('Admin Organización','El administrador de la organizacion se encarga de gestionar la organización a la cual esta asociado, actualizando agregando y descartando información correspondiente.');
INSERT INTO  ROL VALUES ('Admin Dojo','El administrador del dojo es el encargado de llevar un seguimiento y tener al día la información relevante con respecto al dojo asociado.');
INSERT INTO  ROL VALUES ('Entrenador','El entrenador lleva un seguimiento de los atletas y los eventos realizados en el dojo.');
INSERT INTO  ROL VALUES ('Atleta','El atleta es la persona en formación que recibe clases en un dojo particular.');
INSERT INTO  ROL VALUES ('Representante','El representante como su nombre lo indica es el encargado del atleta menor, con lo cual puede dar seguimiento a las actividades realizadas por el menor.');

INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),2,3);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),2,5);
INSERT INTO PERSONA_ROL VALUES(CONVERT (date, GETDATE()),1,2);

create procedure M1_Restablecer
@id_usuario [int],
@clave [varchar](100)
as
begin
	Update PERSONA set per_clave=@clave
	where per_id=@id_usuario
	end;

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
    per_nombre_usuario
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
    'usuario01'
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
    per_nombre_usuario
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
    'usuario02'
);


--------------------Esto no esta bien aun -----------

INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/01/04','YYYY/MM/DD'),1,1);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/02/03','YYYY/MM/DD'),2,2);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/03/05','YYYY/MM/DD'),2,3);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/04/06','YYYY/MM/DD'),3,3);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/05/07','YYYY/MM/DD'),4,2);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/06/08','YYYY/MM/DD'),5,3);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/07/21','YYYY/MM/DD'),6,4);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/08/21','YYYY/MM/DD'),7,4);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/09/11','YYYY/MM/DD'),8,4);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/10/12','YYYY/MM/DD'),9,4);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/11/14','YYYY/MM/DD'),10,5);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/11/13','YYYY/MM/DD'),11,5);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/01/12','YYYY/MM/DD'),12,5);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/02/22','YYYY/MM/DD'),13,5);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/03/24','YYYY/MM/DD'),14,5);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/04/27','YYYY/MM/DD'),15,5);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/05/28','YYYY/MM/DD'),16,5);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/06/28','YYYY/MM/DD'),17,5);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/07/28','YYYY/MM/DD'),18,5);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/08/28','YYYY/MM/DD'),19,6);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/09/19','YYYY/MM/DD'),20,4);
INSERT INTO USUARIO_ROL VALUES(TO_DATE('2015/10/05','YYYY/MM/DD'),20,5);
