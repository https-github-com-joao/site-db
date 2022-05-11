CREATE SEQUENCE sq_filme;
CREATE SEQUENCE sq_sala;
CREATE SEQUENCE sq_usuario;

CREATE TABLE filme (
    id integer NOT NULL DEFAULT nextval('sq_filme'),
    nome varchar(300) NOT NULL,
    sinopse varchar(300),
    classificacao varchar(300),
    dt_estreia timestamp NOT NULL,
    created_at timestamp NOT NULL,
    updated_at timestamp,
    PRIMARY KEY (id)
);

CREATE TABLE sala (
    id integer NOT NULL DEFAULT nextval('sq_sala'),
    descricao varchar(100) NOT NULL,
    duracao smallint NOT NULL,
    created_at timestamp NOT NULL,
    updated_at timestamp,
    PRIMARY KEY (id)
);

CREATE TABLE secao (
    id_sala integer NOT NULL,
    id_filme integer NOT NULL,
    enabled  boolean NOT NULL,
    created_at timestamp NOT NULL,
    updated_at timestamp,
    PRIMARY KEY (id_sala, id_filme)
);

CREATE TABLE usuario (
    id integer NOT NULL DEFAULT nextval('sq_usuario'),
    nome varchar(300) NOT NULL,
    cpf varchar(11) NOT NULL,
    email varchar(300) NOT NULL,
    senha varchar(300) NOT NULL,
    dt_nascimento timestamp NOT NULL,
    created_at timestamp NOT NULL,
    updated_at timestamp,
    PRIMARY KEY (id)
);

ALTER SEQUENCE sq_filme OWNED BY filme.id;
ALTER SEQUENCE sq_sala OWNED BY sala.id;
ALTER SEQUENCE sq_usuario OWNED BY usuario.id;
