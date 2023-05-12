# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
The Gossip Project : Full CRUD

À The Hacking Project, il se passe plein de choses entre les moussaillons. Il faut donc créer une plate-forme où tout le monde peut venir écrire des gossips, les éditer, et même les détruire. Et pour commérer à fond, on mettra en place un système de commentaires de potins.
1. Introduction

Dans ce projet, tu vas faire ton premier CRUD entier en Rails. Je sais pas si tu te rends compte de ce que ça représente : le CRUD sur une ressource, c'est la base de tout site web ! Et d'ici ce soir, t'en auras fait un : Pwaaaa ! C'est ouf !

Pour avoir une vision complète, nous allons travailler sur les potins en acceptant toutes les actions du CRUD : on va les créer, les afficher, les modifier et les supprimer. Et puisqu'à THP on aime bien te pousser à fond, on va même te demander d'implémenter une partie de CRUD sur les commentaires de potins. De la bombe 💣.

⚠️Bonnes pratiques ⚠️ : nous te conseillons de faire des commits à chaque sous-chapitre de cet exercice. Ainsi, si jamais tu veux tester quelque chose, tu peux écrire ton code et l'exécuter quitte à faire un git reset --hard pour revenir au commit précédent. Très pratique pour repartir de la dernière étape fonctionnelle quand tu as un truc qui merde 💩
2. Le projet

Voici ce qui t'attend dans le projet du jour :

    On va repartir du projet d'hier ✌
    On va utiliser Bootstrap pour lui donner un peu de pep's
    Nous allons faire la page potin (affichage d'un potin), la page utilisateur et la page ville
    Nous allons faire l'édition des potins
    Nous allons faire en sorte qu'il soit possible de supprimer un potin à partir de la page potin
    Nous allons intégrer et afficher les commentaires de potins

Inutile de te rappeler que toutes tes routes doivent être en mode REST : l'usage de resources est ici obligatoire.

Allez, c'est parti ! Commence par reprendre ton projet d'hier.
2.1. Un joli front ?

Maintenant que tu as fait tes premières pages, et que tu sais qu'on peut faire du Bootstrap avec un simple CDN, nous allons faire en sorte que notre site ressemble à quelque chose de potable. Assure-toi que ton projet d'hier soit bien connecté au CDN de Bootstrap.

Maintenant, balade-toi sur les pages d'exemples Bootstrap et quand tu vois un élément que tu veux utiliser pour ton Gossip Project, regarde le code source de la page et récupère le nom des classes utilisées pour le construire. Quelques suggestions du chef :

    Jumbotron est une bonne base pour le haut de ta page d'accueil
    Tu peux afficher l'index des gossip sous forme d'une liste Bootstrap
    Un autre exemple est celui Social Media de W3Schools.

Pour le front, fais comme tu le sens avec le double objectif est que 1) le rendu soit présentable, et 2) tu n'y passes pas trop de temps. Le front, si on se laisse prendre au jeu, on peut y passer un temps infini et la leçon du jour, c'est de faire un back-end CRUD !
2.2. C'est bon ? T'es chaud ?

Allez on se lance. On va te donner les directives pour chaque morceau du CRUD, mais on te laisse tout coder. Il faudra ne pas hésiter à te rapporter aux cours des 2 journées précédentes pour 1) faire des routes propres, 2) faire des controllers avec les bonnes méthodes CRUD et 3) afficher les informations dans les views.

Let's GO !
2.2.1. Hot Gossip

L'objectif de cette partie est que tu crées la page potin (la page show qui affiche un potin spécifique). C’est-à-dire que quand tu tapes l'URL /gossips/3, tu arrives sur la page affichant le contenu du potin portant l'ID 3. La page potin doit afficher :

    Son titre
    Son contenu
    Son auteur
    La ville de l'auteur

À partir de la page d'accueil, qui contient l'index des potins, chaque potin doit être accompagné d'un lien pointant vers sa propre page.
2.2.2. Hot user

L'objectif de cette partie est de faire de même pour la page utilisateur. Cette page doit afficher :

    Son prénom
    Son nom
    Sa description
    Son e-mail
    Son age
    Le nom de sa ville

Sur la page show d'un potin, l'utilisateur doit pouvoir en savoir plus sur l'auteur du potin en question. Il doit y avoir un lien vers la page show de l'auteur.
2.2.3. Hot city

Allez, dernière page show : la page pour afficher le détail d'une ville. Cette page devra afficher :

    Le nom de la ville
    Les potins écrits par les utilisateurs associés à la ville en question (faire une liste comme celle de la page d'accueil)

La page ville doit être accessible depuis la page utilisateur (lien vers la ville de l'utilisateur) et depuis la page potin (lien vers la ville de l'auteur).