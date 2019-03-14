
*Dans la continuité de vos travaux pratiques s’agissant de la mise en œuvre d’une base de donnée de gestion bancaire, vous avez jusqu’ici travaillé sur une base simple avec 2 tables, T_Clients et T_Comptes. Sauf que notre client souhaite dorénavant avoir l’historique des opérations sur un compte. De plus, l’ensemble de vos codes doivent être livrés en anglais pour en faciliter sa compréhension de toute l’équipe projet. Comprenez ici in fine que vos composants d’accès à la base de donné seront intégrés dans le projet plus vaste avec plusieurs couches : Web, Métier et Dao.*

**Vous trouverez l’architecture global du projet dans le repo, pour l'heure, vous devrez vous concentrez uniquement sur la couche DAO (Data Access Object)**

1/ Pour ce faire, commencer par reprendre le script **Bank.sql** dans le repo et compléter le pour créer une base de données Bank, si elle existe déjà, la supprimer avant tout !

2/ Ajouter à votre script la création de 3 tables pour la gestion des clients de votre banque, des comptes et des opérations sachant qu'un client peut avoir plusieurs comptes et qu'on peut effectuer plusieurs opérations sur un compte, les tables doivent être en anglais comme suit : 

 ![center](/schéma.png)


3/ Dans le même script, réaliser des insertions dans vos tables (créer par exemple 2 clients avec 2 comptes chacun et plusieurs opérations par compte) 
Exécuter votre script puis effectuer diverses requêtes afin de vous assurer que vos tables soient opérationnelles.

4/ Réaliser ensuite un projet java "EvalBank" qui permet d'accéder à votre nouvelle base de données afin d'y effectuer différentes requêtes (classe Test) : insertions, suppressions, mises à jour et afficher le contenu de la table des clients puis réaliser une jointure montrant tous les comptes d’un client puis toutes les opérations sur un compte.
Toutes les requêtes doivent être présentes dans votre code et mises entre commentaires une fois validées !
NB : Vous devez documenter vos codes (idéalement inclure la javadoc)

5/ Mettez en œuvre le pattern DAO pour réaliser des composants (ensemble de classe) d'accès à vos 3 tables.
Le package co.simplon.dao doit contenir les classes CustomerDao, CountDao et OperationDao. Chaque classe redéfinira les méthodes find, create, update et delete présentes dans la classe mère Dao.
Vous disposez des squelettes de class **CustomerDao** qu’il faudra compléter et de la classe mère **Dao**
**VOIR DIAGRAMME DE CLASSE**
Le package co.simplon.entities doit contenir les classes : Customer, Count et Operation

6/ Élaborer des classes de tests en vous inspirant du projet précédent sans oublier que vos composants doivent être prêts à l'emploi pour notamment la partie métier de votre projet

7/ Utiliser le pattern Singleton pour ne créer qu’une seule connexion pour les 3 composants.

8/ Utiliser un ficher de configuration pour permettre à votre programme d’être fonctionnel quelque soit le SGBD.

9/ Envoyer votre projet sur Github avec le script Bank.sql puis envoyer nous le lien.

10/ Bonus : Comment pourriez vous gérer 2 types de comptes ? Courant et Epargne, l’un a droit à un découvert, l’autre a taux...
