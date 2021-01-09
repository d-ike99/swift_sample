import Foundation

private func simpleQueues(){
  let queue1 = DispatchQueue(label: "com.d-ike.simpleQueue1")
  let queue2 = DispatchQueue(label: "com.d-ike.simpleQueue2")

  // 同期処理 - 「0-9の表示」
  queue1.sync {
      for i in 0..<10{
          print("for_queue1: ", i as Any)
      }
  }
  // 非同期処理 - 「10-19の表示」
  queue1.async {
      for i in 10..<20{
          print("for_queue1: ", i as Any)
      }
  }
  // 非同期処理 - 「20-29の表示」
  queue1.async {
      for i in 20..<30{
          print("for_queue1: ", i as Any)
      }
  }
  // 非同期処理 - 「50-60の表示」
  queue2.async {
      for i in 50..<59{
          print("for_queue2: ", i as Any)
      }
  }
}


// 同期処理呼び出し
simpleQueues()

// 本スレッド - 「100-199の表示」
for i in 100..<200{
    print("for: ", i as Any)
}
