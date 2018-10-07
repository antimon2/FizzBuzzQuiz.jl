@testset "Hozz" begin
    @test 13 |> fizz |> buzz |> hozz == "Aho"
    @test 3 |> fizz |> buzz |> hozz == "FizzAho"
    @test 35 |> fizz |> buzz |> hozz == "BuzzAho"
    @test 30 |> fizz |> buzz |> hozz == "FizzBuzzAho"
    @test 30 |> hozz |> buzz |> fizz == "AhoBuzzFizz"
end