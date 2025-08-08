
# Keycloak Login Page
This repository contains a custom theme for Keycloak, designed to make the keycloak login page look more TUM like.

## How to install
Follow these steps to install and activate the theme in Keycloak.


### 1. Load the Theme into the Keycloak Container
Ensure the theme files are available in the Keycloak container by mounting the repository or copying the files to the Keycloak themes directory.

    opt/keycloak/themes/aet-passkeyv2

### 2. Enable the Theme in the Keycloak Admin Console
1. Log in to the Keycloak Admin Console and select the appropriate realm.
2. Go to Realm **Settings > Themes**.
3. In the **Login Theme** dropdown, select **aet-passkeyv2** (if you cannot see it, make sure that the theme is correctly placed in the themes directory).

## Development with Keycloak Container
To develop the keycloak theme:
1. Mount the development folder to the keycloak docker
2. modify the keycloak entrypoint so that the theme changes are directly reflected

    entrypoint: /opt/keycloak/bin/kc.sh start-dev --spi-theme-static-max-age=-1 --spi-theme-cache-themes=false --spi-theme-cache-templates=false'
