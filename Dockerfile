# Utilise une image Python officielle
FROM python:3.11-slim

# Dossier de travail
WORKDIR /app

# Copie des fichiers
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Expose le port Flask
EXPOSE 5000

# Commande de démarrage
CMD ["python", "app.py"]
