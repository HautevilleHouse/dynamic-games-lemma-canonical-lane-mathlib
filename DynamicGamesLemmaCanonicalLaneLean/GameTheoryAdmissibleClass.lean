import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure GameAdmittedObject where
  game : Type u
  players : Nat
  strategyProfiles : Prop
  payoffs : Prop
  equilibrium : Prop
  equilibriumClosed : equilibrium

structure GameAdmissibleClass where
  object : GameAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def GameAdmittedClosure (A : GameAdmissibleClass) : Prop :=
  A.object.equilibrium ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse