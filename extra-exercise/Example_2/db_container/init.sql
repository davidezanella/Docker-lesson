CREATE TABLE test(
    id SERIAL,
    name VARCHAR(50),
    surname VARCHAR(50),
    PRIMARY KEY(id)
);

INSERT INTO test(name, surname) VALUES ('Davide', 'Zanella');
INSERT INTO test(name, surname) VALUES ('Lawrence', 'Araa');
INSERT INTO test(name, surname) VALUES ('Danny', 'Tomasi');