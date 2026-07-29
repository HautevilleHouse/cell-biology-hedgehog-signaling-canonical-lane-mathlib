import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure SonicHedgehogLigand where
  activeForm : Prop
  cholesterolModification : Prop
  palmitoylation : Prop
  diffusionGradient : Prop
  receptorBinding : Prop

structure SonicHedgehogEvidence (L : SonicHedgehogLigand) where
  activeFormClosed : L.activeForm
  cholesterolModificationClosed : L.cholesterolModification
  palmitoylationClosed : L.palmitoylation
  diffusionGradientClosed : L.diffusionGradient
  receptorBindingClosed : L.receptorBinding

def SonicHedgehogClosed (L : SonicHedgehogLigand) : Prop :=
  L.activeForm ∧ L.cholesterolModification ∧ L.palmitoylation ∧ L.diffusionGradient ∧ L.receptorBinding

theorem sonic_hedgehog_closed_from_evidence (L : SonicHedgehogLigand) (E : SonicHedgehogEvidence L) :
    SonicHedgehogClosed L := by
  exact And.intro E.activeFormClosed (And.intro E.cholesterolModificationClosed (And.intro E.palmitoylationClosed (And.intro E.diffusionGradientClosed E.receptorBindingClosed)))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse
