namespace: Folder1
flow:
  name: flow1
  workflow:
    - RecordingA:
        do:
          Folder1.RecordingA: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      RecordingA:
        x: 34
        'y': 84
        navigate:
          8261bf3e-e70c-f7de-ca9b-44c75032406c:
            targetId: f770cef2-028b-01ac-5315-d325ff2eaf4d
            port: SUCCESS
          d578ef30-b03c-265d-ce69-fb20c253f49f:
            targetId: 771efc01-a6c4-4ca8-091e-9043c5d3f6a0
            port: FAILURE
    results:
      SUCCESS:
        f770cef2-028b-01ac-5315-d325ff2eaf4d:
          x: 488
          'y': 38
      FAILURE:
        771efc01-a6c4-4ca8-091e-9043c5d3f6a0:
          x: 476
          'y': 158
