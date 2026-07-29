import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyHedgehogSignalingCanonicalLaneLean.HedgehogSignalingPathway

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure GliTranscriptionalRegulationPackage {H : HedgehogSignalingPackage} (sig : HedgehogSignalingClosed H) where
  gliActivatorForm : Prop
  gliRepressorForm : Prop
  targetGeneActivation : Prop
  targetGeneRepression : Prop
  cellProliferation : Prop

structure GliTranscriptionalRegulationEvidence {H : HedgehogSignalingPackage} {sig : HedgehogSignalingClosed H}
    (G : GliTranscriptionalRegulationPackage sig) where
  gliActivatorFormClosed : G.gliActivatorForm
  gliRepressorFormClosed : G.gliRepressorForm
  targetGeneActivationClosed : G.targetGeneActivation
  targetGeneRepressionClosed : G.targetGeneRepression
  cellProliferationClosed : G.cellProliferation

def GliTranscriptionalRegulationClosed {H : HedgehogSignalingPackage} {sig : HedgehogSignalingClosed H}
    (G : GliTranscriptionalRegulationPackage sig) : Prop :=
  G.gliActivatorForm ∧ G.gliRepressorForm ∧ G.targetGeneActivation ∧ G.targetGeneRepression ∧ G.cellProliferation

theorem gli_transcriptional_regulation_closed_from_evidence
    {H : HedgehogSignalingPackage} {sig : HedgehogSignalingClosed H}
    (G : GliTranscriptionalRegulationPackage sig) (E : GliTranscriptionalRegulationEvidence G) :
    GliTranscriptionalRegulationClosed G := by
  exact And.intro E.gliActivatorFormClosed
    (And.intro E.gliRepressorFormClosed
      (And.intro E.targetGeneActivationClosed
        (And.intro E.targetGeneRepressionClosed E.cellProliferationClosed)))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse
