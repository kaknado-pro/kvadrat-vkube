# КвадратВкубе — копия сайта (демо)

Точная копия сайта https://6ent054378-sudo.github.io/kvadratkube-demo/
с правками:

- Телефон компании убран со всех страниц
- В шапке и подвале — логотип **Exponent Digital** с подписью
  «Разработка сайта и маркетинг», ссылка на
  https://voroninded1987-dot.github.io/exponent-digital/
- Мессенджеры (WhatsApp/Telegram) переведены на контакты разработчика
- Формы работают в демо-режиме: валидация телефона и галочки,
  после отправки — редирект на `spasibo.html`. Заявки никуда
  не отправляются (сохраняются в localStorage под ключом `kv_leads_demo`)

## Как включить доставку заявок на email

1. В `index.html` найдите функцию `window.kvLead` (помечена `ДЕМО-РЕЖИМ`).
2. Замените её на вариант из комментария рядом (formsubmit.co) и укажите
   свой email вместо `ВАШ_EMAIL`.
3. Отправьте тестовую заявку — на email придёт письмо-активация
   от formsubmit.co, нажмите «Activate».

## Локальный запуск

```bash
./start.command            # macOS: сервер + браузер
# или
python3 -m http.server 8080  # http://127.0.0.1:8080/
```

## Публикация на GitHub Pages

Сайт уже опубликован:
https://voroninded1987-dot.github.io/kvadrat-vkube/

Чтобы перенести на другой аккаунт/организацию:

```bash
git clone https://github.com/voroninded1987-dot/kvadrat-vkube.git
# или просто залейте содержимое папки в новый репозиторий:
git init
git add -A
git commit -m "kvadrat-vkube"
git branch -M main
git remote add origin https://github.com/АККАУНТ/kvadrat-vkube.git
git push -u origin main
# затем в настройках репозитория: Settings → Pages → Branch: main, / (root)
```

Адрес вида `https://АККАУНТ.github.io/kvadrat-vkube/` всегда содержит имя
аккаунта GitHub — это ограничение платформы. Чтобы в адресе не было
имени аккаунта, нужно:
1) создать бесплатную организацию на GitHub (например, `kvadrat-vkube`) —
   адрес станет `kvadrat-vkube.github.io/kvadrat-vkube/`, или
2) привязать свой домен (Settings → Pages → Custom domain).
