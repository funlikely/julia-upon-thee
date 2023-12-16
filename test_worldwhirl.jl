# Input: "Hello world" Output: "World hello"
# Input: "This is a test" Output: "Test is this"
# Input: "Can you solve this challenge" Output: "Challenge this solve you can"
# Input: “Is this a fun place to work, or what!” Output: “What or work, to place fun a this Is!”

using Test

function test_reverseWithPunctuation()
    @test reverseWithPunctuation("Hello world") == "World hello"
    @test reverseWithPunctuation("This is a test") == "Test a is this"
    @test reverseWithPunctuation("Can you solve this challenge") == "Challenge this solve you can"
    @test reverseWithPunctuation("Is this a fun place to work, or what!") == "What or work, to place fun a this is!"
    println("You win... something")
end
