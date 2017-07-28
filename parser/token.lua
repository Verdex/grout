
tokenPatterns = {}

function token( name, pattern )
    tokenPatterns[#tokenPatterns + 1] = { name = name; pattern = pattern }
end

function keyword( name, pattern )
    pattern = pattern or name
    tokenPatterns[#tokenPatterns + 1] = { name = name; pattern = pattern; keyword = true }
end
    


token( "lparen", "%(" )
token( "rparen", "%)" )
token( "langle", "<" )
token( "rangle", ">" )
token( "lcurly", "{" )
token( "rcurly", "}" )
token( "comma", "," )
token( "semicolon", ";" )
token( "colon", ":" )
token( "equal", "=" )
keyword( "var" )
keyword( "if" )
keyword( "elseif" )
keyword( "else" )
keyword( "foreach" )
keyword( "while" )
keyword( "struct" )
keyword( "union" )
keyword( "namespace" )
keyword( "interface" )
keyword( "utility" )
keyword( "actor" )
keyword( "return" )
keyword( "yield" )
keyword( "break" )
keyword( "continue" )


token( "symbol", "(_[_%w]*)" )
token( "symbol", "([%a][_%w]*)" )

token( "ignore", "%s" )


