import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure NegativeRegulationPackage where
  patchedInhibition : Prop
  smoothenedSuppression : Prop
  gliRepressorForm : Prop
  pathwayOffState : Prop
  patchedInhibitionTerm : patchedInhibition
  smoothenedSuppressionTerm : smoothenedSuppression
  gliRepressorFormTerm : gliRepressorForm
  pathwayOffStateTerm : pathwayOffState

structure NegativeRegulationEvidence (N : NegativeRegulationPackage) where
  patchedInhibitionClosed : N.patchedInhibition
  smoothenedSuppressionClosed : N.smoothenedSuppression
  gliRepressorFormClosed : N.gliRepressorForm
  pathwayOffStateClosed : N.pathwayOffState

def NegativeRegulationClosed (N : NegativeRegulationPackage) : Prop :=
  N.patchedInhibition ∧ N.smoothenedSuppression ∧ N.gliRepressorForm ∧ N.pathwayOffState

theorem negative_regulation_closed_from_evidence (N : NegativeRegulationPackage) (E : NegativeRegulationEvidence N) : NegativeRegulationClosed N := by
  exact And.intro E.patchedInhibitionClosed (And.intro E.smoothenedSuppressionClosed (And.intro E.gliRepressorFormClosed E.pathwayOffStateClosed))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse