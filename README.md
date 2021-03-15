A mini-cryptocurrency using Ruby to allow different ports in your computer to communicate and process transactions with each other. Every transaction between ports is encrypted with a private key, and verified/mined with a public key using OpenSSL and Base64.

<br/>

To get started:

```cd nikocoin```

<br/>

```gem install colorize digest faraday sinatra yaml thread_safe openssl base64 activesupport```

<br/>

```ruby nikocoin.rb 1111```
this connects port 1111 to the blockchain. Port 1111 will be initialized with a balance of funds.

<br/>

(open another terminal window in the same directory)

```ruby nikocoin.rb 2222 1111```
this connects port 2222 to the blockchain, and allows it to gossip with port 1111 and any other ports 1111 is gossiping with.

<br/>

(open another terminal window in the same directory)

```ruby nikocoin.rb 3333 2222```
this connects port 3333 and allows it to gossip with any other ports communicating with 2222. Add as many as you like.

<br/>

(open another terminal window in the same directory)

```pry```

*in pry* ```load 'client.rb'```

*in pry* to send money, ```Client.send_money(1111, 2222, 20000)```
This sends $20,000 from 1111 to 2222. 

<br/>

If an invalid transaction is made, it will be denied my all other user's version of the blockchain. 


<img src="public/nikocoin_blocks.png?raw=true" width="1000">
