def caesar_dechiper(msg, key)
    result = ""

    msg.each_char do |char|
        if char.match(/[A-Za-z]/)
            base = char.ord < 91 ? 'A'.ord : 'a'.ord
            shifted = ((char.ord - base - key) % 26) + base
            result += shifted.chr
        else 
            result += char
        end
    end
    puts result
            
end


caesar_dechiper("Izlqiv Gcacn Xzilivi", 34)
