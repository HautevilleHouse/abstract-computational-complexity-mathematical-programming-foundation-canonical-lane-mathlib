import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic
import Mathlib.Data.Set.Basic
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace AbstractComputationalComplexityMathematicalProgrammingFoundationCanonicalLaneLean

abbrev ComplexPoint := ℂ
abbrev ComplexLanguage := Set ComplexPoint

structure DecisionProcedure where
  accepts : ComplexPoint → Bool

structure WitnessRelation where
  accepts : ComplexPoint → ComplexPoint → Prop

structure CertificateBound where
  degree : Nat
  radius : ℝ

structure ClassicalComplexObject where
  language : ComplexLanguage
  witnessRelation : WitnessRelation
  bound : CertificateBound

structure AdmittedComplexObject where
  classicalObject : ClassicalComplexObject
  projectedLanguage : ComplexLanguage
  solver : DecisionProcedure

structure ComplexEndgameState where
  admittedObject : AdmittedComplexObject

def Decides (M : DecisionProcedure) (L : ComplexLanguage) : Prop :=
  ∀ x : ComplexPoint, M.accepts x = true ↔ x ∈ L

end AbstractComputationalComplexityMathematicalProgrammingFoundationCanonicalLaneLean
end HautevilleHouse