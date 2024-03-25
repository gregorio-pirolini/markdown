import requests
from bs4 import BeautifulSoup
import json
import os
# Define dictionaries to store data
all_values = []
a_tag = {}
a_tag['href'] = 'http:test.de'  # Example URL
product_info = {}
current_datetime =''
# Make an HTTP GET request to the linked page
response2 = requests.get(a_tag['href'])

all_values = []
a_tag={}
a_tag['href'] = 'http:test.de'
product_info = {}


# todo linked page
# Make an HTTP GET request to the linked page
response2 = requests.get(a_tag['href'])


# Check if the request was successful
if response2.status_code == 200:
# Parse the HTML content
    soup2 = BeautifulSoup(response2.text, 'html.parser')
    # Extract all <div> elements with the specified ID
    section = soup2.find('div', id='contentwrap')

    # Create a dictionary to store the data for the current section

    #  _     __
    # | |   /  |
    # | |__ `| |
    # | '_ \ | |
    # | | | || |_
    # |_| |_\___/
    # Extract the h1 element within the section
    h1_element = section.find('h1')
    if h1_element:
        h1_text = h1_element.get_text().strip()  
        # strip is trimming empty sapce
        product_info['h1'] = h1_text
        custom_print(f'- - FOUND H1')
    else:
        product_info['h1'] = ''
        custom_print(f'+ + h1 is missing ?')
# ----------------------------------------
    # write to all values
    all_values.append(product_info)



                
…

#    _                 
#   (_)                
#    _ ___  ___  _ __  
#   | / __|/ _ \| '_ \ 
#   | \__ \ (_) | | | |
#   | |___/\___/|_| |_|
#  _/ |                
# |__/                         
# Specify the directory path where the JSON file is located
directory_path = ''
# Specify the file names
json_file_name = f'buzil_{current_datetime}.json'
# Save all_values as a JSON file for each URL
with open(json_file_name, 'w', encoding='utf-8') as json_file:
    json.dump(all_values, json_file, ensure_ascii=False, indent=4)

print("JSON file page created.")

json_file_path = os.path.join(directory_path, json_file_name)
