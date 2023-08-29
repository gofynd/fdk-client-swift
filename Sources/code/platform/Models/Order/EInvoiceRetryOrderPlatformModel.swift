

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceRetry
        Used By: Order
    */

    class EInvoiceRetry: Codable {
        
        
        public var shipmentsData: [EInvoiceRetryShipmentData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentsData = "shipments_data"
            
        }

        public init(shipmentsData: [EInvoiceRetryShipmentData]? = nil) {
            
            self.shipmentsData = shipmentsData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipmentsData = try container.decode([EInvoiceRetryShipmentData].self, forKey: .shipmentsData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentsData, forKey: .shipmentsData)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoiceRetry
        Used By: Order
    */

    class EInvoiceRetry: Codable {
        
        
        public var shipmentsData: [EInvoiceRetryShipmentData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentsData = "shipments_data"
            
        }

        public init(shipmentsData: [EInvoiceRetryShipmentData]? = nil) {
            
            self.shipmentsData = shipmentsData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipmentsData = try container.decode([EInvoiceRetryShipmentData].self, forKey: .shipmentsData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentsData, forKey: .shipmentsData)
            
            
        }
        
    }
}


