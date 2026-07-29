import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure HedgehogLigandBiosynthesisPackage where
  precursorProcessing : Prop
  lipidModification : Prop
  secretionMechanism : Prop
  extracellularTransport : Prop

structure HedgehogLigandBiosynthesisEvidence (H : HedgehogLigandBiosynthesisPackage) where
  precursorProcessingClosed : H.precursorProcessing
  lipidModificationClosed : H.lipidModification
  secretionMechanismClosed : H.secretionMechanism
  extracellularTransportClosed : H.extracellularTransport

def HedgehogLigandBiosynthesisClosed (H : HedgehogLigandBiosynthesisPackage) : Prop :=
  H.precursorProcessing ∧ H.lipidModification ∧ H.secretionMechanism ∧ H.extracellularTransport

theorem hedgehog_ligand_biosynthesis_closed_from_evidence (H : HedgehogLigandBiosynthesisPackage) (E : HedgehogLigandBiosynthesisEvidence H) :
    HedgehogLigandBiosynthesisClosed H := by
  exact And.intro E.precursorProcessingClosed (And.intro E.lipidModificationClosed (And.intro E.secretionMechanismClosed E.extracellularTransportClosed))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse