local colors = {
  _name = "berlinnight_mitte",
  base = "#1A91E5",
  base1 = "#75BDF0",
  base11 = "#75E5F0",
  base12 = "#75D1F0",
  base13 = "#75A8F0",
  base14 = "#7594F0",
  bg = "#191919",
  bg_dark = "#121B21",
  bg_float = "#121B21",
  bg_highlight = "#191919",
  bg_popup = "#121B21",
  bg_sidebar = "#121B21",
  bg_statusline = "#121B21",
  bg_visual = "#FF007C",
  black = "#191919",
  blue = "#7580F0",
  blue1 = "#7580F0",
  blue11 = "#0F1A8A",
  border = "#191919",
  border_highlight = "#7580F0",
  comment = "#476B85",
  cyan = "#75F0E6",
  cyan1 = "#75F0E6",
  cyan11 = "#0F8A80",
  dark3 = "#ACC2D2",
  dark5 = "#CDDBE4",
  diff = {
    add = "#1A8A0F",
    change = "#0F1A8A",
    delete = "#8A0F1A",
    text = "#365063"
  },
  error = "#F07580",
  fg = "#F2F2F2",
  fg_dark = "#476B85",
  fg_float = "#F2F2F2",
  fg_gutter = "#365063",
  fg_sidebar = "#476B85",
  fg_visual = "#191919",
  git = {
    add = "#80F075",
    change = "#F0E575",
    delete = "#F07580",
    ignore = "#ACC2D2"
  },
  gitSigns = {
    add = "#80F075",
    change = "#F0E575",
    delete = "#F07580",
    untrcked = "#365063"
  },
  green = "#80F075",
  green1 = "#80F075",
  green11 = "#1A8A0F",
  grey1 = "#121B21",
  grey2 = "#243642",
  grey3 = "#365063",
  grey4 = "#476B85",
  grey5 = "#8BAAC1",
  grey6 = "#ACC2D2",
  grey7 = "#CDDBE4",
  grey8 = "#EEF3F6",
  hint = "#75D1F0",
  info = "#7594F0",
  magenta = "#E575F0",
  magenta1 = "#E575F0",
  none = "NONE",
  orange = "#F0A875",
  orange1 = "#F0A875",
  pink1 = "#FF007C",
  pink2 = "#FF99CB",
  purple = "#A875F0",
  purple1 = "#A875F0",
  red = "#F07580",
  red1 = "#F07580",
  red11 = "#8A0F1A",
  terminal_black = "#191919",
  todo = "#7580F0",
  warning = "#F0E575",
  white = "#F2F2F2",
  yellow = "#F0E575",
  yellow1 = "#F0E575"
}

local highlights = {
  ["@annotation"] = {
    link = "PreProc"
  },
  ["@attribute"] = {
    link = "PreProc"
  },
  ["@boolean"] = {
    link = "Boolean"
  },
  ["@character"] = {
    link = "Character"
  },
  ["@character.special"] = {
    link = "SpecialChar"
  },
  ["@comment"] = {
    link = "Comment"
  },
  ["@comment.error"] = {
    fg = "#F07580"
  },
  ["@comment.hint"] = {
    fg = "#75D1F0"
  },
  ["@comment.info"] = {
    fg = "#7594F0"
  },
  ["@comment.note"] = {
    fg = "#75D1F0"
  },
  ["@comment.todo"] = {
    fg = "#7580F0"
  },
  ["@comment.warning"] = {
    fg = "#F0E575"
  },
  ["@constant"] = {
    link = "Constant"
  },
  ["@constant.builtin"] = {
    link = "Special"
  },
  ["@constant.macro"] = {
    link = "Define"
  },
  ["@constructor"] = {
    fg = "#A875F0"
  },
  ["@constructor.tsx"] = {
    fg = "#75F0E6"
  },
  ["@diff.delta"] = {
    link = "DiffChange"
  },
  ["@diff.minus"] = {
    link = "DiffDelete"
  },
  ["@diff.plus"] = {
    link = "DiffAdd"
  },
  ["@function"] = {
    link = "Function"
  },
  ["@function.builtin"] = {
    link = "Special"
  },
  ["@function.call"] = {
    link = "@function"
  },
  ["@function.macro"] = {
    link = "Macro"
  },
  ["@function.method"] = {
    link = "Function"
  },
  ["@function.method.call"] = {
    link = "@function.method"
  },
  ["@keyword"] = {
    fg = "#A875F0",
    style = {
      italic = false
    }
  },
  ["@keyword.conditional"] = {
    link = "Conditional"
  },
  ["@keyword.coroutine"] = {
    link = "@keyword"
  },
  ["@keyword.debug"] = {
    link = "Debug"
  },
  ["@keyword.directive"] = {
    link = "PreProc"
  },
  ["@keyword.directive.define"] = {
    link = "Define"
  },
  ["@keyword.exception"] = {
    link = "Exception"
  },
  ["@keyword.function"] = {
    fg = "#A875F0",
    style = {}
  },
  ["@keyword.import"] = {
    link = "Include"
  },
  ["@keyword.operator"] = {
    link = "@operator"
  },
  ["@keyword.repeat"] = {
    link = "Repeat"
  },
  ["@keyword.return"] = {
    link = "@keyword"
  },
  ["@keyword.storage"] = {
    link = "StorageClass"
  },
  ["@label"] = {
    fg = "#75F0E6"
  },
  ["@lsp.type.boolean"] = {
    link = "@boolean"
  },
  ["@lsp.type.builtinType"] = {
    link = "@type.builtin"
  },
  ["@lsp.type.comment"] = {
    link = "@comment"
  },
  ["@lsp.type.decorator"] = {
    link = "@attribute"
  },
  ["@lsp.type.deriveHelper"] = {
    link = "@attribute"
  },
  ["@lsp.type.enum"] = {
    link = "@type"
  },
  ["@lsp.type.enumMember"] = {
    link = "@constant"
  },
  ["@lsp.type.escapeSequence"] = {
    link = "@string.escape"
  },
  ["@lsp.type.formatSpecifier"] = {
    link = "@markup.list"
  },
  ["@lsp.type.generic"] = {
    link = "@variable"
  },
  ["@lsp.type.interface"] = {
    fg = "#9ef5ee"
  },
  ["@lsp.type.keyword"] = {
    link = "@keyword"
  },
  ["@lsp.type.lifetime"] = {
    link = "@keyword.storage"
  },
  ["@lsp.type.namespace"] = {
    link = "@module"
  },
  ["@lsp.type.namespace.python"] = {
    link = "@variable"
  },
  ["@lsp.type.number"] = {
    link = "@number"
  },
  ["@lsp.type.operator"] = {
    link = "@operator"
  },
  ["@lsp.type.parameter"] = {
    link = "@variable.parameter"
  },
  ["@lsp.type.property"] = {
    link = "@property"
  },
  ["@lsp.type.selfKeyword"] = {
    link = "@variable.builtin"
  },
  ["@lsp.type.selfTypeKeyword"] = {
    link = "@variable.builtin"
  },
  ["@lsp.type.string"] = {
    link = "@string"
  },
  ["@lsp.type.typeAlias"] = {
    link = "@type.definition"
  },
  ["@lsp.type.unresolvedReference"] = {
    sp = "#F07580",
    undercurl = true
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.enum.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.enumMember.defaultLibrary"] = {
    link = "@constant.builtin"
  },
  ["@lsp.typemod.function.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.keyword.async"] = {
    link = "@keyword.coroutine"
  },
  ["@lsp.typemod.keyword.injected"] = {
    link = "@keyword"
  },
  ["@lsp.typemod.macro.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.method.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.operator.injected"] = {
    link = "@operator"
  },
  ["@lsp.typemod.string.injected"] = {
    link = "@string"
  },
  ["@lsp.typemod.struct.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.type.defaultLibrary"] = {
    fg = "#63c5bd"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#63c5bd"
  },
  ["@lsp.typemod.variable.callable"] = {
    link = "@function"
  },
  ["@lsp.typemod.variable.defaultLibrary"] = {
    link = "@variable.builtin"
  },
  ["@lsp.typemod.variable.injected"] = {
    link = "@variable"
  },
  ["@lsp.typemod.variable.static"] = {
    link = "@constant"
  },
  ["@markup"] = {
    link = "@none"
  },
  ["@markup.emphasis"] = {
    italic = true
  },
  ["@markup.environment"] = {
    link = "Macro"
  },
  ["@markup.environment.name"] = {
    link = "Type"
  },
  ["@markup.heading"] = {
    link = "Title"
  },
  ["@markup.heading.1.markdown"] = {
    bold = true,
    fg = "#1A91E5"
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = "#A875F0"
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = "#E575F0"
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = "#F07580"
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = "#75F0E6"
  },
  ["@markup.link"] = {},
  ["@markup.link.label"] = {
    link = "SpecialChar"
  },
  ["@markup.link.label.symbol"] = {
    link = "Identifier"
  },
  ["@markup.link.url"] = {
    link = "Underlined"
  },
  ["@markup.list"] = {
    fg = "#75A8F0"
  },
  ["@markup.list.checked"] = {
    fg = "#80F075"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#F0A875"
  },
  ["@markup.list.unchecked"] = {
    fg = "#75F0E6"
  },
  ["@markup.math"] = {
    link = "Special"
  },
  ["@markup.raw"] = {
    link = "String"
  },
  ["@markup.raw.markdown_inline"] = {
    bg = "#191919",
    fg = "#75F0E6"
  },
  ["@markup.strikethrough"] = {
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true
  },
  ["@markup.underline"] = {
    underline = true
  },
  ["@module"] = {
    link = "Include"
  },
  ["@module.builtin"] = {
    fg = "#F07580"
  },
  ["@namespace.builtin"] = {
    link = "@variable.builtin"
  },
  ["@none"] = {},
  ["@number"] = {
    link = "Number"
  },
  ["@number.float"] = {
    link = "Float"
  },
  ["@operator"] = {
    fg = "#80F075"
  },
  ["@property"] = {
    fg = "#75F0E6"
  },
  ["@punctuation.bracket"] = {
    fg = "#476B85"
  },
  ["@punctuation.delimiter"] = {
    fg = "#75A8F0"
  },
  ["@punctuation.special"] = {
    fg = "#75D1F0"
  },
  ["@string"] = {
    link = "String"
  },
  ["@string.documentation"] = {
    fg = "#F0E575"
  },
  ["@string.escape"] = {
    fg = "#A875F0"
  },
  ["@string.regexp"] = {
    fg = "#75D1F0"
  },
  ["@tag"] = {
    link = "Label"
  },
  ["@tag.attribute"] = {
    link = "@property"
  },
  ["@tag.delimiter"] = {
    link = "Delimiter"
  },
  ["@tag.delimiter.tsx"] = {
    fg = "#5961b0"
  },
  ["@tag.tsx"] = {
    fg = "#F07580"
  },
  ["@type"] = {
    link = "Type"
  },
  ["@type.builtin"] = {
    fg = "#75F0E6"
  },
  ["@type.definition"] = {
    link = "Typedef"
  },
  ["@type.qualifier"] = {
    link = "@keyword"
  },
  ["@variable"] = {
    fg = "#F2F2F2",
    style = {}
  },
  ["@variable.builtin"] = {
    fg = "#F07580"
  },
  ["@variable.member"] = {
    fg = "#75F0E6"
  },
  ["@variable.parameter"] = {
    fg = "#F0E575"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#F0E575"
  },
  ALEErrorSign = {
    fg = "#F07580"
  },
  ALEWarningSign = {
    fg = "#F0E575"
  },
  AerialArrayIcon = {
    link = "LspKindArray"
  },
  AerialBooleanIcon = {
    link = "LspKindBoolean"
  },
  AerialClassIcon = {
    link = "LspKindClass"
  },
  AerialColorIcon = {
    link = "LspKindColor"
  },
  AerialConstantIcon = {
    link = "LspKindConstant"
  },
  AerialConstructorIcon = {
    link = "LspKindConstructor"
  },
  AerialEnumIcon = {
    link = "LspKindEnum"
  },
  AerialEnumMemberIcon = {
    link = "LspKindEnumMember"
  },
  AerialEventIcon = {
    link = "LspKindEvent"
  },
  AerialFieldIcon = {
    link = "LspKindField"
  },
  AerialFileIcon = {
    link = "LspKindFile"
  },
  AerialFolderIcon = {
    link = "LspKindFolder"
  },
  AerialFunctionIcon = {
    link = "LspKindFunction"
  },
  AerialInterfaceIcon = {
    link = "LspKindInterface"
  },
  AerialKeyIcon = {
    link = "LspKindKey"
  },
  AerialKeywordIcon = {
    link = "LspKindKeyword"
  },
  AerialMethodIcon = {
    link = "LspKindMethod"
  },
  AerialModuleIcon = {
    link = "LspKindModule"
  },
  AerialNamespaceIcon = {
    link = "LspKindNamespace"
  },
  AerialNullIcon = {
    link = "LspKindNull"
  },
  AerialNumberIcon = {
    link = "LspKindNumber"
  },
  AerialObjectIcon = {
    link = "LspKindObject"
  },
  AerialOperatorIcon = {
    link = "LspKindOperator"
  },
  AerialPackageIcon = {
    link = "LspKindPackage"
  },
  AerialPropertyIcon = {
    link = "LspKindProperty"
  },
  AerialReferenceIcon = {
    link = "LspKindReference"
  },
  AerialSnippetIcon = {
    link = "LspKindSnippet"
  },
  AerialStringIcon = {
    link = "LspKindString"
  },
  AerialStructIcon = {
    link = "LspKindStruct"
  },
  AerialTextIcon = {
    link = "LspKindText"
  },
  AerialTypeParameterIcon = {
    link = "LspKindTypeParameter"
  },
  AerialUnitIcon = {
    link = "LspKindUnit"
  },
  AerialValueIcon = {
    link = "LspKindValue"
  },
  AerialVariableIcon = {
    link = "LspKindVariable"
  },
  Bold = {
    bold = true,
    fg = "#F2F2F2"
  },
  Character = {
    fg = "#75F0E6"
  },
  CmpDocumentation = {
    bg = "#121B21",
    fg = "#F2F2F2"
  },
  CmpDocumentationBorder = {
    bg = "#121B21",
    fg = "#7580F0"
  },
  CmpGhostText = {
    fg = "#191919"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#F2F2F2"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#365063",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#75F0E6"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#75F0E6"
  },
  CmpItemKindArray = {
    link = "LspKindArray"
  },
  CmpItemKindBoolean = {
    link = "LspKindBoolean"
  },
  CmpItemKindClass = {
    link = "LspKindClass"
  },
  CmpItemKindColor = {
    link = "LspKindColor"
  },
  CmpItemKindConstant = {
    link = "LspKindConstant"
  },
  CmpItemKindConstructor = {
    link = "LspKindConstructor"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#476B85"
  },
  CmpItemKindEnum = {
    link = "LspKindEnum"
  },
  CmpItemKindEnumMember = {
    link = "LspKindEnumMember"
  },
  CmpItemKindEvent = {
    link = "LspKindEvent"
  },
  CmpItemKindField = {
    link = "LspKindField"
  },
  CmpItemKindFile = {
    link = "LspKindFile"
  },
  CmpItemKindFolder = {
    link = "LspKindFolder"
  },
  CmpItemKindFunction = {
    link = "LspKindFunction"
  },
  CmpItemKindInterface = {
    link = "LspKindInterface"
  },
  CmpItemKindKey = {
    link = "LspKindKey"
  },
  CmpItemKindKeyword = {
    link = "LspKindKeyword"
  },
  CmpItemKindMethod = {
    link = "LspKindMethod"
  },
  CmpItemKindModule = {
    link = "LspKindModule"
  },
  CmpItemKindNamespace = {
    link = "LspKindNamespace"
  },
  CmpItemKindNull = {
    link = "LspKindNull"
  },
  CmpItemKindNumber = {
    link = "LspKindNumber"
  },
  CmpItemKindObject = {
    link = "LspKindObject"
  },
  CmpItemKindOperator = {
    link = "LspKindOperator"
  },
  CmpItemKindPackage = {
    link = "LspKindPackage"
  },
  CmpItemKindProperty = {
    link = "LspKindProperty"
  },
  CmpItemKindReference = {
    link = "LspKindReference"
  },
  CmpItemKindSnippet = {
    link = "LspKindSnippet"
  },
  CmpItemKindString = {
    link = "LspKindString"
  },
  CmpItemKindStruct = {
    link = "LspKindStruct"
  },
  CmpItemKindText = {
    link = "LspKindText"
  },
  CmpItemKindTypeParameter = {
    link = "LspKindTypeParameter"
  },
  CmpItemKindUnit = {
    link = "LspKindUnit"
  },
  CmpItemKindValue = {
    link = "LspKindValue"
  },
  CmpItemKindVariable = {
    link = "LspKindVariable"
  },
  CmpItemMenu = {
    bg = "NONE",
    fg = "#476B85"
  },
  ColorColumn = {
    bg = "#191919"
  },
  Comment = {
    fg = "#476B85",
    style = {
      italic = false
    }
  },
  Constant = {
    fg = "#F0E575"
  },
  CurSearch = {
    link = "IncSearch"
  },
  Cursor = {
    bg = "#F0A875",
    fg = "#191919"
  },
  CursorColumn = {
    bg = "#191919"
  },
  CursorIM = {
    bg = "#F2F2F2",
    fg = "#191919"
  },
  CursorLine = {
    bg = "#191919"
  },
  CursorLineNr = {
    fg = "#FF007C"
  },
  DapStoppedLine = {
    bg = "#2f2d22"
  },
  Debug = {
    fg = "#F0A875"
  },
  Delimiter = {
    link = "Special"
  },
  DiagnosticError = {
    fg = "#F07580"
  },
  DiagnosticHint = {
    fg = "#75D1F0"
  },
  DiagnosticInfo = {
    fg = "#7594F0"
  },
  DiagnosticUnderlineError = {
    sp = "#F07580",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#75D1F0",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#7594F0",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#F0E575",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#191919"
  },
  DiagnosticVirtualTextError = {
    bg = "#2f2223",
    fg = "#F07580"
  },
  DiagnosticVirtualTextHint = {
    bg = "#222b2f",
    fg = "#75D1F0"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#22252f",
    fg = "#7594F0"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#2f2d22",
    fg = "#F0E575"
  },
  DiagnosticWarn = {
    fg = "#F0E575"
  },
  DiffAdd = {
    bg = "#1A8A0F"
  },
  DiffChange = {
    bg = "#0F1A8A"
  },
  DiffDelete = {
    bg = "#8A0F1A"
  },
  DiffText = {
    bg = "#365063"
  },
  Directory = {
    fg = "#75D1F0"
  },
  EndOfBuffer = {
    fg = "#191919"
  },
  Error = {
    fg = "#F07580"
  },
  ErrorMsg = {
    fg = "#F07580"
  },
  FloatBorder = {
    bg = "#121B21",
    fg = "#FF007C"
  },
  FloatTitle = {
    bg = "#121B21",
    fg = "#FF007C"
  },
  FoldColumn = {
    bg = "#191919",
    fg = "#476B85"
  },
  Folded = {
    bg = "#365063",
    fg = "#75D1F0"
  },
  Foo = {
    bg = "#FF007C",
    fg = "#F2F2F2"
  },
  Function = {
    fg = "#7580F0",
    style = {}
  },
  GitSignsAdd = {
    fg = "#80F075"
  },
  GitSignsChange = {
    fg = "#F0E575"
  },
  GitSignsDelete = {
    fg = "#F07580"
  },
  Headline = {
    link = "Headline1"
  },
  Headline1 = {
    bg = "#1A91E5"
  },
  Headline2 = {
    bg = "#A875F0"
  },
  Headline3 = {
    bg = "#E575F0"
  },
  Headline4 = {
    bg = "#F07580"
  },
  Headline5 = {
    bg = "#75F0E6"
  },
  Hlargs = {
    fg = "#F0E575"
  },
  Identifier = {
    fg = "#FF007C"
  },
  IncSearch = {
    bg = "#FF007C",
    fg = "#191919"
  },
  Italic = {
    fg = "#F2F2F2",
    italic = true
  },
  Keyword = {
    fg = "#FF007C",
    style = {
      italic = false
    }
  },
  LazyProgressDone = {
    bold = true,
    fg = "#E575F0"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#365063"
  },
  LineNr = {
    fg = "#365063"
  },
  LspCodeLens = {
    fg = "#476B85"
  },
  LspInfoBorder = {
    bg = "#121B21",
    fg = "#7580F0"
  },
  LspInlayHint = {
    bg = "#75E5F0",
    fg = "#ACC2D2"
  },
  LspKindArray = {
    link = "@punctuation.bracket"
  },
  LspKindBoolean = {
    link = "@boolean"
  },
  LspKindClass = {
    link = "@type"
  },
  LspKindColor = {
    link = "Special"
  },
  LspKindConstant = {
    link = "@constant"
  },
  LspKindConstructor = {
    link = "@constructor"
  },
  LspKindEnum = {
    link = "@lsp.type.enum"
  },
  LspKindEnumMember = {
    link = "@lsp.type.enumMember"
  },
  LspKindEvent = {
    link = "Special"
  },
  LspKindField = {
    link = "@variable.member"
  },
  LspKindFile = {
    link = "Normal"
  },
  LspKindFolder = {
    link = "Directory"
  },
  LspKindFunction = {
    link = "@function"
  },
  LspKindInterface = {
    link = "@lsp.type.interface"
  },
  LspKindKey = {
    link = "@variable.member"
  },
  LspKindKeyword = {
    link = "@lsp.type.keyword"
  },
  LspKindMethod = {
    link = "@function.method"
  },
  LspKindModule = {
    link = "@module"
  },
  LspKindNamespace = {
    link = "@module"
  },
  LspKindNull = {
    link = "@constant.builtin"
  },
  LspKindNumber = {
    link = "@number"
  },
  LspKindObject = {
    link = "@constant"
  },
  LspKindOperator = {
    link = "@operator"
  },
  LspKindPackage = {
    link = "@module"
  },
  LspKindProperty = {
    link = "@property"
  },
  LspKindReference = {
    link = "@markup.link"
  },
  LspKindSnippet = {
    link = "Conceal"
  },
  LspKindString = {
    link = "@string"
  },
  LspKindStruct = {
    link = "@lsp.type.struct"
  },
  LspKindText = {
    link = "@markup"
  },
  LspKindTypeParameter = {
    link = "@lsp.type.typeParameter"
  },
  LspKindUnit = {
    link = "@lsp.type.struct"
  },
  LspKindValue = {
    link = "@string"
  },
  LspKindVariable = {
    link = "@variable"
  },
  LspReferenceRead = {
    bg = "#365063"
  },
  LspReferenceText = {
    bg = "#365063"
  },
  LspReferenceWrite = {
    bg = "#365063"
  },
  LspSignatureActiveParameter = {
    bg = "#750f41",
    bold = true
  },
  MatchParen = {
    bold = true,
    fg = "#F0E575"
  },
  MiniStatuslineInactive = {
    bg = "NONE",
    fg = "#191919",
    sp = "#191919",
    underline = true
  },
  ModeMsg = {
    bold = true,
    fg = "#476B85"
  },
  MoreMsg = {
    fg = "#75F0E6"
  },
  MsgArea = {
    fg = "#476B85"
  },
  NavicIconsArray = {
    link = "LspKindArray"
  },
  NavicIconsBoolean = {
    link = "LspKindBoolean"
  },
  NavicIconsClass = {
    link = "LspKindClass"
  },
  NavicIconsColor = {
    link = "LspKindColor"
  },
  NavicIconsConstant = {
    link = "LspKindConstant"
  },
  NavicIconsConstructor = {
    link = "LspKindConstructor"
  },
  NavicIconsEnum = {
    link = "LspKindEnum"
  },
  NavicIconsEnumMember = {
    link = "LspKindEnumMember"
  },
  NavicIconsEvent = {
    link = "LspKindEvent"
  },
  NavicIconsField = {
    link = "LspKindField"
  },
  NavicIconsFile = {
    link = "LspKindFile"
  },
  NavicIconsFolder = {
    link = "LspKindFolder"
  },
  NavicIconsFunction = {
    link = "LspKindFunction"
  },
  NavicIconsInterface = {
    link = "LspKindInterface"
  },
  NavicIconsKey = {
    link = "LspKindKey"
  },
  NavicIconsKeyword = {
    link = "LspKindKeyword"
  },
  NavicIconsMethod = {
    link = "LspKindMethod"
  },
  NavicIconsModule = {
    link = "LspKindModule"
  },
  NavicIconsNamespace = {
    link = "LspKindNamespace"
  },
  NavicIconsNull = {
    link = "LspKindNull"
  },
  NavicIconsNumber = {
    link = "LspKindNumber"
  },
  NavicIconsObject = {
    link = "LspKindObject"
  },
  NavicIconsOperator = {
    link = "LspKindOperator"
  },
  NavicIconsPackage = {
    link = "LspKindPackage"
  },
  NavicIconsProperty = {
    link = "LspKindProperty"
  },
  NavicIconsReference = {
    link = "LspKindReference"
  },
  NavicIconsSnippet = {
    link = "LspKindSnippet"
  },
  NavicIconsString = {
    link = "LspKindString"
  },
  NavicIconsStruct = {
    link = "LspKindStruct"
  },
  NavicIconsText = {
    link = "LspKindText"
  },
  NavicIconsTypeParameter = {
    link = "LspKindTypeParameter"
  },
  NavicIconsUnit = {
    link = "LspKindUnit"
  },
  NavicIconsValue = {
    link = "LspKindValue"
  },
  NavicIconsVariable = {
    link = "LspKindVariable"
  },
  NoiceCmdlineIconCmdline = {
    link = "NoiceCmdlinePopupBorder"
  },
  NoiceCmdlinePopupBorder = {
    fg = "#FF007C"
  },
  NoiceCompletionItemKindArray = {
    link = "LspKindArray"
  },
  NoiceCompletionItemKindBoolean = {
    link = "LspKindBoolean"
  },
  NoiceCompletionItemKindClass = {
    link = "LspKindClass"
  },
  NoiceCompletionItemKindColor = {
    link = "LspKindColor"
  },
  NoiceCompletionItemKindConstant = {
    link = "LspKindConstant"
  },
  NoiceCompletionItemKindConstructor = {
    link = "LspKindConstructor"
  },
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#FF007C"
  },
  NoiceCompletionItemKindEnum = {
    link = "LspKindEnum"
  },
  NoiceCompletionItemKindEnumMember = {
    link = "LspKindEnumMember"
  },
  NoiceCompletionItemKindEvent = {
    link = "LspKindEvent"
  },
  NoiceCompletionItemKindField = {
    link = "LspKindField"
  },
  NoiceCompletionItemKindFile = {
    link = "LspKindFile"
  },
  NoiceCompletionItemKindFolder = {
    link = "LspKindFolder"
  },
  NoiceCompletionItemKindFunction = {
    link = "LspKindFunction"
  },
  NoiceCompletionItemKindInterface = {
    link = "LspKindInterface"
  },
  NoiceCompletionItemKindKey = {
    link = "LspKindKey"
  },
  NoiceCompletionItemKindKeyword = {
    link = "LspKindKeyword"
  },
  NoiceCompletionItemKindMethod = {
    link = "LspKindMethod"
  },
  NoiceCompletionItemKindModule = {
    link = "LspKindModule"
  },
  NoiceCompletionItemKindNamespace = {
    link = "LspKindNamespace"
  },
  NoiceCompletionItemKindNull = {
    link = "LspKindNull"
  },
  NoiceCompletionItemKindNumber = {
    link = "LspKindNumber"
  },
  NoiceCompletionItemKindObject = {
    link = "LspKindObject"
  },
  NoiceCompletionItemKindOperator = {
    link = "LspKindOperator"
  },
  NoiceCompletionItemKindPackage = {
    link = "LspKindPackage"
  },
  NoiceCompletionItemKindProperty = {
    link = "LspKindProperty"
  },
  NoiceCompletionItemKindReference = {
    link = "LspKindReference"
  },
  NoiceCompletionItemKindSnippet = {
    link = "LspKindSnippet"
  },
  NoiceCompletionItemKindString = {
    link = "LspKindString"
  },
  NoiceCompletionItemKindStruct = {
    link = "LspKindStruct"
  },
  NoiceCompletionItemKindText = {
    link = "LspKindText"
  },
  NoiceCompletionItemKindTypeParameter = {
    link = "LspKindTypeParameter"
  },
  NoiceCompletionItemKindUnit = {
    link = "LspKindUnit"
  },
  NoiceCompletionItemKindValue = {
    link = "LspKindValue"
  },
  NoiceCompletionItemKindVariable = {
    link = "LspKindVariable"
  },
  NoiceMini = {
    bg = "NONE",
    fg = "#FF007C"
  },
  NoicePopup = {
    bg = "NONE",
    fg = "#FF007C"
  },
  NonText = {
    fg = "#365063"
  },
  Normal = {
    bg = "#191919",
    fg = "#F2F2F2"
  },
  NormalFloat = {
    bg = "#121B21",
    fg = "#F2F2F2"
  },
  NormalNC = {
    bg = "#191919",
    fg = "#F2F2F2"
  },
  NormalSB = {
    bg = "#121B21",
    fg = "#476B85"
  },
  NotifyBackground = {
    bg = "#191919",
    fg = "#F2F2F2"
  },
  NotifyDEBUGBody = {
    bg = "#191919",
    fg = "#F2F2F2"
  },
  NotifyDEBUGBorder = {
    bg = "#191919",
    fg = "#476B85"
  },
  NotifyDEBUGIcon = {
    fg = "#476B85"
  },
  NotifyDEBUGTitle = {
    fg = "#476B85"
  },
  NotifyERRORBody = {
    bg = "#191919",
    fg = "#F2F2F2"
  },
  NotifyERRORBorder = {
    bg = "#191919",
    fg = "#F07580"
  },
  NotifyERRORIcon = {
    fg = "#F07580"
  },
  NotifyERRORTitle = {
    fg = "#F07580"
  },
  NotifyINFOBody = {
    bg = "#191919",
    fg = "#F2F2F2"
  },
  NotifyINFOBorder = {
    bg = "#191919",
    fg = "#7594F0"
  },
  NotifyINFOIcon = {
    fg = "#7594F0"
  },
  NotifyINFOTitle = {
    fg = "#7594F0"
  },
  NotifyTRACEBody = {
    bg = "#191919",
    fg = "#F2F2F2"
  },
  NotifyTRACEBorder = {
    bg = "#191919",
    fg = "#A875F0"
  },
  NotifyTRACEIcon = {
    fg = "#A875F0"
  },
  NotifyTRACETitle = {
    fg = "#A875F0"
  },
  NotifyWARNBody = {
    bg = "#191919",
    fg = "#F2F2F2"
  },
  NotifyWARNBorder = {
    bg = "#191919",
    fg = "#F0E575"
  },
  NotifyWARNIcon = {
    fg = "#F0E575"
  },
  NotifyWARNTitle = {
    fg = "#F0E575"
  },
  Operator = {
    fg = "#E575F0"
  },
  Pmenu = {
    bg = "#121B21",
    fg = "#F2F2F2"
  },
  PmenuSbar = {
    bg = "#1e262c"
  },
  PmenuSel = {
    bg = "#304554"
  },
  PmenuThumb = {
    bg = "#365063"
  },
  PreProc = {
    fg = "#75F0E6"
  },
  Question = {
    fg = "#75F0E6"
  },
  QuickFixLine = {
    bg = "#FF007C",
    bold = true
  },
  Search = {
    bg = "#8BAAC1",
    fg = "#191919"
  },
  SignColumn = {
    bg = "#191919",
    fg = "#365063"
  },
  SignColumnSB = {
    link = "SignColumn"
  },
  Special = {
    fg = "#75F0E6"
  },
  SpecialKey = {
    fg = "#FF007C"
  },
  SpellBad = {
    sp = "#F07580",
    undercurl = true
  },
  SpellCap = {
    sp = "#F0E575",
    undercurl = true
  },
  SpellLocal = {
    sp = "#7594F0",
    undercurl = true
  },
  SpellRare = {
    sp = "#75D1F0",
    undercurl = true
  },
  Statement = {
    fg = "#A875F0"
  },
  StatusLine = {
    bg = "#121B21",
    fg = "#476B85"
  },
  StatusLineNC = {
    bg = "NONE",
    fg = "#191919",
    sp = "#191919",
    underline = true
  },
  String = {
    fg = "#CDDBE4"
  },
  Substitute = {
    link = "IncSearch"
  },
  TabLine = {
    bg = "#121B21",
    fg = "#365063"
  },
  TabLineFill = {
    bg = "#191919"
  },
  TabLineSel = {
    bg = "#75F0E6",
    fg = "#191919"
  },
  TelescopeBorder = {
    bg = "#121B21",
    fg = "#7580F0"
  },
  TelescopeNormal = {
    bg = "#121B21",
    fg = "#F2F2F2"
  },
  TelescopePromptBorder = {
    bg = "#121B21",
    fg = "#FF007C"
  },
  TelescopePromptTitle = {
    bg = "#121B21",
    fg = "#FF007C"
  },
  Title = {
    bold = true,
    fg = "#7580F0"
  },
  Todo = {
    bg = "#F0E575",
    fg = "#191919"
  },
  TreesitterContext = {
    bg = "#365063"
  },
  TroubleCount = {
    bg = "#365063",
    fg = "#A875F0"
  },
  TroubleNormal = {
    bg = "#121B21",
    fg = "#F2F2F2"
  },
  TroubleText = {
    fg = "#476B85"
  },
  Type = {
    fg = "#75D1F0"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    bold = true,
    fg = "#191919"
  },
  Visual = {
    bg = "#FF007C",
    fg = "#191919"
  },
  VisualNOS = {
    bg = "#FF007C"
  },
  WarningMsg = {
    fg = "#F0E575"
  },
  WhichKey = {
    fg = "#F0E575"
  },
  WhichKeyBorder = {
    bg = "#FF007C",
    fg = "#FF007C"
  },
  WhichKeyDesc = {
    fg = "#A875F0"
  },
  WhichKeyFloat = {
    bg = "#121B21"
  },
  WhichKeyGroup = {
    fg = "#75F0E6"
  },
  WhichKeySeperator = {
    fg = "#FF007C"
  },
  WhichKeyValue = {
    fg = "#CDDBE4"
  },
  Whitespace = {
    fg = "#365063"
  },
  WildMenu = {
    bg = "#FF007C"
  },
  WinBar = {
    link = "StatusLine"
  },
  WinBarNC = {
    link = "StatusLineNC"
  },
  WinSeparator = {
    link = "VertSplit"
  },
  debugBreakpoint = {
    bg = "#7594F0",
    fg = "#7594F0"
  },
  debugPC = {
    bg = "#121B21"
  },
  diffAdded = {
    fg = "#80F075"
  },
  diffChanged = {
    fg = "#F0E575"
  },
  diffFile = {
    fg = "#75F0E6"
  },
  diffIndexLine = {
    fg = "#A875F0"
  },
  diffLine = {
    fg = "#476B85"
  },
  diffNewFile = {
    fg = "#F0A875"
  },
  diffOldFile = {
    fg = "#F0E575"
  },
  diffRemoved = {
    fg = "#F07580"
  },
  dosIniLabel = {
    link = "@property"
  },
  healthError = {
    fg = "#F07580"
  },
  healthSuccess = {
    fg = "#80F075"
  },
  healthWarning = {
    fg = "#F0E575"
  },
  helpCommand = {
    bg = "#191919",
    fg = "#75F0E6"
  },
  htmlH1 = {
    bold = true,
    fg = "#A875F0"
  },
  htmlH2 = {
    bold = true,
    fg = "#7580F0"
  },
  lCursor = {
    bg = "#F2F2F2",
    fg = "#191919"
  },
  markdownCode = {},
  markdownCodeBlock = {},
  markdownH1 = {
    bold = true,
    fg = "#A875F0"
  },
  markdownH2 = {
    bold = true,
    fg = "#7580F0"
  },
  markdownHeadingDelimiter = {
    bold = true,
    fg = "#F0A875"
  },
  markdownLinkText = {
    fg = "#7580F0",
    underline = true
  },
  mkdCodeDelimiter = {
    bg = "#191919",
    fg = "#F2F2F2"
  },
  mkdCodeEnd = {
    bold = true
  },
  mkdCodeStart = {
    bold = true
  },
  qfFileName = {
    fg = "#75F0E6"
  },
  qfLineNr = {
    fg = "#CDDBE4"
  }
}
