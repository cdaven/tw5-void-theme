# Void Theme

Void is not a theme, but a starting point for writing a new theme.

It is based on [Zacht](https://github.com/OdinJorna/zacht-theme).

# Dependencies

You need to install some things via npm:

    npm install --global tiddlywiki
    npm install --global node-sass

You also need GNU make.

# Building

Modify the style.scss file and generate the css tiddler with:

    make css

Then run TiddlyWiki to inspect:

    make serve
