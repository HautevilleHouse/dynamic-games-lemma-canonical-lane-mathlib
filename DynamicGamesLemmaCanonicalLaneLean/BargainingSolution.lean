import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure BargainingSolutionPackage where
  bargainingSet : Type u
  disagreementPoint : Type v
  nashBargainingSolution : Type w
  kalaiSmorodinskySolution : Type x
  paretoEfficiency : Prop
  symmetryFairness : Prop
  independenceIrrelevantAlternatives : Prop

structure BargainingSolutionEvidence (B : BargainingSolutionPackage) where
  paretoEfficiencyClosed : B.paretoEfficiency
  symmetryFairnessClosed : B.symmetryFairness
  independenceIrrelevantAlternativesClosed : B.independenceIrrelevantAlternatives

def BargainingSolutionClosed (B : BargainingSolutionPackage) : Prop :=
  B.paretoEfficiency ∧ B.symmetryFairness ∧ B.independenceIrrelevantAlternatives

theorem bargaining_solution_closed_from_evidence (B : BargainingSolutionPackage) (E : BargainingSolutionEvidence B) : BargainingSolutionClosed B := by
  exact And.intro E.paretoEfficiencyClosed (And.intro E.symmetryFairnessClosed E.independenceIrrelevantAlternativesClosed)

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse