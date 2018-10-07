@testset "Fizz & Buzz" begin
    # @test fizz(1) == 1
    @test 1 |> fizz == 1
    @test 3 |> fizz == "Fizz"
    @test 1 |> buzz == 1
    @test 5 |> buzz == "Buzz"
    # @test buzz(fizz(1)) == 1
    @test 1 |> fizz |> buzz == 1
    @test 3 |> fizz |> buzz == "Fizz"
    @test 5 |> fizz |> buzz == "Buzz"
    @test 15 |> fizz |> buzz == "FizzBuzz"
    @test 15 |> buzz |> fizz == "BuzzFizz"
end