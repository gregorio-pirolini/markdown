import pandas as pd
import phpserialize

# this will reformat xlsx to an csv file
# it s well suited for german, and will respect leading zeros for article unumbers

# .__                 __                        __  .__                      
# |__| ____   _______/  |________ __ __   _____/  |_|__| ____   ____   ______
# |  |/    \ /  ___/\   __\_  __ \  |  \_/ ___\   __\  |/  _ \ /    \ /  ___/
# |  |   |  \\___ \  |  |  |  | \/  |  /\  \___|  | |  (  <_> )   |  \\___ \ 
# |__|___|  /____  > |__|  |__|  |____/  \___  >__| |__|\____/|___|  /____  >
#         \/     \/                          \/                    \/     \/
# 1 put name of input File xlsx oder ods
# 2 if the download tab is needed uncomment here
# 3 put name of output file

# 1 Read the Excel file
# Replace with your file name/path
df = pd.read_excel('wc-product-export-dreiturm-buzil-mega-download_without-pix_updated.xlsx', dtype=str)
 
# Keep only the 'Artikelnummer' 'Beschreibung' 'Kurzbeschreibung' columns
df = df[['Artikelnummer', 'Beschreibung', 'Kurzbeschreibung']] 

# oder mit Meta: yikes_woo_products_tabs fuer downloads

# 2 Serialize the 'Meta: yikes_woo_products_tabs' column without b' '
# df['Meta: yikes_woo_products_tabs'] = df['Meta: yikes_woo_products_tabs'].apply(lambda x: phpserialize.dumps({0: {'title': 'Downloads', 'id': 'downloads', 'content': x}}).decode('utf-8'))

# 3 Write to a CSV file
df.to_csv('wc-product-export-dreiturm-buzil-mega-download_without-pix_updated-reuplaod_19.csv', index=False, encoding='utf-8')  # Adjust the output file name as needed

