# КвадратВкубе — копия сайта 1:1

Точная копия сайта https://6ent054378-sudo.github.io/kvadratkube-demo/
(ремонт квартир и домов под ключ в Ставрополе).

## Состав

- `index.html` — главная страница (хиро, квиз-калькулятор, замер, работы, сравнение, FAQ, контакты)
- `o-kompanii.html`, `nashi-proekty.html`, `dizajn-proekty.html`, `contacts.html`, `privacy.html`, `spasibo.html`
- Страницы объектов: `zhk-salyut.html`, `kvartira-zhk-melodiya.html`, `kvartira-zhk-nasledie.html`, `sanuzel-v-dvuhkomnatnoj-kvartire.html`, `chastnyj-dom-v-poselke-grushevyj.html`, `chastnii-dom-v-mihailovske.html`, `chastnyj-dom-v-sovremennom-stile.html`, `snt-radonezh.html`, `sovremennyj-dnevnik-vashego-remonta.html`
- `404.html`, `robots.txt`, `sitemap.xml`
- `assets/` — стили, шрифты, изображения, видео и скрипты (все файлы загружены с оригинала, байт в байт)

## Как открыть

Открывать нужно через локальный сервер (иначе браузер заблокирует шрифты
по CORS-политике для file://):

```bash
cd путь/к/папке
./start.command          # macOS: запустит сервер и откроет браузер
```

или вручную:

```bash
python3 -m http.server 8080
# открыть http://127.0.0.1:8080/
```

## Как опубликовать на GitHub Pages

1. Создайте на GitHub репозиторий, например `kvadratkube`.
2. В корне уже есть `.nojekyll`-содержимое не требуется — файлы отдаются как есть.
   (При необходимости добавьте пустой файл `.nojekyll`.)
3. Зальём папку в репозиторий:

```bash
git init
git add -A
git commit -m "КвадратВкубе — копия сайта"
git branch -M main
git remote add origin https://github.com/ВАШ_АККАУНТ/ИМЯ_РЕПО.git
git push -u origin main
```

4. В репозитории: Settings → Pages → Branch: `main`, папка `/ (root)` → Save.
   Сайт появится на `https://ВАШ_АККАУНТ.github.io/ИМЯ_РЕПО/`.

## Примечания

- Отправка форм идёт на `/lead.php` с фолбэком на
  `https://kvadratvkube.vercel.app/api/lead` — как в оригинале.
  На GitHub Pages формы будут отправлять лиды на этот фолбэк.
- Яндекс.Метрика и счётчики подключены к оригинальному счётчику (106016821) —
  как в исходном коде.
