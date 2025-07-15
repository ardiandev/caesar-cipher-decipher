# Caesar Cipher & Decipher 🔐

This is a Ruby implementation of the classic **Caesar Cipher** encryption technique, built as part of [The Odin Project's Ruby course](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby).

---

## 📜 Description

The **Caesar Cipher** is a simple encryption method where each letter in a message is shifted by a fixed number of positions in the alphabet.

For example, with a shift of `+3`:
- `A` becomes `D`
- `B` becomes `E`
- `Z` wraps around and becomes `C`

This project includes two main features:

- `caesar_cipher`: 🔐 Encrypts a string with a given shift key
- `caesar_decipher`: 🔓 Decrypts a string using the reverse shift

---

## 🧠 How It Works

- Only alphabetic characters are shifted (`A-Z`, `a-z`)
- Non-letter characters (spaces, punctuation, etc.) stay the same
- Letter case is preserved (uppercase/lowercase)
- The shift wraps around the alphabet (e.g., `'z'` with shift `+1` becomes `'a'`)

---

## 🖥️ How to Use in a Text Editor

### 📁 File Structure

```

your\_project/
├── caesar\_cipher.rb
├── caesar\_decipher.rb

````

### ✍️ Step 1: Add Your Cipher Code

**caesar_cipher.rb**
```ruby
def caesar_cipher(text, key)
  result = ""

  text.each_char do |char|
    if char.match(/[A-Za-z]/)
      base = char.ord < 91 ? 'A'.ord : 'a'.ord
      shifted = ((char.ord - base + key) % 26) + base
      result += shifted.chr
    else
      result += char
    end
  end

  result
end

# Example usage
puts caesar_cipher("Hello, World!", 5)
````

### ✍️ Step 2: Add Your Decipher Code

**caesar\_decipher.rb**

```ruby
require_relative './caesar_cipher'  # Import the cipher method

def caesar_decipher(text, key)
  caesar_cipher(text, -key)
end

# Example usage
puts caesar_decipher("Mjqqt, Btwqi!", 5)
```

### ▶️ Step 3: Run It in Terminal

Open your terminal, navigate to your project folder, and run:

```bash
ruby caesar_cipher.rb
# => Mjqqt, Btwqi!

ruby caesar_decipher.rb
# => Hello, World!
```

---

## 💡 Optional: Add User Input

To make it interactive, add this to either file:

```ruby
puts "Enter your message:"
message = gets.chomp

puts "Enter shift amount:"
key = gets.chomp.to_i

puts caesar_cipher(message, key)
```

Or for decipher:

```ruby
puts "Enter encrypted message:"
message = gets.chomp

puts "Enter the original shift:"
key = gets.chomp.to_i

puts caesar_decipher(message, key)
```

---

## 📚 Source

This project is part of the [Ruby course](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby) from [The Odin Project](https://www.theodinproject.com/), a free and open-source curriculum for learning web development.

---

## ✅ Status

✔️ Project complete and functional.
🎯 Can be extended with CLI, file encryption, or testing features.

---

## 🙌 Contributions

This is a learning project. Feel free to fork and improve it!

---

## 📃 License

MIT — open source and free to use.

```

