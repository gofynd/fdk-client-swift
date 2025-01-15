

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ProcessAfterConfig
        Used By: Order
    */

    class ProcessAfterConfig: Codable {
        
        
        public var isScheduledShipment: Bool?
        
        public var enableProcessingAfter: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isScheduledShipment = "is_scheduled_shipment"
            
            case enableProcessingAfter = "enable_processing_after"
            
        }

        public init(enableProcessingAfter: String? = nil, isScheduledShipment: Bool? = nil) {
            
            self.isScheduledShipment = isScheduledShipment
            
            self.enableProcessingAfter = enableProcessingAfter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isScheduledShipment = try container.decode(Bool.self, forKey: .isScheduledShipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableProcessingAfter = try container.decode(String.self, forKey: .enableProcessingAfter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isScheduledShipment, forKey: .isScheduledShipment)
            
            
            
            
            try? container.encodeIfPresent(enableProcessingAfter, forKey: .enableProcessingAfter)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ProcessAfterConfig
        Used By: Order
    */

    class ProcessAfterConfig: Codable {
        
        
        public var isScheduledShipment: Bool?
        
        public var enableProcessingAfter: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isScheduledShipment = "is_scheduled_shipment"
            
            case enableProcessingAfter = "enable_processing_after"
            
        }

        public init(enableProcessingAfter: String? = nil, isScheduledShipment: Bool? = nil) {
            
            self.isScheduledShipment = isScheduledShipment
            
            self.enableProcessingAfter = enableProcessingAfter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isScheduledShipment = try container.decode(Bool.self, forKey: .isScheduledShipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableProcessingAfter = try container.decode(String.self, forKey: .enableProcessingAfter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isScheduledShipment, forKey: .isScheduledShipment)
            
            
            
            
            try? container.encodeIfPresent(enableProcessingAfter, forKey: .enableProcessingAfter)
            
            
        }
        
    }
}


