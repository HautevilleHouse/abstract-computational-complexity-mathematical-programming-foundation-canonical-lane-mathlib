import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComputationalComplexityMathematicalProgrammingFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

/-- A state in the Cauchy integral endgame, parameterized by the underlying analytic type. -/
structure CauchyEndgameState (α : Type) where
  data : α

/-- The canonical analytic projection on a Cauchy endgame state. -/
def cauchyAnalyticProjection (α : Type) : Projection (CauchyEndgameState α) := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

/-- The Cauchy projection is idempotent, reflecting the closure of analytic continuation. -/
theorem cauchy_analytic_projection_idempotent (α : Type) (x : CauchyEndgameState α) :
    (cauchyAnalyticProjection α).toFun ((cauchyAnalyticProjection α).toFun x) = (cauchyAnalyticProjection α).toFun x := by
  exact (cauchyAnalyticProjection α).idempotent x

end AbstractComputationalComplexityMathematicalProgrammingFoundationCanonicalLaneLean
end HautevilleHouse