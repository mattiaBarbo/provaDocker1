# Usa un'immagine di base Python
FROM python:3.9-slim

# Imposta la directory di lavoro
WORKDIR /app

# Copia il file di script nella directory di lavoro
COPY test_main.py .

# Installa le dipendenze
RUN pip install requests
RUN pip install pytest

# Comando che tiene il container in esecuzione
CMD ["tail", "-f", "/dev/null"]