import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure AdmissibleClass where
  object : HedgehogAdmittedObject
  ligandBound : Prop
  receptorActivation : Prop
  gateWitness : ligandBound ∨ receptorActivation

def admittedClosure (A : AdmissibleClass) : Prop :=
  HedgehogWitnessClosed A.object ∧ (A.ligandBound ∨ A.receptorActivation)

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse