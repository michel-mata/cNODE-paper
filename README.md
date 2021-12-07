# cNODE

This repository contains the code associated with the paper: "Predicting microbiome compositions from species assemblages through deep learning" (doi: https://doi.org/10.1101/2021.06.17.448886).


### Usage
Download: Julia 0.6.4 from the [GitHub repository](https://github.com/JuliaLang/julia/tree/v0.6.4) or the [webpage](https://julialang.org/downloads/oldreleases/) at:

![alt text](julia0.6.4.png "Title")

### Package versions

Install packages:

```
Pkg.add("DiffEqFlux", v"0.7.0")
Pkg.add("DifferentialEquations", v"6.9.0")
Pkg.add("Distances", v"0.8.2")
Pkg.add("Distributions", v"0.19.2")
Pkg.add("Flux", v"0.9.0")
Pkg.add("MLDataPattern", v"0.5.3")
Pkg.add("StatsBase", v"0.33.0")

pkgs_names = [
    "DelimitedFiles", "Random", "Statistics", "LinearAlgebra",
    "Distributed", "SharedArrays", "Combinatorics"
    ]

Pkg.add.(pkgs_names)

```
