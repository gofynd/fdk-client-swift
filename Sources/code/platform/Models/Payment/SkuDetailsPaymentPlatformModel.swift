

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SkuDetails
        Used By: Payment
    */

    class SkuDetails: Codable {
        
        
        public var identifier: String?
        
        public var skuId: String?
        
        public var skuName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifier = "identifier"
            
            case skuId = "sku_id"
            
            case skuName = "sku_name"
            
        }

        public init(identifier: String? = nil, skuId: String? = nil, skuName: String? = nil) {
            
            self.identifier = identifier
            
            self.skuId = skuId
            
            self.skuName = skuName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skuId = try container.decode(String.self, forKey: .skuId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skuName = try container.decode(String.self, forKey: .skuName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(skuId, forKey: .skuId)
            
            
            
            
            try? container.encodeIfPresent(skuName, forKey: .skuName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SkuDetails
        Used By: Payment
    */

    class SkuDetails: Codable {
        
        
        public var identifier: String?
        
        public var skuId: String?
        
        public var skuName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifier = "identifier"
            
            case skuId = "sku_id"
            
            case skuName = "sku_name"
            
        }

        public init(identifier: String? = nil, skuId: String? = nil, skuName: String? = nil) {
            
            self.identifier = identifier
            
            self.skuId = skuId
            
            self.skuName = skuName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skuId = try container.decode(String.self, forKey: .skuId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skuName = try container.decode(String.self, forKey: .skuName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(skuId, forKey: .skuId)
            
            
            
            
            try? container.encodeIfPresent(skuName, forKey: .skuName)
            
            
        }
        
    }
}


