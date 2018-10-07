using FizzBuzzQuiz
using Test

tests = ["fizz_buzz", "pezz", "hozz"]
for test = tests
    # println("testing $test.jl...")
    include("$test.jl")
end