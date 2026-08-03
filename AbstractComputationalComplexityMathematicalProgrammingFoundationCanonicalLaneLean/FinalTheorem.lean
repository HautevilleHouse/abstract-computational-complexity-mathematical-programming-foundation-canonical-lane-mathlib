import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComputationalComplexityMathematicalProgrammingFoundationCanonicalLaneLean

def ConstrainedComputationalComplexityMathematicalProgrammingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_computational_complexity_mathematical_programming_endgame (A : AdmissibleClass) :
    ConstrainedComputationalComplexityMathematicalProgrammingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbstractComputationalComplexityMathematicalProgrammingFoundationCanonicalLaneLean
end HautevilleHouse