#make an app at https://apps.twitter.com
#then from keys and access tokens toolbar get: Consumer Key (API Key), Consumer Secret (API Secret)
#create access token and get : Access Token, Access Token Secret

#save them and setup OAuthorization 
consumer_key <- 'LjxGtf5sPi10Po2T5jMtQWvUb'
consumer_secret <- '9qkFWhLvwoJMDNeNXWTA7bJWvpPsSIYJFs6EoPOcps653os58b'
access_token <-'1881863071-VvzIUOjqfjEqTMVpj0K3dpKeUjkKvFsaZ8XQfC3'
access_secret <- 'YaWns4J19AqbHmd8gjnaqzBmEdb7Aolo2j11U1j3Ucdc1'

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
