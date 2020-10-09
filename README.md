# Developer Requirements
 - Purescript compiler
   - with Spago (a build system for Purescript)
 - A web browser

# How to make the web page
Run the following command
```
$ spago bundle-app
```

You should now have a Javascript file in the current directory. 
Now open index.html.
It should provide the interaction for a button in the HTML file "index.html".

# How this project was created

`spago init`

`spago install lists`

`spago install quickcheck`

`spago install spec`

`spago install spec-quickcheck`