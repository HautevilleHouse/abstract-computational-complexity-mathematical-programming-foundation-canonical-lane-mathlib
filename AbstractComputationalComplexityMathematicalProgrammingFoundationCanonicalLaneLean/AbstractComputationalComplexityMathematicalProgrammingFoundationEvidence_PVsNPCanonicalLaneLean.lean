/-
All Rights Reserved - No License Granted

Copyright (c) 2026 HautevilleHouse. All rights reserved.

This repository is published for academic review, citation, priority, public
notice, and research-reference purposes only.

No license is granted to use, copy, reproduce, redistribute, modify, merge,
publish, distribute, sublicense, sell, fork, mirror, scrape, use for training or
fine-tuning, include in a dataset or benchmark, use to create, evaluate, or
benchmark a derivative system, incorporate into another system, or create
derivative works from this repository or any substantial portion of it without
prior written permission from the rights holder.

Viewing this repository on GitHub for academic review and citation is permitted
with all rights reserved by the rights holder.

Any discussion, review, comparison, implementation, derivative research use, or
public reference to this repository must cite the repository and preserve this
notice.

Unauthorized reproduction or redistribution of this repository, including public
GitHub forks containing the repository contents, constitutes copyright
infringement and may be subject to DMCA.
-/
import canonicalLaneMathlib.AdmissibleClass

noncomputable section
open Classical

namespace HautevilleHouse.AbstractComputationalComplexityMathematicalProgrammingFoundationCanonicalLaneLean

-- Decision problems encoded as subsets of ℕ.
abbrev Problem := ℕ → Prop

/-- Many-one reducibility between problems. -/
def Reducible (p q : Problem) : Prop :=
  ∃ f : ℕ → ℕ, ∀ n, p n ↔ q (f n)

namespace Reducible

@[refl]
theorem refl (p : Problem) : Reducible p p := by
  refine ⟨fun n => n, ?_⟩
  intro n
  rfl

@[trans]
theorem trans {p q r : Problem} (h₁ : Reducible p q) (h₂ : Reducible q r) : Reducible p r := by
  rcases h₁ with ⟨f, hf⟩
  rcases h₂ with ⟨g, hg⟩
  refine ⟨fun n => g (f n), ?_⟩
  intro n
  constructor
  · intro h
    exact (hg (f n)).2 ((hf n).1 h)
  · intro h
    exact (hf n).2 ((hg (f n)).1 h)

end Reducible

/-- A complexity class is a collection of problems closed downward under many-one reducibility. -/
structure ComplexityClass where
  (members : Set Problem)
  (downward_closed : ∀ {p q : Problem}, q ∈ members → Reducible p q → p ∈ members)

namespace ComplexityClass

/-- The universal class is a complexity class. -/
instance : Inhabited ComplexityClass where
  default := {
    members := Set.univ
    downward_closed := by
      intro p q hq hp
      exact Set.mem_univ p
  }

/-- Intersection of two complexity classes. -/
def inter (C D : ComplexityClass) : ComplexityClass where
  members := C.members ∩ D.members
  downward_closed := by
    intro p q hq hp
    exact ⟨C.downward_closed (by exact hq.1) hp, D.downward_closed (by exact hq.2) hp⟩

/-- Union of two complexity classes. -/
def union (C D : ComplexityClass) : ComplexityClass where
  members := C.members ∪ D.members
  downward_closed := by
    intro p q hq hp
    rcases hq with hqC | hqD
    · left
      exact C.downward_closed hqC hp
    · right
      exact D.downward_closed hqD hp

/-- The class of classically decidable problems. -/
def decidableClass : ComplexityClass where
  members := {p | ∀ n, p n ∨ ¬ p n}
  downward_closed := by
    intro p q hq hp
    rcases hp with ⟨f, hf⟩
    intro n
    rcases hq (f n) with hqtrue | hqfalse
    · left
      exact (hf n).2 hqtrue
    · right
      intro hp
      exact hqfalse ((hf n).1 hp)

end ComplexityClass

/-- A monotone measure of computational cost. -/
structure ComplexityMeasure where
  (cost : Problem → ℕ → ℕ)
  (monotone : ∀ p n m, n ≤ m → cost p n ≤ cost p m)

namespace ComplexityMeasure

/-- Pointwise maximum of two measures. -/
noncomputable def max (α β : ComplexityMeasure) : ComplexityMeasure where
  cost := fun p n => Nat.max (α.cost p n) (β.cost p n)
  monotone := by
    intro p n m hnm
    exact max_le_max (α.monotone p n m hnm) (β.monotone p n m hnm)

end ComplexityMeasure

/-- An abstract mathematical program: given an instance `n`, the feasible solutions are a subset of ℕ,
  and each solution is assigned an objective cost. -/
structure MathematicalProgram where
  (Feasible : ℕ → ℕ → Prop)
  (Objective : ℕ → ℕ → ℕ)

namespace MathematicalProgram

/-- The decision version at a bound `k`. -/
def Decision (P : MathematicalProgram) (k : ℕ) : Problem :=
  fun n => ∃ s : ℕ, P.Feasible n s ∧ P.Objective n s ≤ k

/-- The feasibility version. -/
def Feasibility (P : MathematicalProgram) : Problem :=
  fun n => ∃ s : ℕ, P.Feasible n s

/-- Truncate a program to solutions of objective at most `k`. -/
def boundedProgram (P : MathematicalProgram) (k : ℕ) : MathematicalProgram where
  Feasible := fun n s => P.Feasible n s ∧ P.Objective n s ≤ k
  Objective := P.Objective

/-- The decision version of `P` at bound `k` equals the feasibility problem of the truncated program. -/
theorem decision_eq_bounded_feasibility (P : MathematicalProgram) (k : ℕ) :
    Decision P k = Feasibility (boundedProgram P k) := by
  ext n
  rfl

/-- Consequently, the decision version is reducible to the feasibility of the bounded program. -/
theorem decision_reducible_to_bounded_feasibility (P : MathematicalProgram) (k : ℕ) :
    Reducible (Decision P k) (Feasibility (boundedProgram P k)) := by
  rw [decision_eq_bounded_feasibility]
  exact Reducible.refl _

/-- If the feasibility of the bounded program is in a complexity class, then so is the decision problem. -/
theorem membership_of_decision_in_class (P : MathematicalProgram) (k : ℕ)
    (C : ComplexityClass) (hfeas : Feasibility (boundedProgram P k) ∈ C.members) :
    Decision P k ∈ C.members := by
  have hred : Reducible (Decision P k) (Feasibility (boundedProgram P k)) :=
    decision_reducible_to_bounded_feasibility P k
  exact C.downward_closed hfeas hred

end MathematicalProgram

end namespace