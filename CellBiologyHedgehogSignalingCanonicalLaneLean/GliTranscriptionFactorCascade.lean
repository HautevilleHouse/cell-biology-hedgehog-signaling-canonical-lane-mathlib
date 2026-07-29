import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure GliTranscriptionFactorCascadePackage where
  gliActivator : Type u
  gliRepressor : Type v
  targetGeneRegulation : Prop
  feedbackLoop : Prop
  developmentalPatterning : Prop

structure GliTranscriptionFactorCascadeEvidence (G : GliTranscriptionFactorCascadePackage) where
  targetGeneRegulationClosed : G.targetGeneRegulation
  feedbackLoopClosed : G.feedbackLoop
  developmentalPatterningClosed : G.developmentalPatterning

def GliTranscriptionFactorCascadeClosed (G : GliTranscriptionFactorCascadePackage) : Prop :=
  G.targetGeneRegulation ∧ G.feedbackLoop ∧ G.developmentalPatterning

theorem gli_transcription_factor_cascade_closed_from_evidence (G : GliTranscriptionFactorCascadePackage) (E : GliTranscriptionFactorCascadeEvidence G) :
    GliTranscriptionFactorCascadeClosed G := by
  exact And.intro E.targetGeneRegulationClosed (And.intro E.feedbackLoopClosed E.developmentalPatterningClosed)

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse