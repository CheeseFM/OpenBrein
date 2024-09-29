#kladversie 

📅 Aangemaakt: 29-09-2024

---
Bij het updaten van Quartz kan het zijn dat er een nieuwe node versie nodig is. De Github Pages 'workflow' file wordt hiermee niet geüpdate en zal dus onder die vereiste terecht komen.

# Voorbeeld fout:
```Bash
Run npm ci
npm ERR! code EBADENGINE
npm ERR! engine Unsupported engine
npm ERR! engine Not compatible with your version of node/npm: @jackyzha0/quartz@4.4.0
npm ERR! notsup Not compatible with your version of node/npm: @jackyzha0/quartz@4.4.0
npm ERR! notsup Required: {"npm":">=9.3.1","node":"20 || >=22"}
npm ERR! notsup Actual:   {"npm":"9.5.0","node":"v18.14.2"}

npm ERR! A complete log of this run can be found in:
npm ERR!     /home/runner/.npm/_logs/2024-09-29T06_14_39_310Z-debug-0.log
Error: Process completed with exit code 1.
```

# Oplossing fout
Kijk naar de voorbeeld workflow in de documentatie (https://quartz.jzhao.xyz/hosting) en kopieer de nieuwe versie.

## Vorige workflow file
```YAML
name: Deploy Quartz site to GitHub Pages
 
on:
  push:
    branches:
      - v4
 
permissions:
  contents: read
  pages: write
  id-token: write
 
concurrency:
  group: "pages"
  cancel-in-progress: false
 
jobs:
  build:
    runs-on: ubuntu-22.04
    steps:
      - uses: actions/checkout@v3
        with:
          fetch-depth: 0 # Fetch all history for git info
      - uses: actions/setup-node@v3
        with:
          node-version: 18
      - name: Install Dependencies
        run: npm ci
      - name: Build Quartz
        run: npx quartz build
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v2
        with:
          path: public
 
  deploy:
    needs: build
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v2
```
