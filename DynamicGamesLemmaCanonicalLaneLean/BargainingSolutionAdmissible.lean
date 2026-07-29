import canonicalLaneMathlib.AdmissibleClass
import DynamicGamesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure BargainingProblem where
  feasibleSet : Type u
  disagreementPoint : Type v
  utilityFunctions : Type w
  feasibleNonempty : Prop
  disagreementInFeasible : Prop

structure NashBargainingSolution where
  problem : BargainingProblem
  solutionExists : Prop
  uniqueness : Prop
  axiomSatisfaction : Prop

structure BargainingAdaVersion where
  A : AdmissibleClass
  bargainingSolution : NashBargainingSolution
  solutionProven : bargainingSolution.solutionExists
  bridgeTerm : bridgeClosed A
  gateTerm : gateClosed A

theorem bargaining_admissible (ba : BargainingAdaVersion) : ConstrainedDynamicGamesLemmaClosure ba.A :=
  And.intro ba.bridgeTerm ba.gateTerm

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse