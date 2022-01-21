# Void Theme

Void is not a TiddlyWiki theme, but a starting point for writing a new TiddlyWiki theme.

The code is based on [Zacht](https://github.com/OdinJorna/zacht-theme), and extends/depends on "Vanilla".

# Concept

The theme builds upon the Vanilla theme and palette, and a few Vanilla metrics are modified, such as fonts and font size.

The main theme building is done in `sass/style.scss`, which imports `sass/_palette.scss`. This is then made into a single tiddler called `$:/themes/void/css/style`.

The file `sass/_palette.scss` can also be transpiled to a TiddlyWiki palette.

See https://sass-lang.com/documentation for SASS/SCSS documentation.

# Dependencies

You need to install some things via npm:

    npm install --global tiddlywiki node-sass

You also need GNU make and, for building the palette, the `sed` utility.

On Ubuntu (and Debian?), you can install GNU make with:

    sudo apt-get install build-essential

# Building

Modify `sass/style.scss` and generate the css tiddler with:

    make css

Modify `sass/_palette.scss` and generate the TiddlyWiki palette with:

    make palette

Then run TiddlyWiki to inspect:

    make serve

## Building the Palette file

The palette transpiling is very limited, and only works if you keep things simple and use strict syntax.

There is support for this:

* Simple SCSS syntax:
  * `$background: #ffffff;`
  * `$dropzone-background: rgba(0,200,0,0.7);`
* Simple variable referencing:
  * `$modal-background: $background;`
* Full-line comments:
  * `// $button-border:;`
