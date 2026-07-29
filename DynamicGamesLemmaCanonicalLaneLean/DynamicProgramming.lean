import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure DynamicProgrammingPackage where
  stateSpace : Type u
  actionSpace : Type v
  transitionFunction : Type w
  rewardFunction : Type x
  valueFunction : Prop
  bellmanOptimality : Prop
  policyOptimality : Prop
  contractionMapping : Prop
  markovDecisionProcess : Prop

structure DynamicProgrammingEvidence (P : DynamicProgrammingPackage) where
  valueFunctionClosed : P.valueFunction
  bellmanOptimalityClosed : P.bellmanOptimality
  policyOptimalityClosed : P.policyOptimality
  contractionMappingClosed : P.contractionMapping

def DynamicProgrammingClosed (P : DynamicProgrammingPackage) : Prop :=
  P.valueFunction ∧ P.bellmanOptimality ∧
  P.policyOptimality ∧ P.contractionMapping

theorem dynamic_programming_closed_from_evidence (P : DynamicProgrammingPackage)
    (E : DynamicProgrammingEvidence P) : DynamicProgrammingClosed P := by
  exact And.intro E.valueFunctionClosed
    (And.intro E.bellmanOptimalityClosed
      (And.intro E.policyOptimalityClosed E.contractionMappingClosed))

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse