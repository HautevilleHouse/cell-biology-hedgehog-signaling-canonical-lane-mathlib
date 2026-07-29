import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure GliTranscriptionalOutput where
  gliActivatorForms : Prop
  gliRepressorForms : Prop
  targetGeneActivation : Prop
  cellFateSpecification : Prop
  proliferationControl : Prop

structure GliTranscriptionalEvidence (G : GliTranscriptionalOutput) where
  gliActivatorFormsClosed : G.gliActivatorForms
  gliRepressorFormsClosed : G.gliRepressorForms
  targetGeneActivationClosed : G.targetGeneActivation
  cellFateSpecificationClosed : G.cellFateSpecification
  proliferationControlClosed : G.proliferationControl

def GliTranscriptionalClosed (G : GliTranscriptionalOutput) : Prop :=
  G.gliActivatorForms ∧ G.gliRepressorForms ∧ G.targetGeneActivation ∧ G.cellFateSpecification ∧ G.proliferationControl

theorem gli_transcriptional_closed_from_evidence (G : GliTranscriptionalOutput) (E : GliTranscriptionalEvidence G) :
    GliTranscriptionalClosed G := by
  exact And.intro E.gliActivatorFormsClosed (And.intro E.gliRepressorFormsClosed (And.intro E.targetGeneActivationClosed (And.intro E.cellFateSpecificationClosed E.proliferationControlClosed)))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse
