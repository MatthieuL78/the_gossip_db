# Database Movie 

Ce projet est un CRUD comprenant 2 models : Gossip et Comment. On peut y ajouter/lire/modifier/détruire des gossips et des commentaires associés aux gossips.

## Lancer le projet
Pour lancer le projet, sur le terminal (dans le dossier concerne) :
```
bundle install --without production
```

```
rails db:migrate
```

```
rails s
```

Vous pouvez observer les pages dans 'localhost:3000'

On y utilise les méthodes suivantes :

* Associations : Belongs_to - Has_many
* Resources : gossip, :comment
* Controllers : create, show, update, destroy ...
* Bootstrap pour le CSS

Vous pouvez voir le projet sur heroku : 

* https://young-brook-32682.herokuapp.com/
