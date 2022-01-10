# mysite

Este é meu site

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Como hospedar no Heroku
https://medium.com/@wendreof/how-publish-flutter-web-app-on-heroku-github-pages-f4df95bdd385

# 1 - Adicione o build-pack nas configurações do Heroku
Siga as instruções em https://github.com/diezep/heroku-buildpack-flutter

# 2 - Habilite a política de segurança de conteúdo (opcional) Por
precaução ... Se seu aplicativo fizer solicitações da web para alguma API da web, adicione isso após a tag head em your-project / web /index.html:

<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">

# 3 - Habilitar implantação automática

Siga as instruções aqui. Depois disso, tudo que você precisa fazer é enviar seu commit para o branch selecionado. E aguarde o lançamento. Em seguida, clique em abrir o aplicativo.

https://adriennedomingus.medium.com/if-you-are-interested-in-updating-the-name-of-the-primary-branch-on-your-repository-from-master-to-daa34d20c430

01. heroku login
02. git init
03. heroku git:remote -a douglascarteribordignon
04. git add .
05. git commit -am "make it better"
06. git push heroku main