DROP TABLE IF EXISTS AlumnoPorProyecto;
DROP TABLE IF EXISTS AlumnoPorFeria;
DROP TABLE IF EXISTS ProyectoPorFeria;
DROP TABLE IF EXISTS Apoyos;
DROP TABLE IF EXISTS Ferias;
DROP TABLE IF EXISTS Asesores;
DROP TABLE IF EXISTS Alumnos;
DROP TABLE IF EXISTS Proyectos;

CREATE TABLE Proyectos(
	IDproyecto INT PRIMARY KEY,
    NombreProyecto VARCHAR(45),
    Categoria VARCHAR(45)
);

CREATE TABLE Alumnos(
	IDAlumno INT PRIMARY KEY,
    NombreAlumno VARCHAR(45)
);

CREATE TABLE Asesores(
	IDAsesor INT PRIMARY KEY,
    NombreAsesor VARCHAR(45)
);

CREATE TABLE Ferias(
	IDFeria INT PRIMARY KEY,
    NombreFeria VARCHAR(45),
    Fecha VARCHAR(45)
);

CREATE TABLE Apoyos(
	IDApoyo INT PRIMARY KEY,
    Patrocinador VARCHAR(45),
    ApoyoOtorgado VARCHAR(45)
);

CREATE TABLE AlumnoPorProyecto(
    IDAlumnoProyecto INT,
    IDProyectoAlumno INT,
	FOREIGN KEY(IDAlumnoProyecto) REFERENCES Alumnos(IDAlumno),
    FOREIGN KEY(IDProyectoAlumno) REFERENCES Proyectos(IDProyecto),
    PRIMARY KEY(IDAlumnoProyecto, IDProyectoAlumno)
);

CREATE TABLE ProyectoPorFeria(
    IDProyectoFeria INT,
    IDFeriaProyecto INT,
	FOREIGN KEY(IDProyectoFeria) REFERENCES Proyectos(IDProyecto),
    FOREIGN KEY(IDFeriaProyecto) REFERENCES Ferias(IDFeria),
    PRIMARY KEY(IDProyectoFeria, IDFeriaProyecto)
);

CREATE TABLE AlumnoPorFeria(
	IDAlumnoFeria INT,
    IDFeriaAlumno INT,
    IDApoyoAlumnoFeria INT,
    Premio VARCHAR(45),
	FOREIGN KEY(IDAlumnoFeria) REFERENCES Alumnos(IDAlumno),
    FOREIGN KEY(IDFeriaAlumno) REFERENCES Ferias(IDFeria),
    FOREIGN KEY(IDApoyoAlumnoFeria) REFERENCES Apoyos(IDApoyo),
    PRIMARY KEY(IDAlumnoFeria, IDFeriaAlumno)
);

