R -e "quarto::quarto_render(output_format = 'all')"

# insert assets into the website as well
folder_name=20230126_workshop
cp -r assets/$folder_name/results docs/$folder_name
