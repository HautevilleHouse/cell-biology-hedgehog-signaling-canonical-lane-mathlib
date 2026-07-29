import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure HedgehogCell where
  membrane : Type u
  primaryCilium : Type v
  signalReception : Prop
  signalTransduction : Prop
  transcriptionalResponse : Prop

structure PathComponents where
  patchedReceptor : Prop
  smoothenedActivation : Prop
  gliTranscriptionFactors : Prop
  pathwayOnState : Prop
  pathwayOffState : Prop

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse
