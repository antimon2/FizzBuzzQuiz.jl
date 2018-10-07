module FizzBuzzQuiz

"""文字列連結（多重再定義）"""
function Base.:*(n::Int, s2::AbstractString)::AbstractString
    str = String(UInt8[reinterpret(UInt8, [n]);codeunits(s2)])
    SubString(str, sizeof(Int)+1, lastindex(str))
end

function Base.:*(s1::SubString{String}, s2::AbstractString)::AbstractString
    str = String(UInt8[codeunits(s1.string);codeunits(s2)])
    SubString(str, s1.offset+1, lastindex(str))
end

"""文字列に埋め込んだ整数値を抽出（多重定義）"""
function choose_n(str::SubString{String})::Int
    reinterpret(Int, codeunits(str.string)[1:str.offset])[1]
end
choose_n(n::Int)::Int = n

"""fizz()"""
function fizz(val::Union{Int,SubString{String}})::Union{Int,AbstractString}
    choose_n(val) % 3 == 0 ? val * "Fizz" : val
end

"""buzz()"""
function buzz(val::Union{Int,SubString{String}})::Union{Int,AbstractString}
    choose_n(val) % 5 == 0 ? val * "Buzz" : val
end

"""pezz()"""
function pezz(val::Union{Int,SubString{String}})::Union{Int,AbstractString}
    choose_n(val) % 7 == 0 ? val * "Pezz" : val
end

"""hozz()"""
function hozz(val::Union{Int,SubString{String}})::Union{Int,AbstractString}
    3 ∈ digits(choose_n(val)) ? val * "Aho" : val
end

export fizz, buzz, pezz, hozz

end # module
