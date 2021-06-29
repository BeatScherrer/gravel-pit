  // colors to be used
local color = {
    // special colors
  foreground:      "#c5c8c6",
  background:      "#1d1f21",
  cursor_color:    "#c5c8c6",

  // terminal colors
  black:           "#282a2e",
  bright_black:    "#555b65",
  white:           "#707880",
  bright_white:    "#c5c8c6",
  red:             "#a54242",
  bright_red:      "#cc6666",
  green:           "#8c9440",
  bright_green:    "#b5bd68",
  blue:            "#5f819d",
  bright_blue:     "#81a2be",
  yellow:          "#de935f",
  bright_yellow:   "#ffeac3",
  magenta:         "#85678f",
  bright_magenta:  "#b294bb",
  cyan:            "#5e8d87",
  bright_cyan:     "#8abeb7",

  /*
  To adjust a color theme just assign the following colors. The above colors are mainly used to set the terminal colors and to retrieve the Xresources colors for a consistent theme on your system.

  Specify the tokens as high level as possible in the general section and.
  The different languages have their own section due to unique language specific behavior such as different include syntaxes etc. Other than that languages like md, latex etc. cannot be captured with the general token assignment and would dillute the token semantics.
  */

  // Theme colors:
  comment_color: color.bright_black,
  string_color: color.bright_cyan,
  color_1: color.red,
  color_2: color.bright_yellow,
  color_3: color.bright_blue,
  color_4: color.bright_green,
  color_5: "",
  color_6: "",
  color_7: "",
  color_8: "",
  color_9: "",
  color_10: "",
  color_11: "",
  color_12: "",
  color_13: "",
  color_14: "",
  color_15: "",
  color_16: "",
};

{
  // Settings
  name: "gravel-pit",
  type: "dark",
  colors: {
    // General
    // Editor
    "editor.background": color.background,
    "editor.foreground": color.foreground,
    "editorGroup.border": color.cyan,
    "editorGroup.dropBackground": color.cyan,
    "activityBarBadge.background": color.blue,
    "activityBarBadge.foreground": color.bright_white,
    "activityBar.background": color.black,
    "sideBarTitle.foreground": color.foreground,

    // terminal
    "terminal.background": color.background,
    "terminal.foreground": color.foreground,
    "terminal.selectionBackground": color.bright_cyan,
    "terminal.ansiBlack": color.black,
    "terminal.ansiBrightBlack": color.bright_black,
    "terminal.ansiBlue": color.blue,
    "terminal.ansiBrightBlue": color.color_3,
    "terminal.ansiGreen": color.green,
    "terminal.ansiBrightGreen": color.color_4,
    "terminal.ansiMagenta": color.magenta,
    "terminal.ansiBrightMagenta": color.bright_magenta,
    "terminal.ansiRed": color.color_1,
    "terminal.ansiBrightRed": color.bright_red,
    "terminal.ansiWhite": color.white,
    "terminal.ansiBrightWhite": color.bright_white,
    "terminal.ansiYellow": color.yellow,
    "terminal.ansiBrightYellow": color.color_2,
    "terminal.ansiCyan": color.cyan,
    "terminal.ansiBrightCyan": color.bright_cyan,

    // git
    "gitDecoration.addedResourceForeground": color.green,
    "gitDecoration.conflictingResourceForeground": color.magenta,
    "gitDecoration.deletedResourceForeground": color.color_1,
    "gitDecoration.ignoredResourceForeground": color.white,
    "gitDecoration.modifiedResourceForeground": color.color_2,
    // "gitDecoration.submoduleResourceForeground": "#ff0000",
    // "gitDecoration.untrackedResourceForeground": color.gray,

    // minimap
    "minimap.errorHighlight": color.color_1,
    "minimap.findMatchHighlight": color.color_3,
    "minimap.selectionHighlight": color.cyan,
    "minimap.warningHighlight": color.yellow,
    "minimapGutter.addedBackground": color.green,
    "minimapGutter.deletedBackground": color.color_1,
    "minimapGutter.modifiedBackground": color.yellow,
  },
  tokenColors: [
    # -------
    # General
    # -------
    {
      name: "text",
      scope: [
        "text"
      ],
      settings: {
        foreground: color.foreground
      },
    },
    {
      name: "punctuation",
      scope: [
        "punctuation"
      ],
      settings: {
        foreground: color.color_2
      },
    },
    {
      name: "string",
      scope: [
        "string"
      ],
      settings: {
        foreground: color.string_color
      },
    },
    {
      name: "variable",
      scope: [
        "variable"
      ],
      settings: {
        foreground: color.foreground
      },
    },
    {
      name: "comment",
      scope: [
        "comment"
      ],
      settings: {
        foreground: color.comment_color
      },
    },
    {
      name: "function",
      scope: [
        "entity.name.function",
        "support.function"
      ],
      settings: {
        foreground: color.color_3
      },
    },

    # --------------
    # markdown rules
    # --------------
    {
      name: "text",
      scope: [
        "meta.paragraph.markdown"
      ],
      settings: {
        foreground: color.foreground
      },
    },
    {
      name: "Header",
      scope: [
        "markup.heading"
      ],
      settings: {
        fontStyle: "bold",
        foreground: color.color_2
      },
    },
    {
      name: "code",
      scope: [
        "markup.fenced_code",
        "markup.inline"
      ],
      settings: {
        foreground: color.bright_magenta
      },
    },
    {
      name: "list",
      scope: [
        "markup.list",
        "punctuation.list"
      ],
      settings: {
        foreground: color.color_4
      },
    },
    {
      name: "bold",
      scope: [
        "markup.bold"
      ],
      settings: {
        foreground: color.bright_red,
        fontStyle: 'bold'
      },
    },
    {
      name: "italic",
      scope: [
        "markup.italic"
      ],
      settings: {
        foreground: color.color_4,
        fontStyle: 'italic'
      },
    },
   {
      name: "links",
      scope: [
        "meta.link"
      ],
      settings: {
        foreground: color.blue
      },
    },
    # ---
    # XML
    # ---
    {
      name: "text",
      scope: [
        "meta.paragraph.markdown"
      ],
      settings: {
        foreground: color.foreground
      },
    },
    {
      name: "tag",
      scope: [
        "entity.name.tag",
      ],
      settings: {
        foreground: color.bright_red
      },
    },
    {
      name: "attribute",
      scope: [
        "entity.other.attribute-name"
      ],
      settings: {
        foreground: color.yellow
      },
    },
    # ---
    # C++
    # ---
    {
      name: "Source",
      scope: [
        "source",
      ],
      settings: {
        foreground: color.color_2
      }
    },
    {
      name: "Operators",
      scope: [
        "keyword.operator",
      ],
      settings: {
        foreground: color.color_2
      }
    },
    {
      name: "keywords",
      scope: [
        "storage.type",
      ],
      settings: {
        foreground: color.color_2
      }
    },
    {
      name: "Storage modifier",
      scope: [
        "storage.modifier",
        "storage.type.modifier"
      ],
      settings: {
        foreground: color.color_2
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
        "punctuation.definition.directive.cpp",
        "variable.language.this"
      ],
      settings: {
        foreground: color.bright_red
      }
    },
    {
      name: "preprocessor arg",
      scope: [
        "punctuation.definition.string"
      ],
      settings: {
        foreground: color.string_color
      },
    },
    {
      name: "Methods",
      scope: [
        "entity.name.function.definition",
        "entity.name.function.java",
      ],
      settings: {
        foreground: color.color_4
      }
    },
    {
      name: "Function argument",
      scope: [
        "variable.parameter",
      ],
      settings: {
        foreground: color.yellow
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
      name: "Class Access Modifiers",
      scope: [
        "storage.type.modifier",
        "storage.modifier.specifier.functional"
      ],
      settings: {
        foreground: color.color_2
      }
    },
    {
      name: "Inherited",
      scope: [
        "entity.name.type.inherited"
      ],
      settings: {
        foreground: color.color_4,
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
        foreground: color.color_2
      }
    },
    {
      name: "Control Keywords",
      scope: [
        "keyword.control",
        "constant.language.NULL",
        "keyword.other.item.latex",
        "keyword.other.array.begin",
      ],
      settings: {
        foreground: color.bright_red
      }
    },
    {
      name: "Template",
      scope: [
        "storage.type.template",
      ],
      settings: {
        foreground: color.bright_magenta
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
  ]
}