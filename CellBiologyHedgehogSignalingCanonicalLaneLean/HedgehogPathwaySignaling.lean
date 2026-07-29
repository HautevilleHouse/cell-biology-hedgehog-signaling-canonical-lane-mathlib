import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure HedgehogPathwayPackage where
  ligand : Type u
  receptor : Type v
  signalTransduction : Prop
  transcriptionalResponse : Prop
  cellProliferation : Prop

structure HedgehogPathwayEvidence (P : HedgehogPathwayPackage) where
  signalTransductionClosed : P.signalTransduction
  transcriptionalResponseClosed : P.transcriptionalResponse
  cellProliferationClosed : P.cellProliferation

def HedgehogPathwayClosed (P : HedgehogPathwayPackage) : Prop :=
  P.signalTransduction ∧ P.transcriptionalResponse ∧ P.cellProliferation

theorem hedgehog_pathway_closed_from_evidence (P : HedgehogPathwayPackage) (E : HedgehogPathwayEvidence P) :
    HedgehogPathwayClosed P := by
  exact And.intro E.signalTransductionClosed (And.intro E.transcriptionalResponseClosed E.cellProliferationClosed)

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse