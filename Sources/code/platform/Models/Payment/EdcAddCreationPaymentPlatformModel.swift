

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: EdcAddCreation
        Used By: Payment
    */

    class EdcAddCreation: Codable {
        
        
        public var edcModel: String
        
        public var storeId: Int
        
        public var aggregatorId: Int
        
        public var edcDeviceSerialNo: String
        
        public var terminalSerialNo: String
        
        public var deviceTag: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case edcModel = "edc_model"
            
            case storeId = "store_id"
            
            case aggregatorId = "aggregator_id"
            
            case edcDeviceSerialNo = "edc_device_serial_no"
            
            case terminalSerialNo = "terminal_serial_no"
            
            case deviceTag = "device_tag"
            
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            
            self.edcModel = edcModel
            
            self.storeId = storeId
            
            self.aggregatorId = aggregatorId
            
            self.edcDeviceSerialNo = edcDeviceSerialNo
            
            self.terminalSerialNo = terminalSerialNo
            
            self.deviceTag = deviceTag
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                edcModel = try container.decode(String.self, forKey: .edcModel)
                
            
            
            
                storeId = try container.decode(Int.self, forKey: .storeId)
                
            
            
            
                aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
                
            
            
            
                edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)
                
            
            
            
                terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)
                
            
            
            
                do {
                    deviceTag = try container.decode(String.self, forKey: .deviceTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(edcModel, forKey: .edcModel)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
            
            
            
            
            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)
            
            
            
            
            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)
            
            
            
            
            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: EdcAddCreation
        Used By: Payment
    */

    class EdcAddCreation: Codable {
        
        
        public var edcModel: String
        
        public var storeId: Int
        
        public var aggregatorId: Int
        
        public var edcDeviceSerialNo: String
        
        public var terminalSerialNo: String
        
        public var deviceTag: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case edcModel = "edc_model"
            
            case storeId = "store_id"
            
            case aggregatorId = "aggregator_id"
            
            case edcDeviceSerialNo = "edc_device_serial_no"
            
            case terminalSerialNo = "terminal_serial_no"
            
            case deviceTag = "device_tag"
            
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            
            self.edcModel = edcModel
            
            self.storeId = storeId
            
            self.aggregatorId = aggregatorId
            
            self.edcDeviceSerialNo = edcDeviceSerialNo
            
            self.terminalSerialNo = terminalSerialNo
            
            self.deviceTag = deviceTag
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                edcModel = try container.decode(String.self, forKey: .edcModel)
                
            
            
            
                storeId = try container.decode(Int.self, forKey: .storeId)
                
            
            
            
                aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
                
            
            
            
                edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)
                
            
            
            
                terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)
                
            
            
            
                do {
                    deviceTag = try container.decode(String.self, forKey: .deviceTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(edcModel, forKey: .edcModel)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
            
            
            
            
            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)
            
            
            
            
            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)
            
            
            
            
            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)
            
            
        }
        
    }
}


