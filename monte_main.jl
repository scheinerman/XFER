using Distributed
@everywhere include("monte_pi.jl")

function super_monte(rounds::Int = 10_000, reps::Int = 1_000_000)
    n = rounds * reps
    println("Throwing $(Float64(n)) darts")
    count = @distributed (+) for i = 1:rounds
        monte_pi(reps)
    end
    return 4 * count / n
end
