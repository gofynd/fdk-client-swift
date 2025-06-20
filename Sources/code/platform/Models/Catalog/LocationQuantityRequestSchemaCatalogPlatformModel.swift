

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: LocationQuantityRequestSchema
        Used By: Catalog
    */

    class LocationQuantityRequestSchema: Codable {
        
        
        public var expirationDate: String?
        
        public var totalQuantity: Int?
        
        public var damagedQuantity: Int?
        
        public var notAvailableQuantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case expirationDate = "expiration_date"
            
            case totalQuantity = "total_quantity"
            
            case damagedQuantity = "damaged_quantity"
            
            case notAvailableQuantity = "not_available_quantity"
            
        }

        public init(damagedQuantity: Int? = nil, expirationDate: String? = nil, notAvailableQuantity: Int? = nil, totalQuantity: Int? = nil) {
            
            self.expirationDate = expirationDate
            
            self.totalQuantity = totalQuantity
            
            self.damagedQuantity = damagedQuantity
            
            self.notAvailableQuantity = notAvailableQuantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    expirationDate = try container.decode(String.self, forKey: .expirationDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    damagedQuantity = try container.decode(Int.self, forKey: .damagedQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notAvailableQuantity = try container.decode(Int.self, forKey: .notAvailableQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(damagedQuantity, forKey: .damagedQuantity)
            
            
            
            
            try? container.encodeIfPresent(notAvailableQuantity, forKey: .notAvailableQuantity)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: LocationQuantityRequestSchema
        Used By: Catalog
    */

    class LocationQuantityRequestSchema: Codable {
        
        
        public var expirationDate: String?
        
        public var totalQuantity: Int?
        
        public var damagedQuantity: Int?
        
        public var notAvailableQuantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case expirationDate = "expiration_date"
            
            case totalQuantity = "total_quantity"
            
            case damagedQuantity = "damaged_quantity"
            
            case notAvailableQuantity = "not_available_quantity"
            
        }

        public init(damagedQuantity: Int? = nil, expirationDate: String? = nil, notAvailableQuantity: Int? = nil, totalQuantity: Int? = nil) {
            
            self.expirationDate = expirationDate
            
            self.totalQuantity = totalQuantity
            
            self.damagedQuantity = damagedQuantity
            
            self.notAvailableQuantity = notAvailableQuantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    expirationDate = try container.decode(String.self, forKey: .expirationDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    damagedQuantity = try container.decode(Int.self, forKey: .damagedQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notAvailableQuantity = try container.decode(Int.self, forKey: .notAvailableQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(damagedQuantity, forKey: .damagedQuantity)
            
            
            
            
            try? container.encodeIfPresent(notAvailableQuantity, forKey: .notAvailableQuantity)
            
            
        }
        
    }
}


