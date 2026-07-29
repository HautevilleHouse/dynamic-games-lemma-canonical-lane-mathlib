import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure DynamicGamesAdmissibleObject where
  game : Type u
  strategySets : Type v
  payoffFunctions : Type w
  equilibriumConcept : Prop
  conclusion : equilibriumConcept

structure AdmissibleClass where
  object : DynamicGamesAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse