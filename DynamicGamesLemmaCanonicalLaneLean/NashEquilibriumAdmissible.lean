import canonicalLaneMathlib.AdmissibleClass
import DynamicGamesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure NashEquilibriumPackage where
  strategicFormGame : Type u
  strategyProfiles : Type v
  payoffFunctions : Type w
  bestResponseCorrespondence : Prop
  existenceFixedPoint : Prop
  equilibriumProfile : Prop

structure NashEquilibriumAdaVersion where
  A : AdmissibleClass
  pkg : NashEquilibriumPackage
  nashExistenceProven : Prop
  nashExistenceTerm : pkg.existenceFixedPoint
  bridgeProjection : bridgeClosed A
  gateProjection : gateClosed A

theorem nash_equilibrium_admissible (ne : NashEquilibriumAdaVersion) : ConstrainedDynamicGamesLemmaClosure ne.A :=
  And.intro ne.bridgeProjection ne.gateProjection

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse