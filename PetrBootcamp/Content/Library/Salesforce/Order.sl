namespace: Salesforce
operation:
  name: Order
  outputs:
  - return_result: ${return_result}
  - error_message: ${error_message}
  sequential_action:
    gav: com.microfocus.seq:Salesforce.Order:1.0.0
    steps:
    - step:
        id: '1'
        object_path: Browser("Login | Salesforce").Page("Login | Salesforce").WebEdit("username")
        action: Set
        default_args: '"ron.sercely@microfocus.com"'
        snapshot: .\Snapshots\ssf1.html
        highlight_id: '10000000'
    - step:
        id: '2'
        object_path: Browser("Login | Salesforce").Page("Login | Salesforce").WebEdit("pw")
        action: SetSecure
        default_args: '"1qaz@WSX"'
        snapshot: .\Snapshots\ssf2.html
        highlight_id: '10000000'
    - step:
        id: '3'
        object_path: Browser("Login | Salesforce").Page("Login | Salesforce").WebButton("Log In")
        action: Click
        snapshot: .\Snapshots\ssf3.html
        highlight_id: '10000000'
  results:
  - SUCCESS
  - WARNING
  - FAILURE
