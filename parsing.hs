import Text.ParserCombinators.Parsec hiding ((<|>), many)
import Control.Applicative
import Control.Monad

matchTrue :: Parser String
matchTrue = string "true"

alwaysTrue = pure True

boolTrue :: Parser Bool 
boolTrue = matchTrue *> alwaysTrue

boolFalse :: Parser Bool 
boolFalse = (string "false") *> (pure False)

bool :: Parser Bool
bool = boolTrue <|> boolFalse

stringLiteral :: Parser String
stringLiteral =
    char '"' *> (many (noneOf ['"'])) <* char '"'

--whitespace
ws :: Parser [Char]
ws = many $ oneOf " \t\n"

lexeme p = p <* ws

data JSONValue = B Bool
               | S String
               | A [JSONValue]
               | O [(String,JSONValue)]
    deriving(Show)

jsonBool   = B <$> bool
jsonString = S <$> stringLiteral
jsonValue  = jsonBool
         <|> (jsonString <?> "string literal") --custom error mesages
         <|> jsonArray
         <|> jsonObject

comma :: Parser Char
comma = char ','

jsonArray :: Parser JSONValue
jsonArray = fmap A $
    (char '[')
    *> (jsonValue `sepBy` comma) <*
    (char ']')

objectEntry :: Parser (String,JSONValue)
objectEntry = do
    key <- stringLiteral
    char ':'
    value <- jsonValue
    return (key,value)

jsonObject :: Parser JSONValue
jsonObject = fmap O $
    (char '{')
    *> (objectEntry `sepBy` comma) <*
    (char '}')


jsonParser = jsonValue <* eof

main = do
    let s = parse jsonParser "what is this?" "{\"awdddw\":true}"
    putStrLn $ show s

day :: Parser Int
day = 
    try (string "Monday"    *> pure 1) -- or <||>
    <|> (string "Tuesday"   *> pure 2)
    <|> (string "Wednesday" *> pure 3)
    <|> (string "Thursday"  *> pure 4)

-- p <||> q  = (try p) <|> q