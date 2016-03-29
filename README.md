# hubot-bijin-tokei

A hubot script that display time in the image.

See [`src/bijin-tokei.coffee`](src/bijin-tokei.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install git://github.com/umatoma/hubot-bijin-tokei --save`

Then add **hubot-bijin-tokei** to your `external-scripts.json`:

```json
["hubot-bijin-tokei"]
```

## Sample Interaction

```
user> hubot tokei now
hubot> http://www.bijint.com/assets/pict/kagoshima/pc/1332.jpg

user> hubot tokei now tokyo
hubot> http://www.bijint.com/assets/pict/tokyo/pc/1332.jpg
```