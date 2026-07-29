import canonicalLaneMathlib.AdmissibleClass
import CellBiologyHedgehogSignalingCanonicalLaneLean.HedgehogAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure ShhPatchedSmoComplexPackage where
  shhLigandBound : Prop
  patched1Inhibited : Prop
  smoReleased : Prop
  complexFormed : Prop

structure ShhPatchedSmoComplexEvidence (C : ShhPatchedSmoComplexPackage) where
  shhLigandBoundClosed : C.shhLigandBound
  patched1InhibitedClosed : C.patched1Inhibited
  smoReleasedClosed : C.smoReleased
  complexFormedClosed : C.complexFormed

def ShhPatchedSmoComplexClosed (C : ShhPatchedSmoComplexPackage) : Prop :=
  C.shhLigandBound ∧ C.patched1Inhibited ∧ C.smoReleased ∧ C.complexFormed

theorem shh_patched_smo_complex_closed_from_evidence (C : ShhPatchedSmoComplexPackage)
    (E : ShhPatchedSmoComplexEvidence C) : ShhPatchedSmoComplexClosed C := by
  exact And.intro E.shhLigandBoundClosed (And.intro E.patched1InhibitedClosed (And.intro E.smoReleasedClosed E.complexFormedClosed))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse