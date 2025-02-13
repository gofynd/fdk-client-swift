

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Article
        Used By: Order
    */

    class Article: Codable {
        
        
        public var childDetails: [String: Any]?
        
        public var sellerIdentifier: String
        
        public var uid: String
        
        public var aSet: [String: Any]?
        
        public var dimensions: Dimensions?
        
        public var currency: [String: Any]?
        
        public var espModified: Bool?
        
        public var returnConfig: ReturnConfig?
        
        public var code: String?
        
        public var weight: Weight?
        
        public var id: String
        
        public var identifiers: [String: Any]
        
        public var rawMeta: String?
        
        public var size: String
        
        public var isSet: Bool?
        
        public var tags: [String]?
        
        public var variants: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case childDetails = "child_details"
            
            case sellerIdentifier = "seller_identifier"
            
            case uid = "uid"
            
            case aSet = "a_set"
            
            case dimensions = "dimensions"
            
            case currency = "currency"
            
            case espModified = "esp_modified"
            
            case returnConfig = "return_config"
            
            case code = "code"
            
            case weight = "weight"
            
            case id = "_id"
            
            case identifiers = "identifiers"
            
            case rawMeta = "raw_meta"
            
            case size = "size"
            
            case isSet = "is_set"
            
            case tags = "tags"
            
            case variants = "variants"
            
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, tags: [String]? = nil, uid: String, variants: [String: Any]? = nil, weight: Weight? = nil, id: String) {
            
            self.childDetails = childDetails
            
            self.sellerIdentifier = sellerIdentifier
            
            self.uid = uid
            
            self.aSet = aSet
            
            self.dimensions = dimensions
            
            self.currency = currency
            
            self.espModified = espModified
            
            self.returnConfig = returnConfig
            
            self.code = code
            
            self.weight = weight
            
            self.id = id
            
            self.identifiers = identifiers
            
            self.rawMeta = rawMeta
            
            self.size = size
            
            self.isSet = isSet
            
            self.tags = tags
            
            self.variants = variants
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    childDetails = try container.decode([String: Any].self, forKey: .childDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                do {
                    aSet = try container.decode([String: Any].self, forKey: .aSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dimensions = try container.decode(Dimensions.self, forKey: .dimensions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode([String: Any].self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    espModified = try container.decode(Bool.self, forKey: .espModified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Weight.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)
                
            
            
            
                do {
                    rawMeta = try container.decode(String.self, forKey: .rawMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variants = try container.decode([String: Any].self, forKey: .variants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(childDetails, forKey: .childDetails)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(aSet, forKey: .aSet)
            
            
            
            
            try? container.encodeIfPresent(dimensions, forKey: .dimensions)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(espModified, forKey: .espModified)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Article
        Used By: Order
    */

    class Article: Codable {
        
        
        public var childDetails: [String: Any]?
        
        public var sellerIdentifier: String
        
        public var uid: String
        
        public var aSet: [String: Any]?
        
        public var dimensions: Dimensions?
        
        public var currency: [String: Any]?
        
        public var espModified: Bool?
        
        public var returnConfig: ReturnConfig?
        
        public var code: String?
        
        public var weight: Weight?
        
        public var id: String
        
        public var identifiers: [String: Any]
        
        public var rawMeta: String?
        
        public var size: String
        
        public var isSet: Bool?
        
        public var tags: [String]?
        
        public var variants: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case childDetails = "child_details"
            
            case sellerIdentifier = "seller_identifier"
            
            case uid = "uid"
            
            case aSet = "a_set"
            
            case dimensions = "dimensions"
            
            case currency = "currency"
            
            case espModified = "esp_modified"
            
            case returnConfig = "return_config"
            
            case code = "code"
            
            case weight = "weight"
            
            case id = "_id"
            
            case identifiers = "identifiers"
            
            case rawMeta = "raw_meta"
            
            case size = "size"
            
            case isSet = "is_set"
            
            case tags = "tags"
            
            case variants = "variants"
            
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, tags: [String]? = nil, uid: String, variants: [String: Any]? = nil, weight: Weight? = nil, id: String) {
            
            self.childDetails = childDetails
            
            self.sellerIdentifier = sellerIdentifier
            
            self.uid = uid
            
            self.aSet = aSet
            
            self.dimensions = dimensions
            
            self.currency = currency
            
            self.espModified = espModified
            
            self.returnConfig = returnConfig
            
            self.code = code
            
            self.weight = weight
            
            self.id = id
            
            self.identifiers = identifiers
            
            self.rawMeta = rawMeta
            
            self.size = size
            
            self.isSet = isSet
            
            self.tags = tags
            
            self.variants = variants
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    childDetails = try container.decode([String: Any].self, forKey: .childDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                do {
                    aSet = try container.decode([String: Any].self, forKey: .aSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dimensions = try container.decode(Dimensions.self, forKey: .dimensions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode([String: Any].self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    espModified = try container.decode(Bool.self, forKey: .espModified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Weight.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)
                
            
            
            
                do {
                    rawMeta = try container.decode(String.self, forKey: .rawMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variants = try container.decode([String: Any].self, forKey: .variants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(childDetails, forKey: .childDetails)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(aSet, forKey: .aSet)
            
            
            
            
            try? container.encodeIfPresent(dimensions, forKey: .dimensions)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(espModified, forKey: .espModified)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
        }
        
    }
}


