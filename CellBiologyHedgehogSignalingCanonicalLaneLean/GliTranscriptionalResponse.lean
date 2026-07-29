import canonicalLaneMathlib.AdmissibleClass
import CellBiologyHedgehogSignalingCanonicalLaneLean.HedgehogAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure GliTranscriptionalResponsePackage where
  gliActivatorForm : Prop
  nuclearTranslocation : Prop
  targetGeneActivation : Prop
  transcriptionalProgram : Prop

structure GliTranscriptionalResponseEvidence (G : GliTranscriptionalResponsePackage) where
  gliActivatorFormClosed : G.gliActivatorForm
  nuclearTranslocationClosed : G.nuclearTranslocation
  targetGeneActivationClosed : G.targetGeneActivation
  transcriptionalProgramClosed : G.transcriptionalProgram

def GliTranscriptionalResponseClosed (G : GliTranscriptionalResponsePackage) : Prop :=
  G.gliActivatorForm ∧ G.nuclearTranslocation ∧ G.targetGeneActivation ∧ G.transcriptionalProgram

theorem gli_transcriptional_response_closed_from_evidence
    (G : GliTranscriptionalResponsePackage) (E : GliTranscriptionalResponseEvidence G) :
    GliTranscriptionalResponseClosed G := by
  exact And.intro E.gliActivatorFormClosed (And.intro E.nuclearTranslocationClosed (And.intro E.targetGeneActivationClosed E.transcriptionalProgramClosed))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse