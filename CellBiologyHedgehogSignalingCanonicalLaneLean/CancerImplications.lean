import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure CancerImplicationsPackage where
  aberrantActivation : Prop
  tumorigenesis : Prop
  basalCellCarcinoma : Prop
  medulloblastoma : Prop
  therapeuticTarget : Prop
  aberrantActivationTerm : aberrantActivation
  tumorigenesisTerm : tumorigenesis
  basalCellCarcinomaTerm : basalCellCarcinoma
  medulloblastomaTerm : medulloblastoma
  therapeuticTargetTerm : therapeuticTarget

structure CancerImplicationsEvidence (C : CancerImplicationsPackage) where
  aberrantActivationClosed : C.aberrantActivation
  tumorigenesisClosed : C.tumorigenesis
  basalCellCarcinomaClosed : C.basalCellCarcinoma
  medulloblastomaClosed : C.medulloblastoma
  therapeuticTargetClosed : C.therapeuticTarget

def CancerImplicationsClosed (C : CancerImplicationsPackage) : Prop :=
  C.aberrantActivation ∧ C.tumorigenesis ∧ C.basalCellCarcinoma ∧ C.medulloblastoma ∧ C.therapeuticTarget

theorem cancer_implications_closed_from_evidence (C : CancerImplicationsPackage) (E : CancerImplicationsEvidence C) : CancerImplicationsClosed C := by
  exact And.intro E.aberrantActivationClosed (And.intro E.tumorigenesisClosed (And.intro E.basalCellCarcinomaClosed (And.intro E.medulloblastomaClosed E.therapeuticTargetClosed)))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse