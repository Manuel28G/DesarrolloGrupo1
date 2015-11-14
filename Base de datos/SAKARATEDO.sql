CREATE TABLE USUARIO
( usuario_id number(10) not null,
  correo varchar2(100) not null,
  contraseña varchar2(100) not null,
  cuenta varchar2(100) not null

);

CREATE TABLE ROL
	(
    rol_id number(10) not null,
    rol_nombre varchar2(100) not null
	) ;

CREATE TABLE USUARIO_ROL
    (
     usurol_fecha_asignacion date not null,
     fk_usuario number not null,
     fk_rol number not null
    ) ;

ALTER TABLE ROL ADD CONSTRAINT ROL_PK PRIMARY KEY (rol_id);
ALTER TABLE USUARIO ADD CONSTRAINT USUARIO_PK PRIMARY KEY (usuario_id);

ALTER TABLE USUARIO_ROL ADD CONSTRAINT USUARIO_ROL_USUARIO_FK FOREIGN KEY (fk_usuario) REFERENCES USUARIO (usuario_id);
ALTER TABLE USUARIO_ROL ADD CONSTRAINT USUARIO_ROL_ROL_FK FOREIGN KEY (fk_rol) REFERENCES ROL (rol_id);

DROP TABLE USUARIO_ROL;
DROP TABLE USUARIO;
DROP TABLE ROL;