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

execute M1_Restablecer
 @id_usuario=41,
 @clave='mama';

 select * from PERSONA;
