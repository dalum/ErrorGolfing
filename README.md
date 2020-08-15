# ErrorGolfing.jl

Make the tests pass with the least amount of code.  This is a code golfing challenge to familiarise yourself with the built-in exceptions and errors of the Julia programming language listed in https://docs.julialang.org/en/v1/manual/control-flow/#Built-in-Exceptions-1.

## Rules

1. Clone/fork this repository
2. Make changes to the files in `src/`
3. Run the tests, if they fail, `@goto 2`
4. Get your score
5. Share your results with the rest of the world!

*Note: to run the tests, from the root of the repository, do: `julia --project -e 'using Pkg; Pkg.instantiate(); Pkg.test()'`*
