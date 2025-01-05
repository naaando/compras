FROM python:3-slim

RUN apt-get update \
    && apt-get install -y wget \
    && apt-get clean

RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get install ./google-chrome-stable_current_amd64.deb -y \
    && apt-get clean

WORKDIR /app

COPY requirements.txt ./

RUN pip install selenium webdriver-manager flask packaging

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]