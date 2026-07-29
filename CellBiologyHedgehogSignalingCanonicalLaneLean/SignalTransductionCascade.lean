import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure HedgehogSignalTransductionPackage where
  patchedReceptorBinding : Prop
  smoothenedActivation : Prop
  gliTranscriptionFactor : Prop
  targetGeneExpression : Prop

structure HedgehogSignalTransductionEvidence (P : HedgehogSignalTransductionPackage) where
  patchedReceptorBindingClosed : P.patchedReceptorBinding
  smoothenedActivationClosed : P.smoothenedActivation
  gliTranscriptionFactorClosed : P.gliTranscriptionFactor
  targetGeneExpressionClosed : P.targetGeneExpression

def HedgehogSignalTransductionClosed (P : HedgehogSignalTransductionPackage) : Prop :=
  P.patchedReceptorBinding ∧ P.smoothenedActivation ∧
  P.gliTranscriptionFactor ∧ P.targetGeneExpression

theorem hedgehog_signal_transduction_closed_from_evidence
    (P : HedgehogSignalTransductionPackage) (E : HedgehogSignalTransductionEvidence P) :
    HedgehogSignalTransductionClosed P := by
  exact And.intro E.patchedReceptorBindingClosed
    (And.intro E.smoothenedActivationClosed
      (And.intro E.gliTranscriptionFactorClosed E.targetGeneExpressionClosed))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse