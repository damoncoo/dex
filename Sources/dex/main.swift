
import RxSwift
import Foundation
import Commander

class Main {
    
    public static let `default` = Main()
    private let dispose = DisposeBag()

    func run()  {
        
        do {
            let d =  try? FileManager.default.attributesOfItem(atPath: "/Users/cxy/.proxy/proxy")
            let k = d?[FileAttributeKey.size]
            print(k)
        } catch {
            
        }
        
        
        let timer = Observable<Int>.interval(RxTimeInterval.seconds(1), scheduler: MainScheduler.instance)

        timer.subscribe { (tick) in
            
            print(tick)
        } onError: { (err) in
            
        } onCompleted: {
            
        } onDisposed: {
            
        }.disposed(by: dispose)
    }
}


Main.default.run()

RunLoop.main.run()



