R -e "quarto::quarto_render(output_format = 'all')"

# insert assets into the website as well
folder_name=20230126_workshop
rm -r docs/$folder_name
cp -r assets/$folder_name/results docs/$folder_name
# add <a href="./"></a> to the top of the file
awk 'NR==2 {print "<a href=\"./\"></a>"} 1' docs/$folder_name/slides.html > \
    docs/$folder_name/index.html
# remove slides.html
rm docs/$folder_name/slides.html
