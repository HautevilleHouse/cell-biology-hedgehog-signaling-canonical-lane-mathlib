import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure PatchedSmoothenedRegulationPackage where
  patchedReceptor : Type u
  smoothenedReceptor : Type v
  patchedInhibition : Prop
  ligandReleaseInhibition : Prop
  smoothenedActivation : Prop

structure PatchedSmoothenedRegulationEvidence (P : PatchedSmoothenedRegulationPackage) where
  patchedInhibitionClosed : P.patchedInhibition
  ligandReleaseInhibitionClosed : P.ligandReleaseInhibition
  smoothenedActivationClosed : P.smoothenedActivation

def PatchedSmoothenedRegulationClosed (P : PatchedSmoothenedRegulationPackage) : Prop :=
  P.patchedInhibition ∧ P.ligandReleaseInhibition ∧ P.smoothenedActivation

theorem patched_smoothened_regulation_closed_from_evidence (P : PatchedSmoothenedRegulationPackage) (E : PatchedSmoothenedRegulationEvidence P) :
    PatchedSmoothenedRegulationClosed P := by
  exact And.intro E.patchedInhibitionClosed (And.intro E.ligandReleaseInhibitionClosed E.smoothenedActivationClosed)

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse