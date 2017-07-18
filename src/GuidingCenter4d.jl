__precompile__()

module GuidingCenter4d

    export TokamakBarelyPassing,
           TokamakBarelyTrapped,
           TokamakDeeplyPassing,
           TokamakDeeplyTrapped,
           TokamakFastBarelyPassing,
           TokamakFastBarelyTrapped,
           TokamakFastDeeplyPassing,
           TokamakFastDeeplyTrapped,
           TokamakLoop,
           TokamakSurface,
           SymmetricLoop,
           SymmetricSurface,
           UniformLoop
    export plot_integral_error,
           plot_loop,
           plot_surface,
           plot_trajectories

    include("guiding_center_4d/guiding_center_4d_tokamak_barely_passing.jl")
    include("guiding_center_4d/guiding_center_4d_tokamak_barely_trapped.jl")
    include("guiding_center_4d/guiding_center_4d_tokamak_deeply_passing.jl")
    include("guiding_center_4d/guiding_center_4d_tokamak_deeply_trapped.jl")

    include("guiding_center_4d/guiding_center_4d_tokamak_fast_barely_passing.jl")
    include("guiding_center_4d/guiding_center_4d_tokamak_fast_barely_trapped.jl")
    include("guiding_center_4d/guiding_center_4d_tokamak_fast_deeply_passing.jl")
    include("guiding_center_4d/guiding_center_4d_tokamak_fast_deeply_trapped.jl")

    include("guiding_center_4d/guiding_center_4d_tokamak_loop.jl")
    include("guiding_center_4d/guiding_center_4d_tokamak_surface.jl")
    include("guiding_center_4d/guiding_center_4d_symmetric_loop.jl")
    include("guiding_center_4d/guiding_center_4d_symmetric_surface.jl")
    include("guiding_center_4d/guiding_center_4d_uniform_loop.jl")

    include("guiding_center_4d/poincare_invariant_plots.jl")

end