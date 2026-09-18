<h3 align="center">
  <img src="https://codeberg.org/evergarden/.profile/raw/branch/main/assets/logo-circle.png" width="100" alt="Logo"/><br/>
  Evergarden for <a href="https://codeberg.org/roughlynamed/emacs-evergarden">Emacs</a>
</h3>

<p align="center">
  <a href="https://codeberg.org/evergarden/template/stars">
    <img src="https://img.shields.io/gitea/stars/evergarden/template?gitea_url=https%3A%2F%2Fcodeberg.org&style=for-the-badge&colorA=2B3337&colorB=F5D098">
  </a>
  <a href="https://codeberg.org/evergarden/template/issues">
    <img src="https://img.shields.io/gitea/issues/open/evergarden/template?gitea_url=https%3A%2F%2Fcodeberg.org&style=for-the-badge&colorA=2B3337&colorB=F7A182">
  </a>
  <a href="https://codeberg.org/evergarden/template/activity/contributors">
    <img src="https://img.shields.io/github/contributors/evergardentheme/template?style=for-the-badge&colorA=2B3337&colorB=B3E6DB">
  </a>
</p>

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

<!-- TODO: get to MELPA soon  -->
### Usage
1. Download the theme file
2. Add the directory with the theme file to your `custom-theme-load-path` and load the theme

``` emacs-lisp
(package-install 'modus-themes)
(package-install 'ef-themes)

(add-to-list 'custom-theme-load-path
             "/path/to/evergarden-theme.el/directory")
(load-theme 'evergarden t)
```  
For package-style loading:  

``` emacs-lisp
(add-to-list 'load-path "/path/to/evergarden-theme.el/directory")
(require 'evergarden)
(load-theme 'evergarden t)
```

### Thanks to <3

- [evergarden](https://codeberg.org/evergarden)

<hr>

<p align="center">
  <a href="https://codeberg.org/evergarden/template/src/LICENSE">
    <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=LICENSE&message=Apache-2.0&colorA=2B3337&colorB=AFD9E6"/>
  </a>
</p>
