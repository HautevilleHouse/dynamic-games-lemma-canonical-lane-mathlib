import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure RepeatedGamePackage where
  stageGame : Type u
  discountFactor : Type v
  strategySpace : Type w
  payoffEvaluation : Type x
  folkTheorem : Prop
  triggerStrategy : Prop
  reputationEffects : Prop

structure RepeatedGameEvidence (R : RepeatedGamePackage) where
  folkTheoremClosed : R.folkTheorem
  triggerStrategyClosed : R.triggerStrategy
  reputationEffectsClosed : R.reputationEffects

def RepeatedGameClosed (R : RepeatedGamePackage) : Prop :=
  R.folkTheorem ∧ R.triggerStrategy ∧ R.reputationEffects

theorem repeated_game_closed_from_evidence (R : RepeatedGamePackage) (E : RepeatedGameEvidence R) : RepeatedGameClosed R := by
  exact And.intro E.folkTheoremClosed (And.intro E.triggerStrategyClosed E.reputationEffectsClosed)

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse