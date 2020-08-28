Base.@deprecate min(V1::ElementarySpace, V2::ElementarySpace) infimum(V1, V2)
Base.@deprecate max(V1::ElementarySpace, V2::ElementarySpace) supremum(V1, V2)
Base.@deprecate(infinum(V1, V2...), infimum(V1, V2...))

Base.@deprecate(fusiontreetype(::Type{I}, ::StaticLength{N}) where {I<:Sector, N},
    fusiontreetype(I, N))

abstract type RepresentationSpace{I<:Sector} end
Base.@deprecate(RepresentationSpace(args...), GradedSpace(args...))
Base.@deprecate(RepresentationSpace{I}(args...) where {I}, GradedSpace{I}(args...))

Base.@deprecate(
    permuteind(t::TensorMap, p1::IndexTuple, p2::IndexTuple=(); copy::Bool = false),
    permute(t, p1, p2; copy = copy))

@noinline function ℤ₂(args...)
    Base.depwarn("`ℤ₂(args...)` is deprecated, use `Z2Irrep(args...)` or ``Irrep{ℤ₂}(args...)` instead.", ((Base.Core).Typeof(ℤ₂)).name.mt.name)
    Irrep{ℤ₂}(args...)
end
@noinline function ℤ₃(args...)
    Base.depwarn("`ℤ₃(args...)` is deprecated, use `Z3Irrep(args...)` or ``Irrep{ℤ₃}(args...)` instead.", ((Base.Core).Typeof(ℤ₃)).name.mt.name)
    Irrep{ℤ₃}(args...)
end
@noinline function ℤ₄(args...)
    Base.depwarn("`ℤ₄(args...)` is deprecated, use `Z4Irrep(args...)` or ``Irrep{ℤ₄}(args...)` instead.", ((Base.Core).Typeof(ℤ₄)).name.mt.name)
    Irrep{ℤ₄}(args...)
end
@noinline function U₁(args...)
    Base.depwarn("`U₁(args...)` is deprecated, use `U1Irrep(args...)` or ``Irrep{U₁}(args...)` instead.", ((Base.Core).Typeof(U₁)).name.mt.name)
    Irrep{U₁}(args...)
end
@noinline function CU₁(args...)
    Base.depwarn("`CU₁(args...)` is deprecated, use `CU1Irrep(args...)` or ``Irrep{CU₁}(args...)` instead.", ((Base.Core).Typeof(CU₁)).name.mt.name)
    Irrep{CU₁}(args...)
end
@noinline function SU₂(args...)
    Base.depwarn("`SU₂(args...)` is deprecated, use `SU2Irrep(args...)` or ``Irrep{SU₂}(args...)` instead.", ((Base.Core).Typeof(SU₂)).name.mt.name)
    Irrep{SU₂}(args...)
end
