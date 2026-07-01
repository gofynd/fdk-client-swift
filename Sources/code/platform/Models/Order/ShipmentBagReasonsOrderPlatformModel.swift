

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentBagReasons
        Used By: Order
    */

    class ShipmentBagReasons: Codable {
        
        
        public var reasons: [BagReasons]?
        
        public var success: Bool?
        
        public var ruleId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case reasons = "reasons"
            
            case success = "success"
            
            case ruleId = "rule_id"
            
        }

        public init(reasons: [BagReasons]? = nil, ruleId: Int? = nil, success: Bool? = nil) {
            
            self.reasons = reasons
            
            self.success = success
            
            self.ruleId = ruleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    reasons = try container.decode([BagReasons].self, forKey: .reasons)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ruleId = try container.decode(Int.self, forKey: .ruleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentBagReasons
        Used By: Order
    */

    class ShipmentBagReasons: Codable {
        
        
        public var reasons: [BagReasons]?
        
        public var success: Bool?
        
        public var ruleId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case reasons = "reasons"
            
            case success = "success"
            
            case ruleId = "rule_id"
            
        }

        public init(reasons: [BagReasons]? = nil, ruleId: Int? = nil, success: Bool? = nil) {
            
            self.reasons = reasons
            
            self.success = success
            
            self.ruleId = ruleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    reasons = try container.decode([BagReasons].self, forKey: .reasons)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ruleId = try container.decode(Int.self, forKey: .ruleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
        }
        
    }
}


