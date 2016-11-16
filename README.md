# Sicherheit in Nezten - Webseite

Hier wird die Autobuild-funktion von Docker bzw. [Docker Hub](https://hub.docker.com)

Der Container wird auf einen [Digital Ocean](https://digitalocean.com) Server gehostet

Die Docker Container auf dem Server werden über die [Docker Cloud](https://cloud.docker.com) verwaltet

Der Link zum Docker Container ist folgender:
https://hub.docker.com/r/timodjatomika/sine-website/

## Wie benutze ich das hier
- Auf deinem Computer muss Docker installiert sein
- Den Container kannst du mit folgenden Befehl starten: `docker run -d -p 80:80 timodjatomika/sine-website`
- Mit dem Befehl `docker ps` kannst du sehen, dass der Container gerade läuft
- Danch kannst du im Browser folgende URL aufrufen: [localhost](http://localhost/)


## Slack 
Slack ist ein Tool welches die Kommunikation in Teams vereinfachen möchte. Außerdem bietet Slack eine umfangreiche API an.
So wird z.B. eine Notifikation in den Channel *Github* gepostet, wenn ein developer ein `git push` ausführt

### Unser Slack Bot
Einen Slack Bot kann man nach seinen eingenen wünschen Konfigurieren. 
Unsere Slackbot wurde so porgrammiert, dass er - wenn er das Signal **/redeploy** bekommt - automatisch einen redeploy des Docker Containers ausführt.

Dazu wurde ein Trigger auf [der Docker Cloud](https://cloud.docker.com) eingerichtet. Anschließend bekommt man von der Docker Cloud gesagt, ob der redeploy erflogreich war, oder nicht.
