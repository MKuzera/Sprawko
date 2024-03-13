# Zajęcia 02 Mateusz Kuzera

1. Zainstaluj Docker w systemie linuksowym

Korzystam z AWS.

![AWSLINUX](ss/linux.jpg)

2. Zarejestruj się w Docker Hub i zapoznaj z sugerowanymi obrazami
3. Pobierz hello-world, busybox, ubuntu lub fedorę, mysql

![busybox](ss/busybox.jpg)

4. Uruchom busybox
   - Pokaż efekt uruchomienia kontenera

![busybox](ss/uruchomionebusybox.jpg)

   - Podłącz się do kontenera interaktywnie i wywołaj numer wersji

![busybox](ss/werjsaBusyBOx.jpg)

5. Uruchom "system w kontenerze"
   - Zaprezentuj PID1 w kontenerze i procesy dockera na hoście

   ![procesydocker](ss/procesydocker.jpg)
   
   - Zaktualizuj pakiety
  
   ![busybox](ss/zaaktualizujpakiety.jpg)

   - Wyjdź

Ctrl + D
    
6. Stwórz własnoręcznie, zbuduj i uruchom prosty plik Dockerfile bazujący na wybranym systemie i sklonuj nasze repo. 

plik Dockerfile

```
FROM amazonlinux:latest

RUN yum -y update && \
    yum -y install git && \
    yum clean all

RUN git clone https://github.com/InzynieriaOprogramowaniaAGH/MDO2024_S.git /app

WORKDIR /app
```

Uzyłem PAT w celu połączenia.

```
RUN git clone https://$USERNAME:$TOKEN@github.com/InzynieriaOprogramowaniaAGH/MDO2024_S.git
```

Budowanie kontenera

```
docker build --build-arg USERNAME=MKuzera --build-arg TOKEN=<token> -t lab2 .
```

Uruchomienie kontenera

```
docker run -d --name lab2 lab2:latest
```

Repozytorium pobrało się.

   ![repo](ss/pobierzrepo.jpg)


7. Pokaż uruchomione ( != "działające" ) kontenery, wyczyść je.

```
docker rm <nazwa>
```

   ![repo](ss/usun.jpg)

