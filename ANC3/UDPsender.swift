import UIKit
import Network

class UDPsender: UIViewController {

    var connection: NWConnection?
    var hostUDP: NWEndpoint.Host = ""
    var portUDP: NWEndpoint.Port = 0
    var hexStr: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Hack to wait until everything is set up
        var x = 0
        while(x<1000000000) {
            x+=1
        }
        //connectToUDP(hostUDP,portUDP)
    }
    
    
    func sendUDPStr(remoteHost:String ,remotePort:Int, action:String){
        
        self.hostUDP = NWEndpoint.Host(remoteHost)
        self.portUDP = NWEndpoint.Port(String(remotePort)) ?? 0
        connectToUDP(hostUDP,portUDP)
        sendUDP(action)
    }
    
    func sendUDPHEXStr(remoteHost:String ,remotePort:Int, action:String){
        self.hostUDP = NWEndpoint.Host(remoteHost)
        self.portUDP = NWEndpoint.Port(String(remotePort)) ?? 0
        connectToUDP(hostUDP,portUDP)
        self.hexStr = action.trimmingCharacters(in: .whitespaces)
        print(hexStr)
        sendUDP(hexStr.hexadecimal ?? Data([0]))
    }
    
    
    
    
    
    

    func connectToUDP(_ hostUDP: NWEndpoint.Host, _ portUDP: NWEndpoint.Port) {
        // Transmited message:
        let messageToUDP = "Test message"

        self.connection = NWConnection(host: hostUDP, port: portUDP, using: .udp)

        self.connection?.stateUpdateHandler = { (newState) in
            print("This is stateUpdateHandler:")
            switch (newState) {
                case .ready:
                    print("State: Ready\n")
                    self.sendUDP(messageToUDP)
                    self.receiveUDP()
                case .setup:
                    print("State: Setup\n")
                case .cancelled:
                    print("State: Cancelled\n")
                case .preparing:
                    print("State: Preparing\n")
                default:
                    print("ERROR! State not defined!\n")
            }
        }

        self.connection?.start(queue: .global())
    }

    func sendUDP(_ content: Data) {
        self.connection?.send(content: content, completion: NWConnection.SendCompletion.contentProcessed(({ (NWError) in
            if (NWError == nil) {
                print("Data was sent to UDP")
            } else {
                print("ERROR! Error when data (Type: Data) sending. NWError: \n \(NWError!)")
            }
        })))
    }

    func sendUDP(_ content: String) {
        let contentToSendUDP = content.data(using: String.Encoding.ascii)
        self.connection?.send(content: contentToSendUDP, completion: NWConnection.SendCompletion.contentProcessed(({ (NWError) in
            if (NWError == nil) {
                print("Data was sent to UDP")
            } else {
                print("ERROR! Error when data (Type: Data) sending. NWError: \n \(NWError!)")
            }
        })))
    }

    func receiveUDP() {
        self.connection?.receiveMessage { (data, context, isComplete, error) in
            if (isComplete) {
                print("Receive is complete")
                if (data != nil) {
                    let backToString = String(decoding: data!, as: UTF8.self)
                    print("Received message: \(backToString)")
                } else {
                    print("Data == nil")
                }
            }
        }
    }
}
