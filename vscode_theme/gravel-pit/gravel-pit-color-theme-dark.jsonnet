  // colors to be used
  local color = {

    // terminal colors
    black: "#000000",
    bright_black: "#4e4e4e",
    white: "#bbbbbb",
    bright_white: "#eeffff",
    red: "#ff5e5e",
    bright_red: "#aa5e5e",
    green: "#589c69",
    bright_green: "#85f8a2",
    blue: "#6699cc",
    bright_blue: "",
    yellow: "#ffeac3",
    bright_yellow: "#ffeac3",
    magenta: "#d477ff",
    bright_magenta: "",
    cyan: "#56fff1",
    bright_cyan: "#56fff1",

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
    "editor.background": color.dark_gray,
    "editor.foreground": color.bright_white,
    "activityBarBadge.background": "#007acc",
    "sideBarTitle.foreground": color.white,
    // "terminal.background": color.dark_gray,
    // "terminal.foreground": color.white,
    // "terminal.selectionBackground": "#ff0000",
    // "terminal.ansiBlack": color.black,
    // "terminal.ansiBrightBlack": color.bright_black,
    // "terminal.ansiBlue": color.blue,
    // "terminal.ansiBrightBlue": color.bright_blue,
    // "terminal.ansiGreen": color.green,
    // "terminal.ansiBrightGreen": color.bright_green,
    // "terminal.ansiMagenta": color.magenta,
    // "terminal.ansiBrightMagenta": color.bright_magenta,
    // "terminal.ansiRed": color.red,
    // "terminal.ansiBrightRed": color.bright_red,
    // "terminal.ansiWhite": color.white,
    // "terminal.ansiBrightWhite": color.bright_white,
    // "terminal.ansiYellow": color.yellow,
    // "terminal.ansiBrightYellow": color.bright_yellow,
    // "terminal.ansiCyan": color.cyan,
    // "terminal.ansiBrightCyan": color.bright_cyan,
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
        "punctuation.definition.dictionary",
        "punctuation.separator.dot-access",
        "punctuation.separator.pointer-access",
        "punctuation.definition.tag",
        "punctuation.definition.variable"
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
        "meta.structure.dictionary.json",
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
        "markup.list.unnumbered",
        "entity.name.tag",
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
        "support.function.builtin",
        "support.function.powershell",
        "meta.function-call",
        "markup.italic"
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
        "entity.name.function.definition.special.constructor"
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
        "meta.attribute"
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
        "constant.language.NULL"
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
      name: "test",
      scope: [
        // "punctuation.definition.variable.powershell"
      ],
      settings: {
        foreground: color.red
      }
    },
  ]
}