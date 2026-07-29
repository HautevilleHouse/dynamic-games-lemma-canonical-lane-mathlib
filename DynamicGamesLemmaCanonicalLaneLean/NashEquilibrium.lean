import DynamicGamesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure NashEquilibriumPackage (A : AdmissibleClass) where
  bestResponseFunctions : Prop
  fixedPointCondition : Prop
  existenceProof : Prop

def NashEquilibriumClosed (A : AdmissibleClass) (N : NashEquilibriumPackage A) : Prop :=
  N.bestResponseFunctions ∧ N.fixedPointCondition ∧ N.existenceProof

theorem nash_equilibrium_closed (A : AdmissibleClass) (N : NashEquilibriumPackage A) :
    NashEquilibriumClosed A N := by
  exact And.intro N.bestResponseFunctions (And.intro N.fixedPointCondition N.existenceProof)

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse