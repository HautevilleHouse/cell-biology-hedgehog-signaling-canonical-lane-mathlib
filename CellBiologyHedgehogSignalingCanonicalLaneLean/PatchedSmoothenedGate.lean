import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure PatchedSmoothenedGate where
  patchedInhibitsSmoothened : Prop
  ligandBindingReleasesInhibition : Prop
  smoothenedMobilizesToCilium : Prop
  signalPropagation : Prop

structure PatchedSmoothenedEvidence (G : PatchedSmoothenedGate) where
  patchedInhibitsSmoothenedClosed : G.patchedInhibitsSmoothened
  ligandBindingReleasesInhibitionClosed : G.ligandBindingReleasesInhibition
  smoothenedMobilizesToCiliumClosed : G.smoothenedMobilizesToCilium
  signalPropagationClosed : G.signalPropagation

def PatchedSmoothenedClosed (G : PatchedSmoothenedGate) : Prop :=
  G.patchedInhibitsSmoothened ∧ G.ligandBindingReleasesInhibition ∧ G.smoothenedMobilizesToCilium ∧ G.signalPropagation

theorem patched_smoothened_closed_from_evidence (G : PatchedSmoothenedGate) (E : PatchedSmoothenedEvidence G) :
    PatchedSmoothenedClosed G := by
  exact And.intro E.patchedInhibitsSmoothenedClosed (And.intro E.ligandBindingReleasesInhibitionClosed (And.intro E.smoothenedMobilizesToCiliumClosed E.signalPropagationClosed))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse
