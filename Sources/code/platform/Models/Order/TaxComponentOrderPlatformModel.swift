

import Foundation


public extension PlatformClient.Order {
    /*
        Model: TaxComponent
        Used By: Order
    */

    class TaxComponent: Codable {
        
        
        public var name: String?
        
        public var rate: Double?
        
        public var taxAmount: Double?
        
        public var taxableAmount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case rate = "rate"
            
            case taxAmount = "tax_amount"
            
            case taxableAmount = "taxable_amount"
            
        }

        public init(name: String? = nil, rate: Double? = nil, taxableAmount: Double? = nil, taxAmount: Double? = nil) {
            
            self.name = name
            
            self.rate = rate
            
            self.taxAmount = taxAmount
            
            self.taxableAmount = taxableAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rate = try container.decode(Double.self, forKey: .rate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxAmount = try container.decode(Double.self, forKey: .taxAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxableAmount = try container.decode(Double.self, forKey: .taxableAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(rate, forKey: .rate)
            
            
            
            
            try? container.encodeIfPresent(taxAmount, forKey: .taxAmount)
            
            
            
            
            try? container.encodeIfPresent(taxableAmount, forKey: .taxableAmount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: TaxComponent
        Used By: Order
    */

    class TaxComponent: Codable {
        
        
        public var name: String?
        
        public var rate: Double?
        
        public var taxAmount: Double?
        
        public var taxableAmount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case rate = "rate"
            
            case taxAmount = "tax_amount"
            
            case taxableAmount = "taxable_amount"
            
        }

        public init(name: String? = nil, rate: Double? = nil, taxableAmount: Double? = nil, taxAmount: Double? = nil) {
            
            self.name = name
            
            self.rate = rate
            
            self.taxAmount = taxAmount
            
            self.taxableAmount = taxableAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rate = try container.decode(Double.self, forKey: .rate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxAmount = try container.decode(Double.self, forKey: .taxAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxableAmount = try container.decode(Double.self, forKey: .taxableAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(rate, forKey: .rate)
            
            
            
            
            try? container.encodeIfPresent(taxAmount, forKey: .taxAmount)
            
            
            
            
            try? container.encodeIfPresent(taxableAmount, forKey: .taxableAmount)
            
            
        }
        
    }
}


