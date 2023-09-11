# AlgebraicJulia Dependencies
using Catlab
using Catlab.Graphics
using GraphViz
using CombinatorialSpaces
using Decapodes

# External Dependencies
using MLStyle
using MultiScaleArrays
using LinearAlgebra
using OrdinaryDiffEq
using JLD2
using SparseArrays
using Statistics
using CairoMakie
using GeometryBasics: Point2, Point3
Point2D = Point2{Float64};
Point3D = Point3{Float64};

halfar_eq2 = @decapode begin
  h::Form0
  Γ::Form1
  n::Constant

  ḣ == ∂ₜ(h)
  ḣ == ∘(⋆, d, ⋆)(Γ * d(h) * avg₀₁(mag(♯(d(h)))^(n-1)) * avg₀₁(h^(n+2)))
end

to_graphviz(halfar_eq2)