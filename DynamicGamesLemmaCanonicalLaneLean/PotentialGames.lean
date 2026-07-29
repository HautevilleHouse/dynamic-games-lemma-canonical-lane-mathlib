import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure PotentialGamesPackage where
  playerSet : Type u
  strategySpaces : playerSet → Type v
  payoffFunctions : (p : playerSet) → ((p' : playerSet) → strategySpaces p') → ℝ
  potentialFunction : ((p : playerSet) → strategySpaces p) → ℝ
  exactPotentialCondition : Prop
  exactPotentialConditionTerm : exactPotentialCondition

structure PotentialGamesEvidence (P : PotentialGamesPackage) where
  exactPotentialConditionClosed : P.exactPotentialCondition

def PotentialGamesClosed (P : PotentialGamesPackage) : Prop :=
  P.exactPotentialCondition

theorem potential_games_closed_from_evidence (P : PotentialGamesPackage) (E : PotentialGamesEvidence P) :
    PotentialGamesClosed P := by
  exact E.exactPotentialConditionClosed

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse