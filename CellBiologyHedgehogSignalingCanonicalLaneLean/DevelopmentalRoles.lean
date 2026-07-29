import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingCanonicalLaneLean

structure DevelopmentalRolesPackage where
  embryonicPatterning : Prop
  limbDevelopment : Prop
  neuralTubePatterning : Prop
  cellProliferation : Prop
  cellDifferentiation : Prop
  embryonicPatterningTerm : embryonicPatterning
  limbDevelopmentTerm : limbDevelopment
  neuralTubePatterningTerm : neuralTubePatterning
  cellProliferationTerm : cellProliferation
  cellDifferentiationTerm : cellDifferentiation

structure DevelopmentalRolesEvidence (D : DevelopmentalRolesPackage) where
  embryonicPatterningClosed : D.embryonicPatterning
  limbDevelopmentClosed : D.limbDevelopment
  neuralTubePatterningClosed : D.neuralTubePatterning
  cellProliferationClosed : D.cellProliferation
  cellDifferentiationClosed : D.cellDifferentiation

def DevelopmentalRolesClosed (D : DevelopmentalRolesPackage) : Prop :=
  D.embryonicPatterning ∧ D.limbDevelopment ∧ D.neuralTubePatterning ∧ D.cellProliferation ∧ D.cellDifferentiation

theorem developmental_roles_closed_from_evidence (D : DevelopmentalRolesPackage) (E : DevelopmentalRolesEvidence D) : DevelopmentalRolesClosed D := by
  exact And.intro E.embryonicPatterningClosed (And.intro E.limbDevelopmentClosed (And.intro E.neuralTubePatterningClosed (And.intro E.cellProliferationClosed E.cellDifferentiationClosed)))

end CellBiologyHedgehogSignalingCanonicalLaneLean
end HautevilleHouse