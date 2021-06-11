# USING BASE IMAGE FROM DOCKER HUB
FROM python:3.8.5-alpine

# UPGRADING PIP 
RUN pip install --upgrade pip

# COPY PASTE REQUIREMENTS.TXT INTO BASE FOLDER
COPY ./requirements.txt .

# INSTALL DEPENDENCIES FROM REQUIREMENTS.TXT
RUN pip install -r requirements.txt

# MAKE APP DIRECTORY 
RUN mkdir /app

# COPY SOURCE CODE INTO APP FOLDER
COPY ./DockerTestProject /app

# DECLARE WORK DIRECTORY
WORKDIR /app

# COPY ENTRY POINT SCRIPT INTO THE CONTAINER'S ROOT FOLDER
COPY ./entrypoint.sh /

ENTRYPOINT [ "sh", "/entrypoint.sh" ]



