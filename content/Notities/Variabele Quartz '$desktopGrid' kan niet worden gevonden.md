#kladversie 

📅 Aangemaakt: 29-09-2024

---
# Foutmelding
```
 Quartz v4.4.0 

✘ [ERROR] Undefined variable.
    ╷
154 │     grid-template-columns: #{map-get($desktopGrid, templateColumns)};
    │                                      ^^^^^^^^^^^^
    ╵
  quartz/styles/base.scss 154:38  @use
  - 1:1                           root stylesheet [plugin sass-plugin]

    quartz/plugins/emitters/componentResources.ts:8:19:
      8 │ import styles from "../../styles/custom.scss"
        ╵                    ~~~~~~~~~~~~~~~~~~~~~~~~~~

Couldn't parse Quartz configuration: ./quartz/build.ts
Reason: Error: Build failed with 1 error:
quartz/plugins/emitters/componentResources.ts:8:19: ERROR: [plugin: sass-plugin] Undefined variable.
    ╷
154 │     grid-template-columns: #{map-get($desktopGrid, templateColumns)};
    │                                      ^^^^^^^^^^^^
    ╵
  quartz/styles/base.scss 154:38  @use
  - 1:1                           root stylesheet
```

# Oplossing
Ik heb gezocht naar `$desktopGrid` in de hoofdrepo van Quartz en vond `https://github.com/jackyzha0/quartz/blob/8889ab63ebf579d7f134d4e83ab21533ad5bda87/quartz/styles/variables.scss#L47` -> Hieruit blijkt dat sommige nieuwe variabelen niet correct werden doorgevoerd naar mijn `variables.scss` bestand.

## Vorige `variables.scss`
```SCSS
/**
 * Layout breakpoints
 * $mobile: screen width below this value will use mobile styles
 * $desktop: screen width above this value will use desktop styles
 * Screen width between $mobile and $desktop width will use the tablet layout.
 * assuming mobile < desktop
 */
$breakpoints: (
  mobile: 800px,
  desktop: 1200px,
);

$mobile: "(max-width: #{map-get($breakpoints, mobile)})";
$tablet: "(min-width: #{map-get($breakpoints, mobile)}) and (max-width: #{map-get($breakpoints, desktop)})";
$desktop: "(max-width: #{map-get($breakpoints, desktop)})";

$pageWidth: #{map-get($breakpoints, mobile)};
$sidePanelWidth: 320px; //380px;
$topSpacing: 6rem;
$boldWeight: 700;
$semiBoldWeight: 600;
$normalWeight: 400;
```

## Nieuwe `variables.scss`
```SCSS
/**
 * Layout breakpoints
 * $mobile: screen width below this value will use mobile styles
 * $desktop: screen width above this value will use desktop styles
 * Screen width between $mobile and $desktop width will use the tablet layout.
 * assuming mobile < desktop
 */
$breakpoints: (
  mobile: 800px,
  desktop: 1200px,
);

$mobile: "(max-width: #{map-get($breakpoints, mobile)})";
$tablet: "(min-width: #{map-get($breakpoints, mobile)}) and (max-width: #{map-get($breakpoints, desktop)})";
$desktop: "(max-width: #{map-get($breakpoints, desktop)})";

$pageWidth: #{map-get($breakpoints, mobile)};
$sidePanelWidth: 320px; //380px;
$topSpacing: 6rem;
$boldWeight: 700;
$semiBoldWeight: 600;
$normalWeight: 400;

$mobileGrid: (
  templateRows: "auto auto auto auto auto",
  templateColumns: "auto",
  rowGap: "5px",
  columnGap: "5px",
  templateAreas:
    '"sidebar-left"\
      "page-header"\
      "page-center"\
      "sidebar-right"\
      "page-footer"',
);
$tabletGrid: (
  templateRows: "auto auto auto auto",
  templateColumns: "#{$sidePanelWidth} auto",
  rowGap: "5px",
  columnGap: "5px",
  templateAreas:
    '"sidebar-left page-header"\
      "sidebar-left page-center"\
      "sidebar-left sidebar-right"\
      "sidebar-left page-footer"',
);
$desktopGrid: (
  templateRows: "auto auto auto",
  templateColumns: "#{$sidePanelWidth} auto #{$sidePanelWidth}",
  rowGap: "5px",
  columnGap: "5px",
  templateAreas:
    '"sidebar-left page-header sidebar-right"\
      "sidebar-left page-center sidebar-right"\
      "sidebar-left page-footer sidebar-right"',
);
```