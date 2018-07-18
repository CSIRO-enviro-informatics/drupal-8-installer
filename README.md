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
 
- After these modules have been installed, go back to the "Extend" tab, tick the modules that were installed, and then click install at the bottom to finalise.

The final module to be added is the 'person' module. 
  - Download the 'person' folder from this repository 
  - Move it to to the modules folder of your Drupal installation (In this instance, move it to /var/www/html/modules)
  
  - After this module has been installed, go back to the "Extend" tab, tick the modules that were installed, and then click install at the bottom to finalise.

### Configuring

Starting with a fresh Drupal 8 install, and all Modules added in previous steps...

1. Go to the configuration pages and under web services open the REST configuration

2. Enable Content and select edit

3. Set Granularity to resource and check the GET box under methods

4. Check jsonld and json under Accepted request formats

5. Check basic_auth and cookie under Authentication providers

6. Go to the Content menu and Add content

7. Select person and then fill out the details of your person and save

8. This will bring up the newly create node

9. In the address bar `http://localhost/node/1` add the format URL query string with type JSON-LD: `?_format=jsonld` -> `http://localhost/node/1?_format=jsonld`

  This will expose the JSON-LD Data.

10. Module is currently mapped to both schema.org/person and xmlns.com/foaf/0.1/person

11. The title field is mapped to FOAF name the rest are mapped to schema.org

12. Mappings can be viewed in the file rdf.mapping.node.person.yml found under person/config/install/
