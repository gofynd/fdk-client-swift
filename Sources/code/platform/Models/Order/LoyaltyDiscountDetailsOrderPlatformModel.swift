

import Foundation


public extension PlatformClient.Order {
    /*
        Model: LoyaltyDiscountDetails
        Used By: Order
    */

    class LoyaltyDiscountDetails: Codable {
        
        
        public var discount: Double?
        
        public var ownership: String?
        
        public var isApplied: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case discount = "discount"
            
            case ownership = "ownership"
            
            case isApplied = "is_applied"
            
        }

        public init(discount: Double? = nil, isApplied: Bool? = nil, ownership: String? = nil) {
            
            self.discount = discount
            
            self.ownership = ownership
            
            self.isApplied = isApplied
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ownership = try container.decode(String.self, forKey: .ownership)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: LoyaltyDiscountDetails
        Used By: Order
    */

    class LoyaltyDiscountDetails: Codable {
        
        
        public var discount: Double?
        
        public var ownership: String?
        
        public var isApplied: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case discount = "discount"
            
            case ownership = "ownership"
            
            case isApplied = "is_applied"
            
        }

        public init(discount: Double? = nil, isApplied: Bool? = nil, ownership: String? = nil) {
            
            self.discount = discount
            
            self.ownership = ownership
            
            self.isApplied = isApplied
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ownership = try container.decode(String.self, forKey: .ownership)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
        }
        
    }
}


