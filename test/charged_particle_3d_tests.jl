
using SafeTestsets

module ChargedParticle3dTests

    using Test
    using GeometricIntegrators

    const Δt = 0.1
    const nt = 1

    export test_charged_particle_3d

    function test_charged_particle_3d(ode::ODE)
        int = Integrator(ode, getTableauGLRK(1), Δt)
        sol = integrate(ode, int, nt)
        @test true
    end

    function test_charged_particle_3d(ode::PODE)
        int = Integrator(ode, TableauIPRK(:pglrk, 2, getCoefficientsGLRK(1)), Δt)
        sol = integrate(ode, int, nt)
        @test true
    end

    function test_charged_particle_3d(ode::IODE)
        int = Integrator(ode, getTableauVPGLRK(1), Δt)
        sol = integrate(ode, int, nt)
        @test true
    end

end



@safetestset "Charged Particle Dynamics in 3D in Uniform Magnetic Field                                           " begin

    using ChargedParticleDynamics.ChargedParticle3d.ChargedParticle3dUniform
    using ..ChargedParticle3dTests

    test_charged_particle_3d(ChargedParticle3dUniform.charged_particle_3d_iode())

end


@safetestset "Charged Particle Dynamics in 3D in Symmetric Magnetic Field                                         " begin

    using ChargedParticleDynamics.ChargedParticle3d.ChargedParticle3dSymmetric
    using ..ChargedParticle3dTests

    test_charged_particle_3d(ChargedParticle3dSymmetric.charged_particle_3d_iode())

end


@safetestset "Charged Particle Dynamics in 3D in Singular Magnetic Field                                          " begin

    using ChargedParticleDynamics.ChargedParticle3d.ChargedParticle3dSingular
    using ..ChargedParticle3dTests

    test_charged_particle_3d(ChargedParticle3dSingular.charged_particle_3d_iode())

end


@safetestset "Charged Particle Dynamics in 3D in Theta Pinch                                                      " begin

    using ChargedParticleDynamics.ChargedParticle3d.ChargedParticle3dThetaPinchNoncanonical
    using ..ChargedParticle3dTests

    test_charged_particle_3d(ChargedParticle3dThetaPinchNoncanonical.charged_particle_3d_iode())

end


@safetestset "Charged Particle Dynamics in 3D in Tokamak (canonical coordinates)                                  " begin

    using ChargedParticleDynamics.ChargedParticle3d.ChargedParticle3dTokamakCanonical
    using ..ChargedParticle3dTests

    test_charged_particle_3d(ChargedParticle3dTokamakCanonical.charged_particle_3d_pode())

end


@safetestset "Charged Particle Dynamics in 3D in Tokamak (noncanonical coordinates)                               " begin

    using ChargedParticleDynamics.ChargedParticle3d.ChargedParticle3dTokamakNoncanonical
    using ..ChargedParticle3dTests

    test_charged_particle_3d(ChargedParticle3dTokamakNoncanonical.charged_particle_3d_iode())

end
