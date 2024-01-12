

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DeliverySlotDetails
        Used By: Order
    */

    class DeliverySlotDetails: Codable {
        
        
        public var slot: String?
        
        public var upperBound: String?
        
        public var lowerBound: String?
        
        public var date: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slot = "slot"
            
            case upperBound = "upper_bound"
            
            case lowerBound = "lower_bound"
            
            case date = "date"
            
            case type = "type"
            
        }

        public init(date: String? = nil, lowerBound: String? = nil, slot: String? = nil, type: String? = nil, upperBound: String? = nil) {
            
            self.slot = slot
            
            self.upperBound = upperBound
            
            self.lowerBound = lowerBound
            
            self.date = date
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slot = try container.decode(String.self, forKey: .slot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upperBound = try container.decode(String.self, forKey: .upperBound)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lowerBound = try container.decode(String.self, forKey: .lowerBound)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    date = try container.decode(String.self, forKey: .date)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(slot, forKey: .slot)
            
            
            
            
            try? container.encode(upperBound, forKey: .upperBound)
            
            
            
            
            try? container.encode(lowerBound, forKey: .lowerBound)
            
            
            
            
            try? container.encode(date, forKey: .date)
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: DeliverySlotDetails
        Used By: Order
    */

    class DeliverySlotDetails: Codable {
        
        
        public var slot: String?
        
        public var upperBound: String?
        
        public var lowerBound: String?
        
        public var date: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slot = "slot"
            
            case upperBound = "upper_bound"
            
            case lowerBound = "lower_bound"
            
            case date = "date"
            
            case type = "type"
            
        }

        public init(date: String? = nil, lowerBound: String? = nil, slot: String? = nil, type: String? = nil, upperBound: String? = nil) {
            
            self.slot = slot
            
            self.upperBound = upperBound
            
            self.lowerBound = lowerBound
            
            self.date = date
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slot = try container.decode(String.self, forKey: .slot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upperBound = try container.decode(String.self, forKey: .upperBound)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lowerBound = try container.decode(String.self, forKey: .lowerBound)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    date = try container.decode(String.self, forKey: .date)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(slot, forKey: .slot)
            
            
            
            
            try? container.encode(upperBound, forKey: .upperBound)
            
            
            
            
            try? container.encode(lowerBound, forKey: .lowerBound)
            
            
            
            
            try? container.encode(date, forKey: .date)
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
        }
        
    }
}


