module TestErrorGolfing

using Test
using ErrorGolfing

using Distributed

@testset "Full course" begin
    @test_throws ArgumentError ErrorGolfing.throw_argument_error()
    @test_throws BoundsError ErrorGolfing.throw_bounds_error()
    @test_throws CompositeException ErrorGolfing.throw_composite_exception()
    @test_throws DimensionMismatch ErrorGolfing.throw_dimension_mismatch()
    @test_throws DivideError ErrorGolfing.throw_divide_error()
    @test_throws DomainError ErrorGolfing.throw_domain_error()
    @test_throws EOFError ErrorGolfing.throw_eof_error()
    @test_throws ErrorException ErrorGolfing.throw_error_exception()
    @test_throws InexactError ErrorGolfing.throw_inexact_error()
    @test_throws InitError ErrorGolfing.throw_init_error()
    @test_throws InterruptException ErrorGolfing.throw_interrupt_exception()
    @test_throws InvalidStateException ErrorGolfing.throw_invalid_state_exception()
    @test_throws KeyError ErrorGolfing.throw_key_error()
    @test_throws LoadError ErrorGolfing.throw_load_error()
    @test_throws OutOfMemoryError ErrorGolfing.throw_out_of_memory_error()
    @test_throws ReadOnlyMemoryError ErrorGolfing.throw_read_only_memory_error()
    @test_throws RemoteException ErrorGolfing.throw_distributed_remote_exception()
    @test_throws MethodError ErrorGolfing.throw_method_error()
    @test_throws OverflowError ErrorGolfing.throw_overflow_error()
    @test_throws Meta.ParseError ErrorGolfing.throw_meta_parse_error()
    @test_throws SystemError ErrorGolfing.throw_system_error()
    @test_throws TypeError ErrorGolfing.throw_type_error()
    @test_throws UndefRefError ErrorGolfing.throw_undef_ref_error()
    @test_throws UndefVarError ErrorGolfing.throw_undef_var_error()
    @test_throws StringIndexError ErrorGolfing.throw_string_index_error()
end

@info "Score: $(sum(f->sum(sizeof,readlines(f;keep=true)),readdir(joinpath(@__DIR__,"..","src");join=true)))"

end # module
