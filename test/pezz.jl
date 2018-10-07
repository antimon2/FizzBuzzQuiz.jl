@testset "Pezz" begin
    # @test pezz(buzz(fizz(7))) == "Pezz"
    @test 7 |> fizz |> buzz |> pezz == "Pezz"
    @test 21 |> fizz |> buzz |> pezz == "FizzPezz"
    @test 35 |> fizz |> buzz |> pezz == "BuzzPezz"
    @test 105 |> fizz |> buzz |> pezz == "FizzBuzzPezz"
    @test 105 |> fizz |> pezz |> buzz == "FizzPezzBuzz"
    @test 105 |> pezz |> buzz |> fizz == "PezzBuzzFizz"
    # 以下も念のため
    @test 1 |> fizz |> buzz |> pezz == 1
    @test 3 |> fizz |> buzz |> pezz == "Fizz"
    @test 5 |> fizz |> buzz |> pezz == "Buzz"
    @test 15 |> fizz |> buzz |> pezz == "FizzBuzz"
    @test 15 |> buzz |> fizz |> pezz == "BuzzFizz"
    @test 104 |> fizz |> buzz |> pezz == 104
end