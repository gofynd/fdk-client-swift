

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundStateManualWithoutMessage
        Used By: Order
    */

    class RefundStateManualWithoutMessage: Codable {
        
        
        public var isManual: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isManual = "is_manual"
            
        }

        public init(isManual: Bool? = nil) {
            
            self.isManual = isManual
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isManual = try container.decode(Bool.self, forKey: .isManual)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isManual, forKey: .isManual)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundStateManualWithoutMessage
        Used By: Order
    */

    class RefundStateManualWithoutMessage: Codable {
        
        
        public var isManual: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isManual = "is_manual"
            
        }

        public init(isManual: Bool? = nil) {
            
            self.isManual = isManual
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isManual = try container.decode(Bool.self, forKey: .isManual)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isManual, forKey: .isManual)
            
            
        }
        
    }
}


