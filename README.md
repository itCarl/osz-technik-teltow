# Teltow LaTex Package

A LaTeX package for creating IHK(Industrie- und Handelskammer) conform project documentation. created by students for students.

created: _19. Mar 2024_

last updated: _25. Apr 2024_

## Installation

Download the package via IT-Server or GitHub

### IT-Server (IP: 10.10.210.10)

1. Download the package

    ```bat
    click on the file you want to download it should download automaticlly
    ```

2. Put the package in your project folder so that  you can find it easily. as example:

    ```bat
    copy teltowPack.sty [projectRoot]/packages/teltowPack.sty
    ```

### GitHub

1. Clone the repository

    ```shell
    git clone https://github.com/itCarl/osz-technik-teltow.git
    ```

2. Put the package in your project folder so that  you can find it easily. as example:

    ```bat
    copy teltowPack.sty [projectRoot]/packages/teltowPack.sty
    ```

## Usage

Just include the package on top of your main LaTeX document as you would with any other package via:

```latex
... other Packages
\usepackage[ihkPotsdam, timeNotesPage, tocSettings, headerAndFooter]{../packages/teltowPack}
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
\setThemeColor[... HTML Hexcode]
\isExamInSummer[... boolean]
\setAuthor[...string, ...string]
\setLoginDetails[...string]
\setSpecialization[...string]
\setCompanyName[...string]
\setSupervisorName[...string]
\setSupervisorEmail[...string]
\setSupervisorTelefon[...string]
\setProjectTitle[...string]
\setCompanyLogo[...path]
% per page header
\setHeaderLogoPosition[2.8]
\setHeaderLogoSize[2.75cm]


\begin{document}

% include title page
\makeIHKTitlePage\

% include time note page
\makeTimeNotesPage{
    \entry{...datum}{...text}{...number}
    \entry{01.02.2069}{Implementirung der Geschäftislogik)}{3}
    ...
    ..
}
...
... your documentation
... 
\begin{document}
```

enjoy &nbsp; \\_(＾－＾)_/

## Example usage

under `/example` you can see a full documentation example

### Themeing

```latex
% IHK logo colors. We recommend to set this to your companys main color
% dark blue  => #003366 (default)
% light blue => #ccd7e6
\setThemeColor[HTML Hexcode]
\setThemeColor[003366] % dark blue (default)
\setThemeColor[ccd7e6] % light blue
```

### Summer or Winter exam

```latex
% 
\isExamInSummer[true]  % (default) => Sommerprüfung 20xx
\isExamInSummer[false] % => Winterprüfung 20xx
```

### Author

```latex
\setAuthor[lastname, firstname]
\setAuthor[Mewes, Maximilian]
```

### Login (Login to the online portal)

```latex
\setLoginDetails[your online id]
\setLoginDetails[ID-24z5n2fxasdf]
```

### Specialization

```latex
\setSpecialization[Ausbildungsberuf / Fachrichtung]
\setSpecialization[Fachinformatiker für Anwendungsentwicklung]
```

### Company name

```latex
\setCompanyName[company name]
\setCompanyName[Bug Guardians GmbH \& Co. KG]
```

### Supervisor name

```latex
\setSupervisorName[supervisor name]
\setSupervisorName[Hanno Nym]
```

### Supervisor Email

```latex
\setSupervisorEmail[supervisor email]
\setSupervisorEmail[nym.hanno@bug.guardians.de]
```

### Supervisor Telefon

```latex
\setSupervisorTelefon[supervisor telefon]
\setSupervisorTelefon[03328 35070]
```

### Projectname

```latex
\setProjectTitle[The same as on your project application]
\setProjectTitle[Implementierung einer Desktopanwendung zur Verarbeitung und Verwaltung von Übertragungswerten]
```

### Company logo

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

### Header Logo

```latex
\setHeaderLogoPosition[2.8] % (optional) used to set offset for pixel perfect alignment
\setHeaderLogoSize[2.75cm]
```

## Contributing

when updating the LaTeX package dont forget updating the readme too.