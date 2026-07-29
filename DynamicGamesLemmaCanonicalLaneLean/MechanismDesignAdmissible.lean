import canonicalLaneMathlib.AdmissibleClass
import DynamicGamesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure Mechanism where
  allocationRule : Type u
  paymentRule : Type v
  typeSpaces : Type w
  outcomeFunction : Type x
  incentiveCompatibility : Prop
  individualRationality : Prop

structure RevelationPrinciple where
  mechanism : Mechanism
  directMechanismExists : Prop
  truthTellingEquilibrium : Prop

structure MechanismDesignAdaVersion where
  A : AdmissibleClass
  revelation : RevelationPrinciple
  revelationProven : revelation.directMechanismExists
  bridgeTerm : bridgeClosed A
  gateTerm : gateClosed A

theorem mechanism_design_admissible (md : MechanismDesignAdaVersion) : ConstrainedDynamicGamesLemmaClosure md.A :=
  And.intro md.bridgeTerm md.gateTerm

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse