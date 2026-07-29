import DynamicGamesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

def ConstrainedDynamicGamesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamic_games_endgame (A : AdmissibleClass) :
    ConstrainedDynamicGamesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse