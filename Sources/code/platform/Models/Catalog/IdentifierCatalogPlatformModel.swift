

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Identifier
        Used By: Catalog
    */

    class Identifier: Codable {
        
        
        public var primary: Bool?
        
        public var gtinValue: String?
        
        public var gtinType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case primary = "primary"
            
            case gtinValue = "gtin_value"
            
            case gtinType = "gtin_type"
            
        }

        public init(gtinType: String? = nil, gtinValue: String? = nil, primary: Bool? = nil) {
            
            self.primary = primary
            
            self.gtinValue = gtinValue
            
            self.gtinType = gtinType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    primary = try container.decode(Bool.self, forKey: .primary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gtinValue = try container.decode(String.self, forKey: .gtinValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gtinType = try container.decode(String.self, forKey: .gtinType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(primary, forKey: .primary)
            
            
            
            
            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)
            
            
            
            
            try? container.encodeIfPresent(gtinType, forKey: .gtinType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Identifier
        Used By: Catalog
    */

    class Identifier: Codable {
        
        
        public var primary: Bool?
        
        public var gtinValue: String?
        
        public var gtinType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case primary = "primary"
            
            case gtinValue = "gtin_value"
            
            case gtinType = "gtin_type"
            
        }

        public init(gtinType: String? = nil, gtinValue: String? = nil, primary: Bool? = nil) {
            
            self.primary = primary
            
            self.gtinValue = gtinValue
            
            self.gtinType = gtinType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    primary = try container.decode(Bool.self, forKey: .primary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gtinValue = try container.decode(String.self, forKey: .gtinValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gtinType = try container.decode(String.self, forKey: .gtinType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(primary, forKey: .primary)
            
            
            
            
            try? container.encodeIfPresent(gtinValue, forKey: .gtinValue)
            
            
            
            
            try? container.encodeIfPresent(gtinType, forKey: .gtinType)
            
            
        }
        
    }
}


