import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure NashEquilibriumPackage where
  playerSet : Type u
  strategySpaces : playerSet → Type v
  payoffFunctions : (p : playerSet) → strategySpaces p → ℝ
  nashEquilibrium : (p : playerSet) → strategySpaces p
  bestResponseCondition : Prop
  bestResponseConditionTerm : bestResponseCondition

structure NashEquilibriumEvidence (N : NashEquilibriumPackage) where
  bestResponseConditionClosed : N.bestResponseCondition

def NashEquilibriumClosed (N : NashEquilibriumPackage) : Prop :=
  N.bestResponseCondition

theorem nash_equilibrium_closed_from_evidence (N : NashEquilibriumPackage) (E : NashEquilibriumEvidence N) :
    NashEquilibriumClosed N := by
  exact E.bestResponseConditionClosed

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse