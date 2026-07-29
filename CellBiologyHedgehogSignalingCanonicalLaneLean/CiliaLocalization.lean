import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure CiliaLocalizationPackage where
  primaryCilium : Type
  intraflagellarTransport : Prop
  smoothenedCiliaryLocalization : Prop
  patchedCiliaryLocalization : Prop
  gliCiliaryProcessing : Prop

structure CiliaLocalizationEvidence (C : CiliaLocalizationPackage) where
  intraflagellarTransportClosed : C.intraflagellarTransport
  smoothenedCiliaryLocalizationClosed : C.smoothenedCiliaryLocalization
  patchedCiliaryLocalizationClosed : C.patchedCiliaryLocalization
  gliCiliaryProcessingClosed : C.gliCiliaryProcessing

def CiliaLocalizationClosed (C : CiliaLocalizationPackage) : Prop :=
  C.intraflagellarTransport ∧ C.smoothenedCiliaryLocalization ∧ C.patchedCiliaryLocalization ∧ C.gliCiliaryProcessing

theorem cilia_localization_closed_from_evidence (C : CiliaLocalizationPackage) (E : CiliaLocalizationEvidence C) :
    CiliaLocalizationClosed C := by
  exact And.intro E.intraflagellarTransportClosed
    (And.intro E.smoothenedCiliaryLocalizationClosed
      (And.intro E.patchedCiliaryLocalizationClosed E.gliCiliaryProcessingClosed))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse
