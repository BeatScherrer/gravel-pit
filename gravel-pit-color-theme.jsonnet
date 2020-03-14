  // colors to be used
  local color = {
    black: "#000000",
    bright_black: "#4e4e4e",
    white: "",
    bright_white: "",
    red: "#FF5E5E",
    bright_red: "",
    green: "",
    bright_green: "",
    blue: "#007acc",
    bright_blue: "",
    yellow: "#ffeac3",
    bright_yellow: "#ffeac3",
    magenta: "#d477ff",
    bright_magenta: "",
    cyan: "#56fff1",
    bright_cyan: "#56fff1",

    gray: "#4e4e4e",
    orange: "#ff9035",
    sand: "#ffeac3"
  };

{
  // Settings
  name: "gravel-pit",
  type: "dark",
  colors: {
    "editor.background": color.black,
    "editor.foreground": "#eeffff",
    "activityBarBadge.background": "#007acc",
    "sideBarTitle.foreground": color.white,
    "// terminal.background": color.black,
    "// terminal.foreground": "#ff0000",
    "// terminal.selectionBackground": "#ff0000",
    "terminal.ansiBlack": color.black,
    "terminal.ansiBrightBlack": "#555555",
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
    "gitDecoration.addedResourceForeground": color.green,
    "gitDecoration.conflictingResourceForeground": color.magenta,
    "gitDecoration.deletedResourceForeground": color.red,
    "gitDecoration.ignoredResourceForeground": color.gray,
    "gitDecoration.modifiedResourceForeground": color.yellow,
    // "gitDecoration.submoduleResourceForeground": "#ff0000",
    "gitDecoration.untrackedResourceForeground": color.gray,
    "minimap.errorHighlight": color.red,
    "minimap.findMatchHighlight": color.yellow,
    "minimap.selectionHighlight": color.cyan,
    "minimap.warningHighlight": color.orange,
    "minimapGutter.addedBackground": color.green,
    "minimapGutter.deletedBackground": color.red,
    "minimapGutter.modifiedBackground": color.yellow,
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
        "string"
      ],
      settings: {
        foreground: color.cyan
      }
    },
    {
      name: "Punctuation",
      scope: [
        "punctuation.section",
        "punctuation.terminator.statement",
        "punctuation.definition.parameters",
        "punctuation.definition.dictionary"
      ],
      settings: {
        foreground: color.white
      }
    },
    {
      name: "Terminator statement",
      scope: [
        "punctuation.terminator.statement"
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
        "markup.list.unnumbered"
      ],
      settings: {
        foreground: color.red
      }
    },
    {
      name: "test",
      scope: [
        "entity.name.function.preprocessor",
        "meta.preprocessor.macro"
      ],
      settings: {
        foreground: color.sand,
        fontStyle: "bold"
      }
    },
    {
      name: "includes",
      scope: [
        "string.quoted.other.lt-gt.include.cpp"
      ],
      settings: {
        foreground: color.sand
      }
    },
    {
      name: "Function Declarations",
      scope: [
        "meta.function",
        "markup.italic"
      ],
      settings: {
        foreground: color.blue
      }
    },
    {
      name: "Function Call",
      scope: [
        "entity.name.function.call",
      ],
      settings: {
        foreground: color.blue
      }
    },
    {
      name: "Methods",
      scope: [
        "entity.name.function.member",

        "markup.bold"
      ],
      settings: {
        foreground: color.green
      }
    },
    {
      name: "Function argument",
      scope: [
        "variable.parameter"
      ],
      settings: {
        foreground: color.orange
      }
    },
    {
      name: "Class and Struct",
      scope : [
        "entity.name.type.class",
        "entity.name.type.struct"
      ],
      settings: {
        foreground: color.green
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
      name: "Special Methods",
      scope: [
        "entity.name.function.constructor",
        "entity.name.function.destructor"
      ],
      settings: {
        foreground: color.green
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
        foreground: color.white
      }
    },
    {
      name: "Control Keywords",
      scope: [
        "keyword.control"
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
      name: "test",
      scope: [
      ],
      settings: {
        foreground: "#ffffff"
      }
    },
  ]
}