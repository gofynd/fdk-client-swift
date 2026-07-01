

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ArticleDeliverySlots
        Used By: Serviceability
    */

    class ArticleDeliverySlots: Codable {
        
        
        public var deliveryDate: String?
        
        public var minSlot: String?
        
        public var maxSlot: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryDate = "delivery_date"
            
            case minSlot = "min_slot"
            
            case maxSlot = "max_slot"
            
        }

        public init(deliveryDate: String? = nil, maxSlot: String? = nil, minSlot: String? = nil) {
            
            self.deliveryDate = deliveryDate
            
            self.minSlot = minSlot
            
            self.maxSlot = maxSlot
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deliveryDate = try container.decode(String.self, forKey: .deliveryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minSlot = try container.decode(String.self, forKey: .minSlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxSlot = try container.decode(String.self, forKey: .maxSlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)
            
            
            
            
            try? container.encodeIfPresent(minSlot, forKey: .minSlot)
            
            
            
            
            try? container.encodeIfPresent(maxSlot, forKey: .maxSlot)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ArticleDeliverySlots
        Used By: Serviceability
    */

    class ArticleDeliverySlots: Codable {
        
        
        public var deliveryDate: String?
        
        public var minSlot: String?
        
        public var maxSlot: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryDate = "delivery_date"
            
            case minSlot = "min_slot"
            
            case maxSlot = "max_slot"
            
        }

        public init(deliveryDate: String? = nil, maxSlot: String? = nil, minSlot: String? = nil) {
            
            self.deliveryDate = deliveryDate
            
            self.minSlot = minSlot
            
            self.maxSlot = maxSlot
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deliveryDate = try container.decode(String.self, forKey: .deliveryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minSlot = try container.decode(String.self, forKey: .minSlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxSlot = try container.decode(String.self, forKey: .maxSlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)
            
            
            
            
            try? container.encodeIfPresent(minSlot, forKey: .minSlot)
            
            
            
            
            try? container.encodeIfPresent(maxSlot, forKey: .maxSlot)
            
            
        }
        
    }
}


