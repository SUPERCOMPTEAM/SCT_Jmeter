FROM justb4/jmeter:5.4

WORKDIR /app

# RUN git clone https://github.com/SUPERCOMPTEAM/SCT_Jmeter.git

# Копируем содержимое папки jmeter_data из репозитория внутрь контейнера
COPY . .

RUN wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-5.4.3.tgz \
    && tar -xzf apache-jmeter-5.4.3.tgz \
    && rm apache-jmeter-5.4.3.tgz

# устанавливаем путь до Jmeter, чтобы было проще запускать тесты внутри контейнера
ENV PATH="/app/apache-jmeter-5.4.3/bin:${PATH}"

CMD ["jmeter", "--version"]
