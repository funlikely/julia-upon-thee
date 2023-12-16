function reverseWithPunctuation(sentence::String)

    # ====== Write your awesome code under here ======

    # sentence = "My other julia, is a python!"

    split_sentence = split(sentence, " ")
    if length(split_sentence) == 1
        println(sentence)
        return ""
    end

    last_char = split_sentence[end][end]
    if !isletter(last_char)
        split_sentence[end] = split_sentence[end][1:(end-1)]
    end
    reverse_sentence = reverse(split_sentence)
    first_word = first(reverse_sentence)
    first_word = uppercase(first(first_word)) * first_word[2:end]
    last_word = last(reverse_sentence)
    last_word = lowercase(first(last_word)) * last_word[2:end]
    if !isletter(last_char)
        last_word = last_word * last_char
    end
    reverse_sentence[1] = first_word
    reverse_sentence[end] = last_word
    
    joined_reverse_sentence = join(reverse_sentence, " ")

    println(joined_reverse_sentence)
 
    # ====== End your awesome code above here ======

    return joined_reverse_sentence
end

 

# Main execution

begin

    sentence = "My other julia, is a python!"

    # Time the execution of the reverseWithPunctuation function

    time_taken_seconds = @elapsed reverseWithPunctuation(sentence)

 

    time_taken_ms = time_taken_seconds * 1000

    println("Time taken: $(time_taken_ms) milliseconds")

end