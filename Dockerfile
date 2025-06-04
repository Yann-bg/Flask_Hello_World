# Étape 1 : Image de base
FROM python:3.11-slim

# Étape 2 : Dossier de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers nécessaires
COPY . /app

# Étape 4 : Installer les dépendances (Flask)
RUN pip install --no-cache-dir flask

# Étape 5 : Exposer le port utilisé par Flask
EXPOSE 5000

# Étape 6 : Définir le point d'entrée (lancement de l’app Flask)
CMD ["python", "__init__.py"]
