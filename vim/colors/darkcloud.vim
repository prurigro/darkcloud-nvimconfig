"============================================================="
"                                                             "
"  Darkcloud Neovim Config: theme                             "
"                                                             "
"  By: Kevin MacMartin (prurigro@gmail.com)                   "
"  Website: https://github.com/prurigro/darkcloud-nvimconfig  "
"                                                             "
"  License: MIT                                               "
"                                                             "
"============================================================="

"remove all the colours before writing our own
hi clear

if exists("syntax_on")
    syntax reset
endif

"declare the name of our theme
let colors_name = "darkcloud"

"declare the term type
if has("gui_running") || &termguicolors
    let g:term_colors_type = "gui"
else
    set notermguicolors "required to use cterm colors
    let g:term_colors_type = "cterm"
endif

"sets the highlighting for the given group | format: s:C("Name","Foreground","Background","Style")
fun! s:C(group, fg, bg, attr)
    if a:fg != ""
        exec "hi " . a:group . " " . g:term_colors_type . "fg=" . a:fg
    else
        exec "hi " . a:group . " " . g:term_colors_type . "fg=NONE"
    endif

    if a:bg != ""
        exec "hi " . a:group . " " . g:term_colors_type . "bg=" . a:bg
    else
        exec "hi " . a:group . " " . g:term_colors_type . "bg=NONE"
    endif

    if a:attr != ""
        exec "hi " . a:group . " " . g:term_colors_type . "=" . a:attr
    else
        exec "hi " . a:group . " " . g:term_colors_type . "=NONE"
    endif
endfun

"SYNTAX COLORS:

"SPELL CHECKING UNDERLINE: {{{
    call s:C("SpellBad",g:cRed,"","italic,undercurl")
    call s:C("SpellCap",g:cYellow,"","italic,undercurl")
    call s:C("SpellLocal","","","")
    call s:C("SpellRare","","","")
"}}}

"CORE: {{{
    call s:C("Normal",g:cWhite,g:cDarkBg,"")
    hi! link Conceal Normal

    "cursor
    call s:C("Cursor","",g:cDarkBg,"standout")

    if &term != "linux"
        call s:C("CursorColumn","",g:cLightBg,"")
        call s:C("CursorLine","",g:cLightBg,"")
        call s:C("CursorLineNr",g:cBlue,g:cLightBg,"bold")
    else
        call s:C("CursorColumn","","","")
        call s:C("CursorLine","","","")
        call s:C("CursorLineNr",g:cBlue,"","bold")
    end

    "line number
    call s:C("LineNr",g:cGray4,"","bold")

    "selected text
    call s:C("Visual","","","standout")

    "vertical split divider
    call s:C("VertSplit",g:cGray1,"","")

    "matched parenthesis
    call s:C("MatchParen","","","underline,bold")

    "whitespace
    call s:C("ExtraWhiteSpace",g:cDarkRed,g:cDarkBg,"")

    "menu call
    call s:C("Pmenu",g:cBlue,g:cLightBg,"")
    call s:C("PmenuSel",g:cBlue,g:cLightBg,"bold")

    "search
    call s:C("Search","","","standout")
    hi! link IncSearch Search
    hi! link IncSearchCursor IncSearch
    hi! link IncSearchMatch Search
    hi! link IncSearchMatchReverse Search
    hi! link IncSearchOnCursor IncSearch

    "quickfix
    call s:C("QuickFixLine","","","bold,underline")
    call s:C("qfLineNr",g:cYellow,"","")

    "status line
    call s:C("StatusLine","",g:cLightBg,"")
    call s:C("WildMenu",g:cGray1,g:cLightBg,"")
    hi! link StatusLineNC StatusLine

    "folding
    call s:C("FoldColumn",g:cWhite,"","bold")
    call s:C("Folded",g:cBlue,g:cLightBg,"bold")
    call s:C("SignColumn",g:cRed,"","bold")
    hi! link ColorColumn SignColumn

    "syntax style
    call s:C("Boolean",g:cYellow,"","bold")
    call s:C("Comment",g:cGray3,"","italic")
    call s:C("Conditional",g:cYellow,"","")
    call s:C("Constant",g:cBlue,"","bold")
    call s:C("Delimiter",g:cWhite,"","")
    call s:C("Directory",g:cBlue,"","")
    call s:C("Function",g:cBlue,"","bold")
    call s:C("Identifier",g:cBlue,"","bold")
    call s:C("Keyword",g:cBlue,"","bold")
    call s:C("Label",g:cRed,"","")
    call s:C("NonText",g:cGray4,"","")
    call s:C("Number",g:cRed,"","bold")
    call s:C("Operator",g:cRed,"","")
    call s:C("PreProc",g:cYellow,"","")
    call s:C("Question",g:cBlue,"","")
    call s:C("Special",g:cYellow,"","bold")
    call s:C("SpecialKey",g:cGray3,"","")
    call s:C("Statement",g:cYellow,"","")
    call s:C("String",g:cWhite,"","bold")
    call s:C("StringDelimiter",g:cGray2,"","")
    call s:C("Tag",g:cYellow,"","")
    call s:C("Title",g:cRed,"","bold")
    call s:C("Todo",g:cRed,"","bold")
    call s:C("Type",g:cRed,"","bold")
    call s:C("Typedef",g:cRed,"","bold")
    hi! link Character String
    hi! link Float Number
    hi! link Include Keyword
    hi! link MoreMsg Special
    hi! link SpecialChar String
    hi! link StorageClass Type
    hi! link Structure PreProc

    "errors
    call s:C("Error",g:cRed,g:cBlack,"standout")
    hi! link ErrorMsg Error
    hi! link WarningMsg Error

    "diff
    call s:C("DiffAdd",g:cYellow,"","standout")
    call s:C("DiffAdded",g:cBlue,"","bold")
    call s:C("DiffChange",g:cBlue,"","standout")
    call s:C("DiffDelete",g:cRed,"","standout")
    call s:C("DiffFile","","","")
    call s:C("DiffRemoved",g:cRed,"","bold")
    call s:C("DiffText",g:cGray2,"","standout")
    call s:C("diffIndexLine",g:cGray2,"","italic")
    call s:C("diffNewFile",g:cBlue,"","bold,italic")
    call s:C("diffOldFile",g:cRed,"","bold,italic")
"}}}

"LANGUAGE: {{{
    "c
    call s:C("cBraces",g:cYellow,"","")
    hi! link cBlock String
    hi! link cBlock cBraces
    hi! link cNumbersCom Number

    "coffeeScript
    hi! link coffeeRegExp javaScriptRegexpString

    "css/sass
    call s:C("cssBraces",g:cBlue,"","")
    call s:C("cssValueNumber",g:cYellow,"","bold")
    call s:C("cssValueLength",g:cYellow,"","bold")
    call s:C("cssValueTime",g:cYellow,"","bold")
    call s:C("cssUnitDecorators",g:cYellow,"","bold")
    call s:C("sassAmpersand",g:cBlue,"","bold")
    call s:C("sassClass",g:cGray1,"","bold")
    call s:C("sassClassChar",g:cBlue,"","bold")
    call s:C("sassDefinition",g:cGray2,"","bold")
    call s:C("sassMediaQuery",g:cGray2,"","bold")
    call s:C("sassMixinName",g:cGray2,"","bold")
    hi! link sassProperty Type

    "dosini
    hi! link dosiniLabel Function

    "gitcommit
    call s:C("gitcommitFile",g:cRed,"","")
    call s:C("gitcommitSummary",g:cWhite,"","")
    call s:C("gitcommitType",g:cBlue,"","")

    "html
    call s:C("htmlArg",g:cRed,"","bold")
    call s:C("htmlBold",g:cWhite,"","bold")
    call s:C("htmlH1",g:cRed,"","bold")
    call s:C("htmlH2",g:cBlue,"","bold")
    call s:C("htmlH3",g:cYellow,"","bold")
    call s:C("htmlH4",g:cRed,"","italic")
    call s:C("htmlH5",g:cBlue,"","italic")
    call s:C("htmlH6",g:cYellow,"","italic")
    call s:C("htmlLink",g:cRed,"","")
    call s:C("htmlSpecialChar","","","italic")
    call s:C("htmlTagName",g:cYellow,"","bold")

    "javaScript
    call s:C("jsBracket",g:cYellow,"","bold")
    call s:C("jsExport",g:cRed,"","bold")
    call s:C("jsFrom",g:cRed,"","bold")
    call s:C("jsFuncBlock",g:cBlue,"","")
    call s:C("jsImport",g:cRed,"","bold")
    call s:C("jsModuleKeyword",g:cYellow,"","bold")
    call s:C("jsObjectKey",g:cBlue,"","")
    call s:C("jsObjectProp",g:cBlue,"","")
    call s:C("jsReturn",g:cRed,"","bold")
    hi! link jsBraces Delimiter
    hi! link jsDomElemAttrs jsSpecial
    hi! link jsDomElemFuncs jsFunction
    hi! link jsHtmlEvents jsSpecial
    hi! link jsParens Delimiter

    "json
    autocmd BufEnter,FileType json hi! link Label Constant
    autocmd BufEnter,FileType json hi! link Number Todo
    autocmd BufEnter,FileType json hi! link String Statement

    "markdown
    call s:C("mkdCode",g:cYellow,g:cLightBg,"")
    call s:C("mkdURL",g:cGray3,"","")
    hi! link mkdIndentCode mkdCode
    hi! link RenderMarkdownCodeInline mkdCode

    "objective-c/cocoa
    hi! link cocoaClass objcClass
    hi! link cocoaFunction Function
    hi! link objcClass Type
    hi! link objcDirective Type
    hi! link objcMessageName Identifier
    hi! link objcMethodArg Normal
    hi! link objcMethodName Identifier
    hi! link objcStatement Constant
    hi! link objcSubclass objcClass
    hi! link objcSuperclass objcClass

    "php
    call s:C("phpIdentifier",g:cBlue,"","")
    call s:C("phpRelation",g:cYellow,"","")
    hi! link phpArrayPair Operator
    hi! link phpNull Constant
    hi! link phpSuperglobal Identifier

    "ruby
    call s:C("rubyGlobalVariable","","","bold")
    hi! link rubyClass Type
    hi! link rubyConstant Type
    hi! link rubyGlobalVariable rubyInstanceVariable
    hi! link rubyInterpolationDelimiter Identifier
    hi! link rubyModule rubyClass
    hi! link rubyPredefinedIdentifier PreProc
    hi! link rubySharpBang Comment

    "sh
    call s:C("shAlias",g:cBlue,"","bold")
    call s:C("shVariable",g:cBlue,"","bold")

    "systemd unit files
    hi! link sdBindIPv6 sdValue
    hi! link sdBool sdValue
    hi! link sdCPUSchedPol sdValue
    hi! link sdCapability sdDevAllow
    hi! link sdDatasize sdValue
    hi! link sdDevAllow Keyword
    hi! link sdDocURI sdFilename
    hi! link sdExecArgs sdExecFile
    hi! link sdExecFile sdFilename
    hi! link sdFileList sdFilename
    hi! link sdFilename String
    hi! link sdIOSchedClass sdValue
    hi! link sdIOSchedPrio sdValue
    hi! link sdIPTOS Label
    hi! link sdKey Identifier
    hi! link sdOtherSignal sdValue
    hi! link sdServiceBlock sdValue
    hi! link sdSocketBlock Operator
    hi! link sdSymbol sdValue
    hi! link sdTCPCongest Label
    hi! link sdUnitBlock Comment
    hi! link sdValue PreProc
"}}}

"MISC: {{{
    "email
    hi! link mailHeaderKey Identifier

    "signify
    call s:C("SignifySignAdd",g:cYellow,"","bold")
    call s:C("SignifySignChange",g:cYellow,"","bold")
    call s:C("SignifySignDelete",g:cRed,"","bold")
    hi! link SignifyLineAdd DiffAdd
    hi! link SignifyLineChange DiffChange
    hi! link SignifyLineDelete DiffDelete

    "diagnostics
    call s:C("ALEError",g:cDarkRed,"","")
    call s:C("ALEWarning",g:cDarkYellow,"","")
    call s:C("ALEInfo",g:cDarkBlue,"","")

    call s:C("DiagnosticError",g:cDarkRed,"","italic")
    call s:C("DiagnosticWarn",g:cDarkYellow,"","italic")
    call s:C("DiagnosticInfo",g:cDarkBlue,"","italic")
    call s:C("DiagnosticHint",g:cGray3,"","italic")
    call s:C("DiagnosticOk",g:cWhite,"","italic")
    call s:C("DiagnosticDeprecated",g:cGray1,"","italic")
    call s:C("DiagnosticUnnecessary",g:cGray1,"","italic")
"}}}

"TREESITTER: {{{
    if has("nvim")
        call s:C("@attribute",g:cRed,"","")
        call s:C("@boolean",g:cYellow,"","bold")
        call s:C("@character",g:cWhite,"","bold")
        call s:C("@constant",g:cBlue,"","bold")
        call s:C("@constructor",g:cGray2,"","")
        call s:C("@danger",g:cRed,"","bold")
        call s:C("@error",g:cRed,"","bold")
        call s:C("@exception",g:cRed,"","")
        call s:C("@field",g:cBlue,"","italic")
        call s:C("@float",g:cYellow,"","bold")
        call s:C("@function",g:cGray2,"","bold")
        call s:C("@function.builtin",g:cYellow,"","")
        call s:C("@function.call",g:cGray2,"","bold")
        call s:C("@function.macro",g:cGray2,"","italic")
        call s:C("@function.method",g:cGray2,"","bold")
        call s:C("@include",g:cBlue,"","bold")
        call s:C("@keyword",g:cRed,"","bold")
        call s:C("@keyword.directive",g:cGray3,"","italic")
        call s:C("@keyword.function",g:cBlue,"","bold")
        call s:C("@keyword.import",g:cYellow,"","bold")
        call s:C("@label",g:cWhite,"","")
        call s:C("@namespace",g:cGray2,"","")
        call s:C("@none",g:cWhite,"","")
        call s:C("@number",g:cRed,"","bold")
        call s:C("@operator",g:cYellow,"","")
        call s:C("@parameter",g:cYellow,"","")
        call s:C("@parameter.reference",g:cYellow,"","bold")
        call s:C("@property",g:cBlue,"","")
        call s:C("@punctuation",g:cGray2,"","")
        call s:C("@punctuation.special",g:cBlue,"","bold")
        call s:C("@repeat",g:cBlue,"","")
        call s:C("@string",g:cWhite,"","bold")
        call s:C("@string.escape",g:cYellow,"","")
        call s:C("@string.regexp",g:cWhite,"","bold,italic")
        call s:C("@symbol",g:cRed,"","")
        call s:C("@tag",g:cYellow,"","bold")
        call s:C("@tag.attribute",g:cBlue,"","bold")
        call s:C("@tag.delimiter",g:cBlue,"","bold")
        call s:C("@text",g:cWhite,"","")
        call s:C("@text.diff.add",g:cYellow,"","")
        call s:C("@text.diff.change",g:cBlue,"","")
        call s:C("@text.diff.delete",g:cRed,"","")
        call s:C("@text.emphasis","","","italic")
        call s:C("@text.environment",g:cWhite,"","")
        call s:C("@text.math","","","bold,italic")
        call s:C("@text.reference",g:cWhite,"","")
        call s:C("@text.strike","","","strikethrough")
        call s:C("@text.strong","","","bold")
        call s:C("@text.todo",g:cGray2,"","")
        call s:C("@text.underline","","","underline")
        call s:C("@text.uri",g:cDarkYellow,"","bold")
        call s:C("@type",g:cBlue,"","bold")
        call s:C("@type.qualifier",g:cYellow,"","bold")
        call s:C("@variable",g:cBlue,"","")
        call s:C("@variable.builtin",g:cYellow,"","bold")
        call s:C("@variable.member",g:cBlue,"","bold")
        call s:C("@variable.parameter",g:cYellow,"","")
        call s:C("@warning",g:cRed,"","")
        hi! link @annotation @comment
        hi! link @comment Comment
        hi! link @conditional Conditional
        hi! link @method @function
        hi! link @note @comment

        "css
        call s:C("@function.css",g:cBlue,"","")
        call s:C("@keyword.directive.css",g:cYellow,"","")
        call s:C("@number.css",g:cYellow,"","bold")
        call s:C("@number.float.css",g:cYellow,"","bold")
        call s:C("@property.css",g:cRed,"","bold")
        call s:C("@punctuation.delimiter.css",g:cGray2,"","")
        call s:C("@tag.css",g:cYellow,"","")
        call s:C("@type.css",g:cRed,"","bold")
        call s:C("@variable.css",g:cBlue,"","")
        hi! link @punctuation.bracket.css @punctuation.delimiter.css

        "diff
        call s:C("@attribute.diff",g:cYellow,"","")
        call s:C("@constant.diff","","","")
        call s:C("@function.diff",g:cRed,"","bold")
        call s:C("@keyword.diff","","","")
        call s:C("@number.diff","","","")
        call s:C("@punctuation.special.diff","","","")
        call s:C("@string.special.path.diff","","","")
        hi! link @diff.minus DiffRemoved
        hi! link @diff.plus DiffAdded

        "scss
        call s:C("@attribute.scss","","","")
        call s:C("@character.special.scss",g:cBlue,"","bold")
        call s:C("@function.scss","","","")
        call s:C("@keyword.import.scss",g:cYellow,"","bold")
        call s:C("@keyword.modifier.scss","","","")
        call s:C("@keyword.operator.scss","","","")
        call s:C("@keyword.repeat.scss","","","")
        call s:C("@keyword.scss","","","")
        call s:C("@operator.scss","","","")
        call s:C("@property.scss","","","")
        call s:C("@punctuation.bracket.scss","","","")
        call s:C("@punctuation.delimiter.scss",g:cGray2,"","")
        call s:C("@string.scss","","","")
        call s:C("@tag.scss","","","")
        call s:C("@type.scss","","","")
        call s:C("@variable.parameter.scss","","","")
        call s:C("@variable.scss","","","")
        hi! link @keyword.directive.scss @keyword.directive.css
        hi! link @number.float.scss @number.float.css
        hi! link @number.scss @number.css

        "vue
        call s:C("@function.method.vue",g:cRed,"","bold")
    endif
"}}}

"cleanup {{{
    delf s:C
"}}}
