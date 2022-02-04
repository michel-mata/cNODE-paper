(@__DIR__) == pwd() || cd(@__DIR__)
any(LOAD_PATH .== pwd()) || push!(LOAD_PATH, pwd())
push!(LOAD_PATH,"../src/")

using Pkg
Pkg.activate("../")
Pkg.instantiate()
using Documenter
using cNODE

makedocs(;
    modules=[cNODE],
	format = Documenter.HTML(
        prettyurls = prettyurls = get(ENV, "CI", nothing) == "true",
    ),
	pages=[
			"Home" => "index.md",
			"Table of Contents" => "toc.md"
			],
	repo="https://github.com/michel-mata/cNODE/blob/{commit}{path}#L{line}",
    sitename="cNODE",
    authors="Sebastian Michel-Mata - cNODE"
	)

deploydocs(;
    repo="github.com/michel-mata/cNODE.git",
	target = "build",
    push_preview = true
)
