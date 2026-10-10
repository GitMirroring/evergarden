<h3 align="center">
  <img src="https://codeberg.org/evergarden/.profile/raw/branch/main/assets/logo-circle.png" width="100" alt="Logo"/><br/>
  Evergarden for <a href="https://www.gnu.org/software/emacs/emacs.html">Emacs</a>
</h3>

<p align="center">
  <img src="assets/previews/preview.webp"/>
</p>

### Previews

<details>
  <summary>Winter</summary>
  <img src="assets/previews/winter.webp"/>
</details>
<details>
  <summary>Fall</summary>
  <img src="assets/previews/fall.webp"/>
</details>
<details>
  <summary>Spring</summary>
  <img src="assets/previews/spring.webp"/>
</details>
<details>
  <summary>Summer</summary>
  <img src="assets/previews/summer.webp"/>
</details>

<!-- TODO: get to MELPA / (Non)GNU ELPA soon  -->

### Usage

1. Download the theme files
2. Add the directory with the theme file to your `custom-theme-load-path` and load the theme

```emacs-lisp
(package-install 'modus-themes)
(package-install 'ef-themes)

(add-to-list 'custom-theme-load-path
             "/path/to/evergarden-theme/directory")
(load-theme 'evergarden t)
```

### Thanks to <3

- [evergarden](https://codeberg.org/evergarden)

### License

    Copyright (C) 2026 Magdalena Szweda

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

<hr>

<p align="center">
  <a href="https://codeberg.org/evergarden/template/src/LICENSE">
    <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=LICENSE&message=Apache-2.0&colorA=2B3337&colorB=AFD9E6"/>
  </a>
</p>
