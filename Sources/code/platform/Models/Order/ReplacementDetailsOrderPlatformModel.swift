

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ReplacementDetails
        Used By: Order
    */

    class ReplacementDetails: Codable {
        
        
        public var replacementType: String?
        
        public var originalAffiliateOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case replacementType = "replacement_type"
            
            case originalAffiliateOrderId = "original_affiliate_order_id"
            
        }

        public init(originalAffiliateOrderId: String? = nil, replacementType: String? = nil) {
            
            self.replacementType = replacementType
            
            self.originalAffiliateOrderId = originalAffiliateOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    replacementType = try container.decode(String.self, forKey: .replacementType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    originalAffiliateOrderId = try container.decode(String.self, forKey: .originalAffiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(replacementType, forKey: .replacementType)
            
            
            
            
            try? container.encodeIfPresent(originalAffiliateOrderId, forKey: .originalAffiliateOrderId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ReplacementDetails
        Used By: Order
    */

    class ReplacementDetails: Codable {
        
        
        public var replacementType: String?
        
        public var originalAffiliateOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case replacementType = "replacement_type"
            
            case originalAffiliateOrderId = "original_affiliate_order_id"
            
        }

        public init(originalAffiliateOrderId: String? = nil, replacementType: String? = nil) {
            
            self.replacementType = replacementType
            
            self.originalAffiliateOrderId = originalAffiliateOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    replacementType = try container.decode(String.self, forKey: .replacementType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    originalAffiliateOrderId = try container.decode(String.self, forKey: .originalAffiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(replacementType, forKey: .replacementType)
            
            
            
            
            try? container.encodeIfPresent(originalAffiliateOrderId, forKey: .originalAffiliateOrderId)
            
            
        }
        
    }
}


