FROM python:3.12-slim

# Répertoire de travail
WORKDIR /app

# Copier d'abord le requirements.txt
COPY requirements.txt /app/

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du projet
COPY . /app

# Exposer le port
EXPOSE 8000

# Lancer le serveur
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]