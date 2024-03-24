# Teltow LaTex Package

A LaTeX package for creating IHK(Industrie- und Handelskammer) conform project documentation. created by students for students.

_created: 19. Mar 2024_

_last updated: 20. Mar 2024_

## Installation

Download the package via IT-Server (IP: 10.10.210)

1. Download the package
    ```bat
    click on the file you want to download it should download automaticly
    ```

2. Put the package in your project folder so that  you can find it easily. as Example:
    ```bat
    copy teltowPack.sty [projectRoot]/packages/teltowPack.sty
    ```

## Usage

Just include the package on top of your main LaTeX document as you would with any other package via:

```latex
... other Packages
\usepackage{../packages/teltowPack}
...
...
\begin{document}
```

Fill the title page with your data and show it as the first page.

```latex
...
... packages, setup, etc.
...

% parameters you can change
\setAuthor[lastname, firstname] %\setAuthor
\setSpecialization[...]
\setCandidateNumber[...]
\setStudentID[...]
\setProjectTitle[...]
\setCompanyLogo[...path]

\begin{document}
\makeIHKTitlePage\ <--- included page, 
...
... your documentation
... 
\begin{document}
```

enjoy &nbsp; \\_(＾－＾)_/

## Example usage

### Author

```latex
\setAuthor[lastname, firstname]
\setAuthor[Mewes, Maximilian]
```

### Specialization

```latex
\setSpecialization[Ausbildungsberuf / Fachrichtung]
\setSpecialization[Fachinformatiker für Anwendungsentwicklung]
```

### (Online) Candidate ID

```latex
\setCandidateNumber[some number idk]
\setCandidateNumber[69420]
```

### (Online) Student ID

```latex
\setStudentID[your online ID]
\setStudentID[8 589 869 056]
```

### Projectname

```latex
\setProjectTitle[The same as on your project application]
\setProjectTitle[Integration von MATLAB-Bibliotheken zur Lösung komplexer mathematischer Probleme in einer C#-Anwendung]
```

### (optional) Company logo

```latex
\setCompanyLogo[path to your company logo]

example project document structure:
project-documentation
├ assets
│   ├ ... other files
│   └ company-logo.png <<<<<
├ documentation
│   ├ ... [.pdf, .aux, .out, etc.]
│   └ project-documentation.tex
└ packages
    ├ ... other packages
    └ teltoPack.sty <<<<<

\setCompanyLogo[../assets/company-logo.png]
```

## Contributing

when updating the LaTeX package dont forget updating the readme too.