
-- Création base de donnée / si existe déjà, supprimer !
DROP DATABASE IF EXISTS Bank;
CREATE DATABASE Bank;
USE Bank;

-- Création table des clients
CREATE TABLE T_Customers (
	IdCust				int(4)		PRIMARY KEY AUTO_INCREMENT,
	Name				varchar(20)	NOT NULL,
	FirstName			varchar(20)	NOT NULL,
	ConnectionNumber		int(4)		NOT NULL DEFAULT 0
) ENGINE = InnoDB;




-- Ajouter des clients à votre table
INSERT INTO T_Customers (IdCust, Name, FirstName) VALUES (1,'3040','neang','mo');
INSERT INTO T_Customers (IdCust, Name, FirstName) VALUES (2,'3377','ly','san');
INSERT INTO T_Customers (IdCust, Name, FirstName) VALUES (3,'2121','yese','leed');
INSERT INTO T_Customers (IdCust, Name, FirstName) VALUES (4,'4411','Bax','ga');
INSERT INTO T_Customers (IdCust, Name, FirstName) VALUES (5,'1122','yo ','gu');

-- Afficher les clients 
select * from T_Customers;


-- Création table des comptes
CREATE  T_Counts (
	NumCt				int(4)		NOT NULL,
	DateCreation			DATE(4)		NOT NULL,
	Balance				float(20)	NOT NULL,
	Idcust				int(4)		NOT NULL	
) ENGINE = InnoDB;


-- Ajouter des comptes
INSERT INTO account (CodeC , NumC , Solde) VALUES (1, '9234','10000','1200'); 
INSERT INTO account (CodeC , NumC , Solde) VALUES (1, '5555','20000','8000');
INSERT INTO account (CodeC , NumC , Solde) VALUES (2, '4444','10000','5000'); 
INSERT INTO account (CodeC , NumC , Solde) VALUES (2, '3333','20000','2000');

-- Création table des opérations
CREATE TABLE T_Operations (
			NumOp				int(4)		NOT NULL,
			Amount				float(4)	NOT NULL,
			NumCt				int(4)		NOT NULL,	
) ENGINE = InnoDB;

			
-- Ajouter des opérations
INSERT INTO T_Operations(NumOp ,DateCreation ,Balance, IdCust) VALUES ( 1 ,3/4/2000 );
INSERT INTO T_Operations(NumOp, DateCreation,Balance,IdCust) VALUES ( 1, 22/12/2000 );
INSERT INTO T_Operations(NumOp,DateCreation,Balance,IdCust) VALUES (2,21/12/2000 );
INSERT INTO T_Operations(NumOp,DateCreations,Balance,IdCust) VALUES (2,10/11/2000);

