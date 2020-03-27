# biowdl-docs-theme

This theme is intended for use with the BioWDL docs only. It has some hardcoded text which is likely not approriate for other projects (eg. the copyright notice).

This theme makes some major assumptions on the directory structure, _config.yml contents and version naming:

* A directory exists per version, containing at least an `index.md`.
* An index.html file exists in the root directory, containing the following code:
  ```
  ---
  layout: blank
  ---
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <title>Redirecting...</title>
      <script language="JavaScript">
          window.location.replace("./{{site.latest}}/index.html");
      </script>
  </head>
  <body>
  <a href="./{{site.latest}}/index.html">Click here to go to the latest documentation.</a>
  </body>
  </html>
  ```
* The _config.yml must contains a `latest` variable pointing at one of the version directories.
* The developmental version is called "develop".
