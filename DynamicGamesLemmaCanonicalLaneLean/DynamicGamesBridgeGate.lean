import canonicalLaneMathlib.AdmissibleClass
import DynamicGamesLemmaCanonicalLaneLean.GameTheoryAdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

def bridgeClosed (A : GameAdmissibleClass) : Prop :=
  A.object.equilibrium

theorem bridge_from_admissible_class (A : GameAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.equilibriumClosed

def gateClosed (A : GameAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GameAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedGameClosure (A : GameAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_game_endgame (A : GameAdmissibleClass) :
    ConstrainedGameClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse