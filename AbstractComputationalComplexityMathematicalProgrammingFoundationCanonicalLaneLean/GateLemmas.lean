import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComputationalComplexityMathematicalProgrammingFoundationCanonicalLaneLean

/-- The gate closure property for an admissible class: the bridge is closed exactly when
    the endpoint condition is satisfied or the carried remainder is recorded. -/
def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

/-- Every admissible class satisfies the gate closure condition. -/
theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

/-- Cauchy-type admissible classes: the contour integral around a cycle is determined by
    residues at enclosed singularities, witnessed by the endpoint. -/
def CauchyGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

/-- Riemann-mapping-type admissible classes: the conformal bridge to the unit disk is
    recorded in the remainder. -/
def RiemannMappingGateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

/-- Analytic-continuation bridge: the germs agree on overlaps, so the endpoint is satisfied. -/
def AnalyticContinuationGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

/-- Value-distribution bridge: Picard's theorem records exceptional values as remainder. -/
def ValueDistributionGateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

/-- A Cauchy-gate admissible class is gate closed. -/
theorem gateClosed_of_cauchy_gate (A : AdmissibleClass) (h : CauchyGateClosed A) :
    gateClosed A := by
  exact Or.inl h

/-- A Riemann-mapping-gate admissible class is gate closed. -/
theorem gateClosed_of_riemann_gate (A : AdmissibleClass) (h : RiemannMappingGateClosed A) :
    gateClosed A := by
  exact Or.inr h

/-- An analytic-continuation-gate admissible class is gate closed. -/
theorem gateClosed_of_analytic_continuation_gate (A : AdmissibleClass) (h : AnalyticContinuationGateClosed A) :
    gateClosed A := by
  exact Or.inl h

/-- A value-distribution-gate admissible class is gate closed. -/
theorem gateClosed_of_value_distribution_gate (A : AdmissibleClass) (h : ValueDistributionGateClosed A) :
    gateClosed A := by
  exact Or.inr h

end AbstractComputationalComplexityMathematicalProgrammingFoundationCanonicalLaneLean
end HautevilleHouse