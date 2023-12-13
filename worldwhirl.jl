function reverseWithPunctuation(sentence::String)

    # ====== Write your awesome code under here ======

    print("VividCloud Word Whirl Code Lab\n")

    split_sentence = split(sentence, " ")
    if length(split_sentence) == 1
        println(sentence)
        return ""
    end

    reverse_sentence = reverse(split_sentence)
    first_word = first(reverse_sentence)
    first_word = uppercase(first(first_word)) * first_word[2:end]
    last_word = last(reverse_sentence)
    last_word = lowercase(first(last_word)) * last_word[2:end]
    reverse_sentence[1] = first_word
    reverse_sentence[end] = last_word
    
    joined_reverse_sentence = join(reverse_sentence, " ")

    # println(split_sentence)
    # println(reverse_sentence)
    println(joined_reverse_sentence)
 
    # ====== End your awesome code above here ======

end

 

# Main execution

begin

    sentence = "My other julia is a python"

    # Time the execution of the reverseWithPunctuation function

    time_taken_seconds = @elapsed reverseWithPunctuation(sentence)

 

    time_taken_ms = time_taken_seconds * 1000

    println("Time taken: $(time_taken_ms) milliseconds")

end