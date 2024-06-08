# TODO: remove this once TensorOperations v5 is released
using Pkg: Pkg
Pkg.add(; url="https://github.com/Jutho/TensorOperations.jl", rev="master")

using Documenter
using TensorKit

makedocs(; modules=[TensorKit],
         sitename="TensorKit.jl",
         authors="Jutho Haegeman",
         format=Documenter.HTML(; prettyurls=get(ENV, "CI", nothing) == "true",
                                mathengine=MathJax()),
         pages=["Home" => "index.md",
                "Manual" => ["man/intro.md", "man/tutorial.md", "man/categories.md",
                             "man/spaces.md", "man/sectors.md", "man/tensors.md"],
                "Library" => ["lib/sectors.md", "lib/spaces.md", "lib/tensors.md"],
                "Index" => ["index/index.md"]])

deploydocs(; repo="github.com/Jutho/TensorKit.jl.git", push_preview=true)
