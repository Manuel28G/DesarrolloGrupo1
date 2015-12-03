
update EMAIL set ema_email='perdomo21346@gmail.com' where PERSONA_per_id=28 and ema_principal=1;
update EMAIL set ema_email='rafa91_1@hotmail.com' where (PERSONA_per_id=31 or PERSONA_per_id=30 ) and ema_principal=1;



-------*CAMBIAR*-------PROCEDURE CONSULTA PERSONA POR ID --------*NUEVO M6*--------------
CREATE procedure M1_ConsultarPersona_ID
	@id_usuario [int]
as
	begin
		select pers.per_nombre as nombre_usuario, pers.per_apellido as apellido_usuario, pers.per_id as id_usuario,
		pers.per_num_doc_id as documento_usuario
		from PERSONA pers
		where pers.per_id = @id_usuario
	end;
	go

----*NUEVO*-----------PROCEDURE LISTAR PERSONAS--------------------

CREATE procedure M1_ConsultarNombreUsuarioContrasena_listar
as
	begin
		select pers.per_id as id_usuario, pers.per_nombre_usuario as nombre_usuario, pers.per_clave as contrasena,pers.per_imagen as imagen,
		(pers.per_nombre+' '+pers.per_apellido) as nombreDePila
		from PERSONA pers
	end;
	go