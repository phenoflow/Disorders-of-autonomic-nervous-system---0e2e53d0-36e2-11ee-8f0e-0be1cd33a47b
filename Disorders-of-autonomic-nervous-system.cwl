cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  disorders-of-autonomic-nervous-system-horner---primary:
    run: disorders-of-autonomic-nervous-system-horner---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  system---primary:
    run: system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: disorders-of-autonomic-nervous-system-horner---primary/output
  idiopathic-disorders-of-autonomic-nervous-system---primary:
    run: idiopathic-disorders-of-autonomic-nervous-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: system---primary/output
  disorders-of-autonomic-nervous-system---primary:
    run: disorders-of-autonomic-nervous-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: idiopathic-disorders-of-autonomic-nervous-system---primary/output
  sympathetic-disorders-of-autonomic-nervous-system---primary:
    run: sympathetic-disorders-of-autonomic-nervous-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: disorders-of-autonomic-nervous-system---primary/output
  peripheral-disorders-of-autonomic-nervous-system---primary:
    run: peripheral-disorders-of-autonomic-nervous-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: sympathetic-disorders-of-autonomic-nervous-system---primary/output
  neuropathy-disorders-of-autonomic-nervous-system---primary:
    run: neuropathy-disorders-of-autonomic-nervous-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: peripheral-disorders-of-autonomic-nervous-system---primary/output
  disorders-of-autonomic-nervous-system-shoulderhand---primary:
    run: disorders-of-autonomic-nervous-system-shoulderhand---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: neuropathy-disorders-of-autonomic-nervous-system---primary/output
  disorders-of-autonomic-nervous-system-reflex---primary:
    run: disorders-of-autonomic-nervous-system-reflex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: disorders-of-autonomic-nervous-system-shoulderhand---primary/output
  regional-disorders-of-autonomic-nervous-system---primary:
    run: regional-disorders-of-autonomic-nervous-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: disorders-of-autonomic-nervous-system-reflex---primary/output
  other-disorders-of-autonomic-nervous-system---primary:
    run: other-disorders-of-autonomic-nervous-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: regional-disorders-of-autonomic-nervous-system---primary/output
  disorders-of-autonomic-nervous-system-dystrophy---primary:
    run: disorders-of-autonomic-nervous-system-dystrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: other-disorders-of-autonomic-nervous-system---primary/output
  system---secondary:
    run: system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: disorders-of-autonomic-nervous-system-dystrophy---primary/output
  disorders-of-autonomic-nervous-system---secondary:
    run: disorders-of-autonomic-nervous-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: system---secondary/output
  other-disorders-of-autonomic-nervous-system---secondary:
    run: other-disorders-of-autonomic-nervous-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: disorders-of-autonomic-nervous-system---secondary/output
  disorders-of-autonomic-nervous-system-algoneurodystrophy---secondary:
    run: disorders-of-autonomic-nervous-system-algoneurodystrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: other-disorders-of-autonomic-nervous-system---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: disorders-of-autonomic-nervous-system-algoneurodystrophy---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
