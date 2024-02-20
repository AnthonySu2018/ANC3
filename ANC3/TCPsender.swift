//
//  TCPsender.swift
//  ANC3
//
//  Created by AnthonySu on 2024/2/20.
//

import UIKit
import Network


class TCPsender: UIViewController {
    
    var connection: NWConnection!
    var hostTCP: NWEndpoint.Host = ""
    var portTCP: NWEndpoint.Port = 0
    var hexStr: String = ""
    
    func sendTCPHEXStr(remoteHost:String ,remotePort:Int, action:String){
        self.hostTCP = NWEndpoint.Host(remoteHost)
        self.portTCP = NWEndpoint.Port(String(remotePort)) ?? 0
        self.hexStr = action.trimmingCharacters(in: .whitespaces)
        print(hexStr)
        
        connectToTcp(hostTCP,portTCP,hexStr.hexadecimal ?? Data([0]))

    }
    
    
    
    func connectToTcp(_ hostTCP: NWEndpoint.Host, _ portTCP: NWEndpoint.Port,_ data: Data) {
        print("connectToTCP was called")
        let PORT: NWEndpoint.Port = portTCP
        let  ipAddress :NWEndpoint.Host = hostTCP
        let queue = DispatchQueue(label: "TCP Client Queue")
        
        let tcp = NWProtocolTCP.Options.init()
        tcp.noDelay = true
        let params = NWParameters.init(tls: nil, tcp: tcp)
        connection = NWConnection(to: NWEndpoint.hostPort(host: ipAddress, port: PORT), using: params)
        
        connection.stateUpdateHandler = { (newState) in

            switch (newState) {
            case .ready:
                print("Socket State: Ready")
                UserDefaults.standard.set(true, forKey: "isConnected")
                self.sendMSG(data)
                print("Data was send via TCP")
                self.receive()
            default:
                print("default was called, data not send")
                UserDefaults.standard.set(false, forKey: "isConnected")

                break
            }
        }
        connection.start(queue: queue)
    }
    
    
    func sendMSG(_ data:Data) {
        print("send data")
        
        let content: Data = data
        connection.send(content: content, completion: NWConnection.SendCompletion.contentProcessed(({ (NWError) in
            if (NWError == nil) {
                print("Data was sent to TCP destination ")
                
            } else {
                print("ERROR! Error when data (Type: Data) sending. NWError: \n \(NWError!)")
            }
        })))
    }
    
    
        func receive() {
        connection.receiveMessage { (data, context, isComplete, error) in
            if (isComplete) {
//                print("Receive is complete, count bytes: \(data!.count)")
                if (data != nil) {
//                    print(data!.byteToHex())
                } else {
                    print("Data == nil")
                }
            }
        }
    }
    
}
