function monte_pi(reps::Int = 1_000_000)::Int
    count::Int = 0
    for _ = 1:reps
        x = rand()
        y = rand()
        count += (x * x + y * y <= 1)
    end
    return count
end
