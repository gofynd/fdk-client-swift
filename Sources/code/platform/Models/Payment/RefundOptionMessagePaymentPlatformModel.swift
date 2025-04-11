

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundOptionMessage
        Used By: Payment
    */

    class RefundOptionMessage: Codable {
        
        
        public var code: Int?
        
        public var description: RefundOptionError?
        
        public var shipmentId: [String]?
        
        public var orderId: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case description = "description"
            
            case shipmentId = "shipment_id"
            
            case orderId = "order_id"
            
        }

        public init(code: Int? = nil, description: RefundOptionError? = nil, orderId: [String]? = nil, shipmentId: [String]? = nil) {
            
            self.code = code
            
            self.description = description
            
            self.shipmentId = shipmentId
            
            self.orderId = orderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    code = try container.decode(Int.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(RefundOptionError.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode([String].self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderId = try container.decode([String].self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundOptionMessage
        Used By: Payment
    */

    class RefundOptionMessage: Codable {
        
        
        public var code: Int?
        
        public var description: RefundOptionError?
        
        public var shipmentId: [String]?
        
        public var orderId: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case description = "description"
            
            case shipmentId = "shipment_id"
            
            case orderId = "order_id"
            
        }

        public init(code: Int? = nil, description: RefundOptionError? = nil, orderId: [String]? = nil, shipmentId: [String]? = nil) {
            
            self.code = code
            
            self.description = description
            
            self.shipmentId = shipmentId
            
            self.orderId = orderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    code = try container.decode(Int.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(RefundOptionError.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode([String].self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderId = try container.decode([String].self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
        }
        
    }
}


