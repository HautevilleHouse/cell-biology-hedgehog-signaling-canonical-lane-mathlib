import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure HedgehogGlycosylationPackage where
  cholesterolModification : Prop
  palmitateModification : Prop
  dualLipidModification : Prop
  secretionCompetence : Prop

structure HedgehogGlycosylationEvidence (P : HedgehogGlycosylationPackage) where
  cholesterolModificationClosed : P.cholesterolModification
  palmitateModificationClosed : P.palmitateModification
  dualLipidModificationClosed : P.dualLipidModification
  secretionCompetenceClosed : P.secretionCompetence

def HedgehogGlycosylationClosed (P : HedgehogGlycosylationPackage) : Prop :=
  P.cholesterolModification ∧ P.palmitateModification ∧
  P.dualLipidModification ∧ P.secretionCompetence

theorem hedgehog_glycosylation_closed_from_evidence
    (P : HedgehogGlycosylationPackage) (E : HedgehogGlycosylationEvidence P) :
    HedgehogGlycosylationClosed P := by
  exact And.intro E.cholesterolModificationClosed
    (And.intro E.palmitateModificationClosed
      (And.intro E.dualLipidModificationClosed E.secretionCompetenceClosed))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse