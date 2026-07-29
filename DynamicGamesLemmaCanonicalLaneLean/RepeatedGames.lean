import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure RepeatedGamesPackage where
  stageGame : Type u
  playerSet : Type v
  strategySequences : Type w
  discountFactor : ℝ
  averagePayoff : Type x
  folkTheorem : Prop
  folkTheoremTerm : folkTheorem

structure RepeatedGamesEvidence (R : RepeatedGamesPackage) where
  folkTheoremClosed : R.folkTheorem

def RepeatedGamesClosed (R : RepeatedGamesPackage) : Prop :=
  R.folkTheorem

theorem repeated_games_closed_from_evidence (R : RepeatedGamesPackage) (E : RepeatedGamesEvidence R) :
    RepeatedGamesClosed R := by
  exact E.folkTheoremClosed

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse