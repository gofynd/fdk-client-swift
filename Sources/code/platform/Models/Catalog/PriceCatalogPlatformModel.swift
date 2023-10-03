

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Price
        Used By: Catalog
    */

    class Price: Codable {
        
        
        public var currency: String?
        
        public var maxEffective: Double?
        
        public var maxMarked: Double?
        
        public var minEffective: Double?
        
        public var minMarked: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case maxEffective = "max_effective"
            
            case maxMarked = "max_marked"
            
            case minEffective = "min_effective"
            
            case minMarked = "min_marked"
            
        }

        public init(currency: String? = nil, maxEffective: Double? = nil, maxMarked: Double? = nil, minEffective: Double? = nil, minMarked: Double? = nil) {
            
            self.currency = currency
            
            self.maxEffective = maxEffective
            
            self.maxMarked = maxMarked
            
            self.minEffective = minEffective
            
            self.minMarked = minMarked
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxEffective = try container.decode(Double.self, forKey: .maxEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxMarked = try container.decode(Double.self, forKey: .maxMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minEffective = try container.decode(Double.self, forKey: .minEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minMarked = try container.decode(Double.self, forKey: .minMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(maxEffective, forKey: .maxEffective)
            
            
            
            
            try? container.encodeIfPresent(maxMarked, forKey: .maxMarked)
            
            
            
            
            try? container.encodeIfPresent(minEffective, forKey: .minEffective)
            
            
            
            
            try? container.encodeIfPresent(minMarked, forKey: .minMarked)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Price
        Used By: Catalog
    */

    class Price: Codable {
        
        
        public var currency: String?
        
        public var maxEffective: Double?
        
        public var maxMarked: Double?
        
        public var minEffective: Double?
        
        public var minMarked: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case maxEffective = "max_effective"
            
            case maxMarked = "max_marked"
            
            case minEffective = "min_effective"
            
            case minMarked = "min_marked"
            
        }

        public init(currency: String? = nil, maxEffective: Double? = nil, maxMarked: Double? = nil, minEffective: Double? = nil, minMarked: Double? = nil) {
            
            self.currency = currency
            
            self.maxEffective = maxEffective
            
            self.maxMarked = maxMarked
            
            self.minEffective = minEffective
            
            self.minMarked = minMarked
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxEffective = try container.decode(Double.self, forKey: .maxEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxMarked = try container.decode(Double.self, forKey: .maxMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minEffective = try container.decode(Double.self, forKey: .minEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minMarked = try container.decode(Double.self, forKey: .minMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(maxEffective, forKey: .maxEffective)
            
            
            
            
            try? container.encodeIfPresent(maxMarked, forKey: .maxMarked)
            
            
            
            
            try? container.encodeIfPresent(minEffective, forKey: .minEffective)
            
            
            
            
            try? container.encodeIfPresent(minMarked, forKey: .minMarked)
            
            
        }
        
    }
}


