<h1> Projet : Un calendrier très très PÔÔ <h1/>

<h2>2.2. On s'échauffe avec la classe User<h2/>
<p>
On doit créer une classe User (thanks captain obvious !).
Un User a 2 variables d'instance, un @email (string) et un @age (Integer), que l'on peut lire et modifier à sa guise (indice : attr_accessor).
Dès la création d'un User, on veut définir son e-mail et son âge. En d'autres terme, on veut pouvoir faire julie = User.new("julie@email.com", 32)
Il est possible de récupérer un array contenant tous les utilisateurs déjà créés. Cela doit se faire via une méthode de classe de la façon suivante : User.all. 
<p/>
<h2>2.3. Les événements<h2/>

<h3>2.3.1. Les attributs de l'événement<h3/>
<p>
Voici les attributs (ou variable d'instance) que l'on voudra rajouter à notre événement :
    Un événement a une @start_date qui est de type Time (on y reviendra)
    Un événement a une @duration, qui est un integer qui représente le nombre de minutes
    Un événement a un @title, qui est un string
    Un événement a un ou plusieurs @attendees, qui est un array qui contient une liste d’e-mails
L'objectif de tout ça est de pouvoir rapidement (une ligne de code) créer un événement avec truc@machin.com et bidule@chose.fr en tant qu'invités :

Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
<p/>
2.3.2. Décaler un événement

En faisant des interviews avec les utilisateurs de l'application, on s'est rendu compte qu'il était fréquent pour eux de décaler un événement à 24 heures plus tard. On veut donc que notre calendrier fasse ça de façon très simple : écris donc une méthode postpone_24h qui décale la start_date d'un évènement au lendemain, même heure.

Ainsi, si j'ai un évènement my_event, en faisant my_event.postpone_24h, je modifie sa @start_date de 24 h. Retourne plus haut voir comment faire ça avec les objets Time

2.3.3. Informations additionnelles sur l'évènement

Dans cette section, nous allons coder des méthodes qui te permettront d'obtenir des infos supplémentaires sur ton évènement (pas seulement ses attributs de base). Ainsi on voudrait pouvoir :

    Connaître la date de fin ;
    Savoir si un événement a déjà eu lieu (est-ce qu'il a commencé / est fini) ;
    Savoir si au contraire un événement est dans le futur ;
    Savoir si un événement est bientôt (dans moins de 30 minutes) ;

2.3.4. to_s

Maintenant que tu as plein de méthodes pour connaître plein de choses sur tes événements, nous allons coder une méthode pour afficher joliment un événement.
Pour le moment, si tu crées un my_event = Event.new(.....) et que tu fais puts my_event, ton terminal va afficher l'identifiant de l'objet du genre #<Event:0x00005600b4a9a3c0 @start_date="2019-03-26 12:18:40 +0100", blabla>. Nous on voudrait un affichage propre ressemblant à ça :

>Titre : RDV super important
>Date de début : 2010-10-31 12:00
>Durée : 30 minutes
>Invités : pierre@pierre.com, jean@jean.jean

Code la méthode to_s qui va afficher les détails de l'évènement, avec des puts, comme ci-dessus si tu fais my_event.to_s

2.3.5. Méthode de classe User

Dernier exercice : dans la classe des utilisateurs, code une méthode find_by_email qui :

    Prend en entrée un e-mail (string)
    Donne en sortie un objet de type User dont le @email correspond à l'e-mail en entrée de la méthode

Voici ce que permettrait de faire cette méthode dans PRY :

#On crée 3 User
>User.new("julie@julie.com", 35)
>User.new("jean@jean.com", 23)
>User.new("claude@claude.com", 75)

#On cherche un des user à partir de son e-mail
>user_1 = User.find_by_email("claude@claude.com")

#On peut ensuite utiliser ce user comme on veut. Par exemple pour afficher son age:
>puts "Voici l'age du User trouvé : #{user_1.age}"

<h2>2.4. Fonctionnalités BONUS<h2/>
[Pas faites.]
