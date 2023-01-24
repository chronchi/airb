rm -r ../results/slides_files ../results/images
rm ../results/slides.html
quarto render slides.qmd
mv slides.html slides_files ../results
cp -r images ../results/images
