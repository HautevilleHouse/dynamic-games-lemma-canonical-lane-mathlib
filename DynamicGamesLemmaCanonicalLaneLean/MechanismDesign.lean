import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesLemmaCanonicalLaneLean

structure MechanismDesignPackage where
  agentSet : Type u
  typeSpace : Type v
  outcomeSpace : Type w
  socialChoiceFunction : Type x
  incentiveCompatibility : Prop
  individualRationality : Prop
  revelationPrinciple : Prop

structure MechanismDesignEvidence (M : MechanismDesignPackage) where
  incentiveCompatibilityClosed : M.incentiveCompatibility
  individualRationalityClosed : M.individualRationality
  revelationPrincipleClosed : M.revelationPrinciple

def MechanismDesignClosed (M : MechanismDesignPackage) : Prop :=
  M.incentiveCompatibility ∧ M.individualRationality ∧ M.revelationPrinciple

theorem mechanism_design_closed_from_evidence (M : MechanismDesignPackage) (E : MechanismDesignEvidence M) : MechanismDesignClosed M := by
  exact And.intro E.incentiveCompatibilityClosed (And.intro E.individualRationalityClosed E.revelationPrincipleClosed)

end DynamicGamesLemmaCanonicalLaneLean
end HautevilleHouse