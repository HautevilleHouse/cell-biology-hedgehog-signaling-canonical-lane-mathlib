import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure HedgehogAdmittedObject where
  cellType : Type
  shhLigandPresent : Prop
  ptc1Receptor : Prop
  smoActivated : Prop
  gliTranslocation : Prop
  pathwayActive : Prop

structure AdmissibleClass where
  object : HedgehogAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.pathwayActive ↔ (A.object.shhLigandPresent ∧ A.object.ptc1Receptor ∧ A.object.smoActivated ∧ A.object.gliTranslocation)) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse