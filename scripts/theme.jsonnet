  // colors to be used
  local color = {
black:           "#282a2e",
    bright_black:    "#373b41",
    white:           "#707880",
    bright_white:    "#c5c8c6",
    red:             "#a54242",
    bright_red:      "#c5c8c6",
    green:           "#8c9440",
    bright_green:    "#b5bd68",
    blue:            "#5f819d",
    bright_blue:     "#81a2be",
    yellow:          "#de935f",
    bright_yellow:   "#f0c674",
    magenta:         "#85678f",
    bright_magenta:  "#b294bb",
    cyan:            "#5e8d87",
    bright_cyan:     "#8abeb7",
    black:           "#282a2e",
    bright_black:    "#373b41",
    white:           "#707880",
    bright_white:    "#c5c8c6",
    red:             "#a54242",
    bright_red:      "#c5c8c6",
    green:           "#8c9440",
    bright_green:    "#b5bd68",
    blue:            "#5f819d",
    bright_blue:     "#81a2be",
    yellow:          "#de935f",
    bright_yellow:   "#f0c674",
    magenta:         "#85678f",
    bright_magenta:  "#b294bb",
    cyan:            "#5e8d87",
    bright_cyan:     "#8abeb7",

    // terminal colors

    // theme colors
    gray: "#8a8a8a",
    dark_gray: "#252525",
    orange: "#ff9035",
    sand: "#ffeac3"
  };

{
  // Settings
  name: "gravel-pit",
  type: "dark",
  colors: {
    "editor.background": color.bright_black,
    "editor.foreground": color.bright_white,
    "activityBarBadge.background": "#007acc",
    "sideBarTitle.foreground": color.white,
    // terminal colors
    "terminal.background": color.dark_gray,
    "terminal.foreground": color.white,
    "terminal.selectionBackground": "#ff0000",
    "terminal.ansiBlack": color.black,
    "terminal.ansiBrightBlack": color.bright_black,
    "terminal.ansiBlue": color.blue,
    "terminal.ansiBrightBlue": color.bright_blue,
    "terminal.ansiGreen": color.green,
    "terminal.ansiBrightGreen": color.bright_green,
    "terminal.ansiMagenta": color.magenta,
    "terminal.ansiBrightMagenta": color.bright_magenta,
    "terminal.ansiRed": color.red,
    "terminal.ansiBrightRed": color.bright_red,
    "terminal.ansiWhite": color.white,
    "terminal.ansiBrightWhite": color.bright_white,
    "terminal.ansiYellow": color.yellow,
    "terminal.ansiBrightYellow": color.bright_yellow,
    "terminal.ansiCyan": color.cyan,
    "terminal.ansiBrightCyan": color.bright_cyan,
    // "gitDecoration.addedResourceForeground": color.green,
    // "gitDecoration.conflictingResourceForeground": color.magenta,
    // "gitDecoration.deletedResourceForeground": color.red,
    // "gitDecoration.ignoredResourceForeground": color.gray,
    // "gitDecoration.modifiedResourceForeground": color.orange,
    // "gitDecoration.submoduleResourceForeground": "#ff0000",
    // "gitDecoration.untrackedResourceForeground": color.gray,
    // "minimap.errorHighlight": color.red,
    // "minimap.findMatchHighlight": color.yellow,
    // "minimap.selectionHighlight": color.cyan,
    // "minimap.warningHighlight": color.orange,
    // "minimapGutter.addedBackground": color.green,
    // "minimapGutter.deletedBackground": color.red,
    // "minimapGutter.modifiedBackground": color.yellow,
  },
  tokenColors: [
    {
      name: "Comment",
      scope: [
        "comment",
        "punctuation.definition.comment"
      ],
      settings: {
        fontStyle: "italic",
        foreground: color.gray
      }
    },
    {
      name: "String",
      scope: [
        "string",
        "entity.name.section.latex"
      ],
      settings: {
        foreground: color.cyan
      }
    },
    {
      name: "Source",
      scope: [
        "source",
        "text.xml"
      ],
      settings: {
        foreground: color.sand
      }
    },
    {
      name: "Punctuation",
      scope: [
        "punctuation.section",
        "punctuation.terminator.statement",
        "punctuation.definition.parameters",
        "punctuation.definition.dictionary",
        "punctuation.separator.dot-access",
        "punctuation.separator.pointer-access",
        "punctuation.definition.tag",
        "punctuation.definition.variable",
      ],
      settings: {
        foreground: color.sand
      }
    },
    {
      name: "Terminator statement",
      scope: [
        "punctuation.terminator"
      ],
      settings: {
        foreground: color.white
      }
    },
    {
      name: "Operators",
      scope: [
        "keyword.operator",
      ],
      settings: {
        foreground: color.sand
      }
    },
    {
      name: "keywords",
      scope: [
        "storage.type",
        "support.type.property-name.json.comments",
        "markup.heading"
      ],
      settings: {
        foreground: color.sand
      }
    },
    {
      name: "Storage modifier",
      scope: [
        "storage.modifier",
        "storage.type.modifier"
      ],
      settings: {
        foreground: color.sand
      }
    },
    {
      name: "Preprocessor",
      scope: [
        "meta.preprocessor",
        "keyword.control.directive.conditional",
        "keyword.control.directive.define",
        "keyword.control.directive.include",
        "keyword.other.using.directive.cpp",
        "keyword.other.package.java",
        "keyword.other.import",
        "markup.list.unnumbered",
        "entity.name.tag",
      ],
      settings: {
        foreground: color.red
      }
    },
    {
      name: "includes",
      scope: [
        "string.quoted.other.lt-gt.include.cpp",
        "string.quoted.double.include"
      ],
      settings: {
        foreground: color.cyan
      }
    },
    {
      name: "Function Call",
      scope: [
        "entity.name.function.call",
        "entity.name.function.member",
        "entity.name.function",
        "support.function.builtin",
        "support.function.powershell",
        "support.function.be",
        "support.function.section.latex",
        "support.function.texttt.latex",
        "support.function.emph.latex",
        "support.function.general.tex",
        "meta.function-call",
        "markup.italic",
        "keyword.cmake"
      ],
      settings: {
        foreground: color.blue
      }
    },
    {
      name: "Methods",
      scope: [
        "entity.name.function.definition",
        "entity.name.function.java",
        "markup.bold"
      ],
      settings: {
        foreground: color.green
      }
    },
    {
      name: "Function argument",
      scope: [
        "variable.parameter",
        "entity.other.attribute-name"

      ],
      settings: {
        foreground: color.orange
      }
    },
    {
      name: "Class and Struct",
      scope : [
        "entity.name.type.class",
        "entity.name.type.struct",
        "entity.name.function.definition.special.constructor",
        "support.class"
      ],
      settings: {
        foreground: color.green
      }
    },
    {
      name: "Member variables",
      scope: [
        "variable.other.property.cpp",
        "variable.other.object.access.cpp",
        "variable.other.object.property",
        "variable.other.member",
        "meta.attribute",
        "meta.math.block"
      ],
      settings: {
        foreground: color.bright_green
      }
    },
    {
      name: "Class Access Modifiers",
      scope: [
        "storage.type.modifier",
        "storage.modifier.specifier.functional"
      ],
      settings: {
        foreground: color.sand
      }
    },
    {
      name: "Inherited",
      scope: [
        "entity.name.type.inherited"
      ],
      settings: {
        foreground: color.bright_green,
        fontStyle: "italic"
      }
    },
    {
      name: "Namespace",
      scope: [
        "entity.name.namespace",
        "entity.name.scope-resolution",
        "punctuation.separator.namespace.access"
      ],
      settings: {
        foreground: color.sand
      }
    },
    {
      name: "variables",
      scope: [
        "variable"
      ],
      settings: {
        foreground: color.bright_white
      }
    },
    {
      name: "Control Keywords",
      scope: [
        "keyword.control",
        "keyword.other.array.begin",
        "constant.language.NULL",
        "keyword.other.item.latex",
      ],
      settings: {
        foreground: color.red
      }
    },
    {
      name: "Template",
      scope: [
        "storage.type.template"
      ],
      settings: {
        foreground: color.magenta
      }
    },
    {
      name: "Constants",
      scope: [
        "constant.language",
        "variable.language.this.java"
      ],
      settings: {
        foreground: color.bright_red
      }
    },
    {
      name: "Test",
      scope: [
        "support.type.property-name",
        "support.type.property-name.json.comments",
      ],
      settings: {
        foreground: color.red
      }
    }
  ]
}