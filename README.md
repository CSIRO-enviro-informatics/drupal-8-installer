# Drupal 8 Installer

### Install and use guide

#### Note: For a more in depth install guide of the initial Drupal 8 set up, refer to and follow this article https://websiteforstudents.com/install-drupal-cms-ubuntu-17-04-17-10/

Before installing this module, or any other required modules, make sure you have the following installed (these resources are installed using the above guide, or refer to install.sh script):

- Apache 2
- MySQL Server and Client
- PHP
- Drupal 8

After Drupal 8 has been installed and configured, click "extend" and enable the following core modules:

- RESTful Web Services
- Serialization
- HTTP Basic Authentication
- RDF (this should already be installed)

After these modules have been enabled, install the following modules (refer to the following for installing new modules: https://www.drupal.org/docs/user_guide/en/extend-module-install.html ) : 

- REST UI from https://www.drupal.org/project/restui
- JSON-LD from https://github.com/Islandora-CLAW/jsonld
  - Note: There is unkown bug encountered in uploading a .zip compressed module for JSON-LD. If this bug is encountered, extract JSON-LD from the downloaded .zip, then re-compress with .tar.gz, then upload > install.

The final module to be added is the 'person' module. 
  - Download the 'person' folder from this repository 
  - Move it to to the modules folder of your Drupal installation (In this instance, move it to /var/www/html/modules)
  - Go to your open Drupal root in a web browser (in this instance, localhost:80)
  - Click extend
  - tick the person module
  - click install
