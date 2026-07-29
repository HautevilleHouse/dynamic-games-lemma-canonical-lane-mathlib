import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure ExtensiveFormGamePackage where
  gameTree : Type u
  playerSet : Type v
  informationSets : Type w
  payoffFunctions : Type x
  subgamePerfectEquilibrium : Prop
  sequentialEquilibrium : Prop
  credibleThreatRefinement : Prop

structure ExtensiveFormGameEvidence (E : ExtensiveFormGamePackage) where
  subgamePerfectEquilibriumClosed : E.subgamePerfectEquilibrium
  sequentialEquilibriumClosed : E.sequentialEquilibrium
  credibleThreatRefinementClosed : E.credibleThreatRefinement

def ExtensiveFormGameClosed (E : ExtensiveFormGamePackage) : Prop :=
  E.subgamePerfectEquilibrium ∧ E.sequentialEquilibrium ∧ E.credibleThreatRefinement

theorem extensive_form_game_closed_from_evidence (E : ExtensiveFormGamePackage) (Ev : ExtensiveFormGameEvidence E) : ExtensiveFormGameClosed E := by
  exact And.intro Ev.subgamePerfectEquilibriumClosed (And.intro Ev.sequentialEquilibriumClosed Ev.credibleThreatRefinementClosed)

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse