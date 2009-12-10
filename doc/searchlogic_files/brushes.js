/*
 * JsMin
 * Javascript Compressor
 * http://www.crockford.com/
 * http://www.smallsharptools.com/
*/

dp.sh.Brushes.CSS=function()
{var keywords='ascent azimuth background-attachment background-color background-image background-position '+'background-repeat background baseline bbox border-collapse border-color border-spacing border-style border-top '+'border-right border-bottom border-left border-top-color border-right-color border-bottom-color border-left-color '+'border-top-style border-right-style border-bottom-style border-left-style border-top-width border-right-width '+'border-bottom-width border-left-width border-width border cap-height caption-side centerline clear clip color '+'content counter-increment counter-reset cue-after cue-before cue cursor definition-src descent direction display '+'elevation empty-cells float font-size-adjust font-family font-size font-stretch font-style font-variant font-weight font '+'height letter-spacing line-height list-style-image list-style-position list-style-type list-style margin-top '+'margin-right margin-bottom margin-left margin marker-offset marks mathline max-height max-width min-height min-width orphans '+'outline-color outline-style outline-width outline overflow padding-top padding-right padding-bottom padding-left padding page '+'page-break-after page-break-before page-break-inside pause pause-after pause-before pitch pitch-range play-during position '+'quotes richness size slope src speak-header speak-numeral speak-punctuation speak speech-rate stemh stemv stress '+'table-layout text-align text-decoration text-indent text-shadow text-transform unicode-bidi unicode-range units-per-em '+'vertical-align visibility voice-family volume white-space widows width widths word-spacing x-height z-index';var values='above absolute all always aqua armenian attr aural auto avoid baseline behind below bidi-override black blink block blue bold bolder '+'both bottom braille capitalize caption center center-left center-right circle close-quote code collapse compact condensed '+'continuous counter counters crop cross crosshair cursive dashed decimal decimal-leading-zero default digits disc dotted double '+'embed embossed e-resize expanded extra-condensed extra-expanded fantasy far-left far-right fast faster fixed format fuchsia '+'gray green groove handheld hebrew help hidden hide high higher icon inline-table inline inset inside invert italic '+'justify landscape large larger left-side left leftwards level lighter lime line-through list-item local loud lower-alpha '+'lowercase lower-greek lower-latin lower-roman lower low ltr marker maroon medium message-box middle mix move narrower '+'navy ne-resize no-close-quote none no-open-quote no-repeat normal nowrap n-resize nw-resize oblique olive once open-quote outset '+'outside overline pointer portrait pre print projection purple red relative repeat repeat-x repeat-y rgb ridge right right-side '+'rightwards rtl run-in screen scroll semi-condensed semi-expanded separate se-resize show silent silver slower slow '+'small small-caps small-caption smaller soft solid speech spell-out square s-resize static status-bar sub super sw-resize '+'table-caption table-cell table-column table-column-group table-footer-group table-header-group table-row table-row-group teal '+'text-bottom text-top thick thin top transparent tty tv ultra-condensed ultra-expanded underline upper-alpha uppercase upper-latin '+'upper-roman url visible wait white wider w-resize x-fast x-high x-large x-loud x-low x-slow x-small x-soft xx-large xx-small yellow';var fonts='[mM]onospace [tT]ahoma [vV]erdana [aA]rial [hH]elvetica [sS]ans-serif [sS]erif';this.regexList=[{regex:dp.sh.RegexLib.MultiLineCComments,css:'comment'},{regex:dp.sh.RegexLib.DoubleQuotedString,css:'string'},{regex:dp.sh.RegexLib.SingleQuotedString,css:'string'},{regex:new RegExp('\\#[a-zA-Z0-9]{3,6}','g'),css:'value'},{regex:new RegExp('(-?\\d+)(\.\\d+)?(px|em|pt|\:|\%|)','g'),css:'value'},{regex:new RegExp('!important','g'),css:'important'},{regex:new RegExp(this.GetKeywordsCSS(keywords),'gm'),css:'keyword'},{regex:new RegExp(this.GetValuesCSS(values),'g'),css:'value'},{regex:new RegExp(this.GetValuesCSS(fonts),'g'),css:'value'}];this.CssClass='dp-css';this.Style='.dp-css .value { color: black; }'+'.dp-css .important { color: red; }';}
dp.sh.Highlighter.prototype.GetKeywordsCSS=function(str)
{return'\\b([a-z_]|)'+str.replace(/ /g,'(?=:)\\b|\\b([a-z_\\*]|\\*|)')+'(?=:)\\b';}
dp.sh.Highlighter.prototype.GetValuesCSS=function(str)
{return'\\b'+str.replace(/ /g,'(?!-)(?!:)\\b|\\b()')+'\:\\b';}
dp.sh.Brushes.CSS.prototype=new dp.sh.Highlighter();dp.sh.Brushes.CSS.Aliases=['css'];


/*
 * JsMin
 * Javascript Compressor
 * http://www.crockford.com/
 * http://www.smallsharptools.com/
*/

dp.sh.Brushes.JScript=function()
{var keywords='abstract boolean break byte case catch char class const continue debugger '+'default delete do double else enum export extends false final finally float '+'for function goto if implements import in instanceof int interface long native '+'new null package private protected public return short static super switch '+'synchronized this throw throws transient true try typeof var void volatile while with';this.regexList=[{regex:dp.sh.RegexLib.SingleLineCComments,css:'comment'},{regex:dp.sh.RegexLib.MultiLineCComments,css:'comment'},{regex:dp.sh.RegexLib.DoubleQuotedString,css:'string'},{regex:dp.sh.RegexLib.SingleQuotedString,css:'string'},{regex:new RegExp('^\\s*#.*','gm'),css:'preprocessor'},{regex:new RegExp(this.GetKeywords(keywords),'gm'),css:'keyword'}];this.CssClass='dp-c';}
dp.sh.Brushes.JScript.prototype=new dp.sh.Highlighter();dp.sh.Brushes.JScript.Aliases=['js','jscript','javascript'];


/*
 * JsMin
 * Javascript Compressor
 * http://www.crockford.com/
 * http://www.smallsharptools.com/
*/

dp.sh.Brushes.Ruby=function()
{var keywords='alias and BEGIN begin break case class def define_method defined do each else elsif '+'END end ensure false for if in module new next nil not or raise redo rescue retry return '+'self super then throw true undef unless until when while yield';var builtins='Array Bignum Binding Class Continuation Dir Exception FalseClass File::Stat File Fixnum Fload '+'Hash Integer IO MatchData Method Module NilClass Numeric Object Proc Range Regexp String Struct::TMS Symbol '+'ThreadGroup Thread Time TrueClass'
this.regexList=[{regex:dp.sh.RegexLib.SingleLinePerlComments,css:'comment'},{regex:dp.sh.RegexLib.DoubleQuotedString,css:'string'},{regex:dp.sh.RegexLib.SingleQuotedString,css:'string'},{regex:new RegExp(':[a-z][A-Za-z0-9_]*','g'),css:'symbol'},{regex:new RegExp('(\\$|@@|@)\\w+','g'),css:'variable'},{regex:new RegExp(this.GetKeywords(keywords),'gm'),css:'keyword'},{regex:new RegExp(this.GetKeywords(builtins),'gm'),css:'builtin'}];this.CssClass='dp-rb';this.Style='.dp-rb .symbol { color: #CC0; }'+'.dp-rb .variable { color: #FF0; font-weight: bold; }';}
dp.sh.Brushes.Ruby.prototype=new dp.sh.Highlighter();dp.sh.Brushes.Ruby.Aliases=['ruby','rails','ror'];


/*
 * JsMin
 * Javascript Compressor
 * http://www.crockford.com/
 * http://www.smallsharptools.com/
*/

dp.sh.Brushes.Sql=function()
{var funcs='abs avg case cast coalesce convert count current_timestamp '+'current_user day isnull left lower month nullif replace right '+'session_user space substring sum system_user upper user year';var keywords='absolute action add after alter as asc at authorization begin bigint '+'binary bit by cascade char character check checkpoint close collate '+'column commit committed connect connection constraint contains continue '+'create cube current current_date current_time cursor database date '+'deallocate dec decimal declare default delete desc distinct double drop '+'dynamic else end end-exec escape except exec execute false fetch first '+'float for force foreign forward free from full function global goto grant '+'group grouping having hour ignore index inner insensitive insert instead '+'int integer intersect into is isolation key last level load local max min '+'minute modify move name national nchar next no numeric of off on only '+'open option order out output partial password precision prepare primary '+'prior privileges procedure public read real references relative repeatable '+'restrict return returns revoke rollback rollup rows rule schema scroll '+'second section select sequence serializable set size smallint static '+'statistics table temp temporary then time timestamp to top transaction '+'translation trigger true truncate uncommitted union unique update values '+'varchar varying view when where with work';var operators='all and any between cross in join like not null or outer some';this.regexList=[{regex:new RegExp('--(.*)$','gm'),css:'comment'},{regex:dp.sh.RegexLib.DoubleQuotedString,css:'string'},{regex:dp.sh.RegexLib.SingleQuotedString,css:'string'},{regex:new RegExp(this.GetKeywords(funcs),'gmi'),css:'func'},{regex:new RegExp(this.GetKeywords(operators),'gmi'),css:'op'},{regex:new RegExp(this.GetKeywords(keywords),'gmi'),css:'keyword'}];this.CssClass='dp-sql';this.Style='.dp-sql .func { color: #ff1493; }'+'.dp-sql .op { color: #808080; }';}
dp.sh.Brushes.Sql.prototype=new dp.sh.Highlighter();dp.sh.Brushes.Sql.Aliases=['sql'];
