require 'digest'

NUM_ZEROES = 6

def hash(message)
  Digest::SHA256.hexdigest(message)
end

def find_nonce(message)
  nonce = "Nonce phrase"
  count = 0
  until valid_nonce?(nonce, message)
    nonce = nonce.next
    count += 1
  end
  puts count
  nonce
end

def valid_nonce?(nonce, message)
  hash(message + nonce).start_with?("0" * NUM_ZEROES)
end