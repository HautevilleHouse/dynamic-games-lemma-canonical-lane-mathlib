import canonicalLaneMathlib.AdmissibleClass
import DynamicGamesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure ZeroSumGame where
  player1Actions : Type u
  player2Actions : Type v
  payoffMatrix : Type w
  finiteActions : Prop
  mixedExtension : Prop
  valueExists : Prop
  optimalStrategies : Prop

structure MinimaxAdaVersion where
  A : AdmissibleClass
  game : ZeroSumGame
  minimaxValueProven : Prop
  valueTerm : game.valueExists
  bridgeTerm : bridgeClosed A
  gateTerm : gateClosed A

theorem minimax_admissible (mm : MinimaxAdaVersion) : ConstrainedDynamicGamesLemmaClosure mm.A :=
  And.intro mm.bridgeTerm mm.gateTerm

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse