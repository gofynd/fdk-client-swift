

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: LocationQuantityRequestSchema
        Used By: Catalog
    */

    class LocationQuantityRequestSchema: Codable {
        
        
        public var expirationDate: String?
        
        public var totalQuantity: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case expirationDate = "expiration_date"
            
            case totalQuantity = "total_quantity"
            
        }

        public init(expirationDate: String? = nil, totalQuantity: Int) {
            
            self.expirationDate = expirationDate
            
            self.totalQuantity = totalQuantity
            
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
                
            
            
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
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
        
        public var totalQuantity: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case expirationDate = "expiration_date"
            
            case totalQuantity = "total_quantity"
            
        }

        public init(expirationDate: String? = nil, totalQuantity: Int) {
            
            self.expirationDate = expirationDate
            
            self.totalQuantity = totalQuantity
            
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
                
            
            
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
        }
        
    }
}


