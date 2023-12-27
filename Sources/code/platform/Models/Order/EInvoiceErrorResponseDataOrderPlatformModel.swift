

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceErrorResponseData
        Used By: Order
    */

    class EInvoiceErrorResponseData: Codable {
        
        
        public var shipmentId: String
        
        public var einvoiceType: String
        
        public var status: Int
        
        public var message: String
        
        public var einvoiceInfo: EInvoiceErrorInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case einvoiceType = "einvoice_type"
            
            case status = "status"
            
            case message = "message"
            
            case einvoiceInfo = "einvoice_info"
            
        }

        public init(einvoiceInfo: EInvoiceErrorInfo? = nil, einvoiceType: String, message: String, shipmentId: String, status: Int) {
            
            self.shipmentId = shipmentId
            
            self.einvoiceType = einvoiceType
            
            self.status = status
            
            self.message = message
            
            self.einvoiceInfo = einvoiceInfo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                einvoiceType = try container.decode(String.self, forKey: .einvoiceType)
                
            
            
            
                status = try container.decode(Int.self, forKey: .status)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    einvoiceInfo = try container.decode(EInvoiceErrorInfo.self, forKey: .einvoiceInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(einvoiceType, forKey: .einvoiceType)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoiceErrorResponseData
        Used By: Order
    */

    class EInvoiceErrorResponseData: Codable {
        
        
        public var shipmentId: String
        
        public var einvoiceType: String
        
        public var status: Int
        
        public var message: String
        
        public var einvoiceInfo: EInvoiceErrorInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case einvoiceType = "einvoice_type"
            
            case status = "status"
            
            case message = "message"
            
            case einvoiceInfo = "einvoice_info"
            
        }

        public init(einvoiceInfo: EInvoiceErrorInfo? = nil, einvoiceType: String, message: String, shipmentId: String, status: Int) {
            
            self.shipmentId = shipmentId
            
            self.einvoiceType = einvoiceType
            
            self.status = status
            
            self.message = message
            
            self.einvoiceInfo = einvoiceInfo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                einvoiceType = try container.decode(String.self, forKey: .einvoiceType)
                
            
            
            
                status = try container.decode(Int.self, forKey: .status)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    einvoiceInfo = try container.decode(EInvoiceErrorInfo.self, forKey: .einvoiceInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(einvoiceType, forKey: .einvoiceType)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)
            
            
        }
        
    }
}


