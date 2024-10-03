CREATE TABLE IF NOT EXISTS BIBLOTECA (
    ID_BIBLOTECA INT NOT NULL AUTO_INCREMENT,
    NOMBRE_BIBLOTECA VARCHAR(255) NOT NULL,
    DIRECCION_BIBLOTECA VARCHAR(255),
    TELEFONO_BIBLOTECA VARCHAR(15),
    PRIMARY KEY (ID_BIBLOTECA)
);

CREATE TABLE IF NOT EXISTS TIPO_USUARIO(
    ID_TIPO_USUARIO TINYINT NOT NULL AUTO_INCREMENT,
    TIPO_USUARIO VARCHAR(50),
    DESCRIPCION_TIPO_USUARIO VARCHAR (255),
    PRIMARY KEY (ID_TIPO_USUARIO)
);

CREATE TABLE IF NOT EXISTS PAISES(
    CODIGO_PAIS INT NOT NULL,
    CODIGO_ISO3_PAIS VARCHAR(3),
    NOMBRE_PAIS VARCHAR(50),
    GENTILICIO_PAIS VARCHAR(50),
    PRIMARY KEY (CODIGO_PAIS)
);

CREATE TABLE IF NOT EXISTS USUARIO(
    ID_USUARIO INT NOT NULL AUTO_INCREMENT,
    NOMBRE_USUARIO VARCHAR (255) NOT NULL,
    CORREO_USUARIO VARCHAR (255) NOT NULL,
    TELEFONO_USUARIO VARCHAR (15),
    RUT_USUARIO VARCHAR (10),
    CODIGO_PAIS INT,
    HABILITADO TINYINT NOT NULL,
    ID_TIPO_USUARIO TINYINT NOT NULL,
    FECHA_CREACION DATETIME NOT NULL,
    PRIMARY KEY (ID_USUARIO)
    CONSTRAINT FK_PAIS_USUARIO FOREIGN KEY (CODIGO_PAIS) REFERENCES PAISES(CODIGO_PAIS),
    CONSTRAINT FK_TIPO_USUARIO FOREIGN KEY (ID_TIPO_USUARIO) REFERENCES TIPO_USUARIO(ID_TIPO_USUARIO)
);

CREATE TABLE IF NOT EXISTS AUTOR(
    ID_AUTOR
)