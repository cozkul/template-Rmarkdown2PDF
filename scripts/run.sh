echo "Building: pdf from Rmd $1"
filename=$(basename "$1")
remove_ext="${filename%.*}"
build_dir="./build_${remove_ext}"
md_file="${build_dir}/${remove_ext}.md"
pdf_file="${build_dir}/${remove_ext}.pdf"
rm -rf $build_dir
mkdir $build_dir
Rscript -e "library(knitr); opts_knit\$set('base.dir' = \"$build_dir\"); knit(\"$1\", \"$md_file\"); opts_knit\$set('base.dir' = NULL);"
cd $build_dir
tex_file="${remove_ext}.tex"
pdf_file="${remove_ext}.pdf"
md_file_ib="${remove_ext}.md"
pandoc --pdf-engine=xelatex --standalone -t latex -o $tex_file $md_file_ib
pdflatex -output-directory=. -output-format=pdf $tex_file
open $pdf_file
cd ..
echo "Completed: pdf from Rmd $1"