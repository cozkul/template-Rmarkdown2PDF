# R markdown VS code template

This project template is created to streamline the process of creating PDF documents from R Markdown files within Visual Studio Code (VSCode). 

## Dependencies

Replace "open" in ./scripts/run with compatible equivalent in your system or simply comment out.
This template requires following on your system:
 - brew install mactex
 - brew install pandoc
 - brew install r
Also you need following packages installed in your R:
 - install.packages('knitr', dependencies = TRUE)

## How to run

Use:
> ./scripts/run Rdemo.Rmd
Also in VScode you can use Cmd + Shift + B