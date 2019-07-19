namespace: Folder1
operation:
  name: RecordingA
  inputs:
    - Quantity: '3'
  sequential_action:
    gav: 'com.microfocus.seq:Folder1.RecordingA:1.0.0'
    steps:
      - step:
          id: '1'
          object_path: 'Browser("Browser")'
          action: Navigate
          default_args: '"http://advantageonlineshopping.com/"'
          snapshot: ".\\Snapshots\\ssf1.png"
          highlight_id: '131938'
      - step:
          id: '2'
          object_path: 'Browser("Browser").Page("Advantage Shopping").Link("TabletsCategoryTxt")'
          action: Click
          snapshot: ".\\Snapshots\\ssf2.html"
          highlight_id: '10000000'
      - step:
          id: '3'
          object_path: 'Browser("Browser").Page("Advantage Shopping").WebButton("buy_now")'
          action: Click
          snapshot: ".\\Snapshots\\ssf3.html"
          highlight_id: '10000000'
      - step:
          id: '4'
          object_path: 'Browser("Browser").Page("Advantage Shopping").WebEdit("quantity")'
          action: Set
          default_args: '"3"'
          snapshot: ".\\Snapshots\\ssf4.html"
          highlight_id: '10000000'
          args: 'Parameter("Quantity")'
      - step:
          id: '5'
          object_path: 'Browser("Browser").Page("Advantage Shopping").WebElement("rabbit")'
          action: Click
          snapshot: ".\\Snapshots\\ssf5.html"
          highlight_id: '10000000'
      - step:
          id: '6'
          object_path: 'Browser("Browser").Page("Advantage Shopping").Link("HOME")'
          action: Click
          snapshot: ".\\Snapshots\\ssf6.html"
          highlight_id: '10000000'
  outputs:
    - return_result: '${return_result}'
    - error_message: '${error_message}'
  results:
    - SUCCESS
    - WARNING
    - FAILURE
