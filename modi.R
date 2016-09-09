consumer_key <- 'LjxGtf5sPi10Po2T5jMtQWvUb'
consumer_secret <- '9qkFWhLvwoJMDNeNXWTA7bJWvpPsSIYJFs6EoPOcps653os58b'
access_token <-'1881863071-VvzIUOjqfjEqTMVpj0K3dpKeUjkKvFsaZ8XQfC3'
access_secret <- 'YaWns4J19AqbHmd8gjnaqzBmEdb7Aolo2j11U1j3Ucdc1'

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

LFC_tweets <- searchTwitter("LFC", n = 10, lang ="en")

modi <- searchTwitter('Modi', lang="en", n=500, resultType = "recent")
modi_text <- sapply(modi, function(x) x$getText())
str(modi_text)

modi_corpus <- Corpus(VectorSource(modi_text))
modi_corpus
inspect(modi_corpus[1])

modi_clean <- tm_map(modi_corpus, removePunctuation)
modi_clean <- tm_map(modi_clean, content_transformer(tolower))
modi_clean <- tm_map(modi_clean, removeWords, stopwords("english"))
modi_clean <- tm_map(modi_clean, removeNumbers)
modi_clean <- tm_map(modi_clean, stripWhitespace)
modi_clean <- tm_map(modi_clean, removeWords, c("govt", "india","helpline","number","https","httpst"))

png("modiword.png", width=12,height=8, units='in', res=300)
wordcloud(modi_clean, random.order = F)
wordcloud(modi_clean, random.order = F, scale=c(3,0.5))
dev.off()
