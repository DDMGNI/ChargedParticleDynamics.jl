"""
Charged Particle in an uniform magnetic field of the form
``B(x,y,z) = B_0 e_z``.
"""
module ThetaPinchField

    import ElectromagneticFields.ThetaPinch

    export pauli_particle_3d_pode, hamiltonian, angular_momentum

    ThetaPinch.@code() # inject magnetic field code

    const qᵢ = [1., 0., 0.]
    const vᵢ = [0., 1., 1.]
    const parameters = (μ = 1E-2,)

    include("pauli_particle_3d.jl")

end
