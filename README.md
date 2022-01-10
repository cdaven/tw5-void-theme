# Void Theme

Void is not a TiddlyWiki theme, but a starting point for writing a new TiddlyWiki theme.

It is based on [Zacht](https://github.com/OdinJorna/zacht-theme).

# Dependencies

You need to install some things via npm:

    npm install --global tiddlywiki
    npm install --global node-sass

You also need GNU make.

# Building

Modify the style.scss file and generate the css tiddler with:

    make css

Generate the TiddlyWiki palette with:

    make palette

Then run TiddlyWiki to inspect:

    make serve
