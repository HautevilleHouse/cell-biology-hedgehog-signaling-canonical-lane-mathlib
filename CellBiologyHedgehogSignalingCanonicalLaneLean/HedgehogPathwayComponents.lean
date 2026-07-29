import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure HedgehogPathwayPackage where
  ligand : Type u
  receptor : Type v
  patched : Type w
  smoothened : Type x
  gliTranscriptionFactor : Type y
  pathwayActivated : Prop
  patchedInhibitsSmoothened : Prop
  smoothenedActivatesGli : Prop
  gliRegulatesTargetGenes : Prop
  pathwayActivatedTerm : pathwayActivated
  patchedInhibitsSmoothenedTerm : patchedInhibitsSmoothened
  smoothenedActivatesGliTerm : smoothenedActivatesGli
  gliRegulatesTargetGenesTerm : gliRegulatesTargetGenes

structure HedgehogPathwayEvidence (P : HedgehogPathwayPackage) where
  pathwayActivatedClosed : P.pathwayActivated
  patchedInhibitsSmoothenedClosed : P.patchedInhibitsSmoothened
  smoothenedActivatesGliClosed : P.smoothenedActivatesGli
  gliRegulatesTargetGenesClosed : P.gliRegulatesTargetGenes

def HedgehogPathwayClosed (P : HedgehogPathwayPackage) : Prop :=
  P.pathwayActivated ∧ P.patchedInhibitsSmoothened ∧ P.smoothenedActivatesGli ∧ P.gliRegulatesTargetGenes

theorem hedgehog_pathway_closed_from_evidence (P : HedgehogPathwayPackage) (E : HedgehogPathwayEvidence P) : HedgehogPathwayClosed P := by
  exact And.intro E.pathwayActivatedClosed (And.intro E.patchedInhibitsSmoothenedClosed (And.intro E.smoothenedActivatesGliClosed E.gliRegulatesTargetGenesClosed))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse