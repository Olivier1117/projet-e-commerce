#!/bin/bash

# Spécifiez le répertoire où se trouvent vos fichiers Python
repertoire="./"

# Utilisez la commande sed pour effectuer les remplacements
find "$repertoire" -type f -name "*.py" -exec sed -i 's/find_element_by_name(/find_element(By.NAME,/g' {} +
find "$repertoire" -type f -name "*.py" -exec sed -i 's/find_element_by_link_text(/find_element(By.LINK_TEXT,/g' {} +
find "$repertoire" -type f -name "*.py" -exec sed -i 's/find_element_by_xpath(/find_element(By.XPATH,/g' {} +

find "$repertoire" -type f -name "*.py" -exec sed -i 's/find_element_by_id(/find_element(By.ID,/g' {} +

find "$repertoire" -type f -name "*.py" -exec sed -i 's/executable_path=r''//g' {} +

find "$repertoire" -type f -name "*.py" -exec sed -i 's/find_element_by_css_selector(/find_element(By.CSS_SELECTOR, /g' {} +