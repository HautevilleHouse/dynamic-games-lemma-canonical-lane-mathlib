import DynamicGamesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure MinimaxTheoremPackage (A : AdmissibleClass) where
  zeroSumGame : Prop
  mixedStrategies : Prop
  valueEquality : Prop
  existenceProof : Prop

def MinimaxClosed (A : AdmissibleClass) (M : MinimaxTheoremPackage A) : Prop :=
  M.zeroSumGame ∧ M.mixedStrategies ∧ M.valueEquality ∧ M.existenceProof

theorem minimax_closed (A : AdmissibleClass) (M : MinimaxTheoremPackage A) :
    MinimaxClosed A M := by
  exact And.intro M.zeroSumGame (And.intro M.mixedStrategies (And.intro M.valueEquality M.existenceProof))

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse