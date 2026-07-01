

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BundleDetails
        Used By: Catalog
    */

    class BundleDetails: Codable {
        
        
        public var sellerIdentifier: String
        
        public var netQuantity: Int
        
        public var isBase: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerIdentifier = "seller_identifier"
            
            case netQuantity = "net_quantity"
            
            case isBase = "is_base"
            
        }

        public init(isBase: Bool? = nil, netQuantity: Int, sellerIdentifier: String) {
            
            self.sellerIdentifier = sellerIdentifier
            
            self.netQuantity = netQuantity
            
            self.isBase = isBase
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                netQuantity = try container.decode(Int.self, forKey: .netQuantity)
                
            
            
            
                do {
                    isBase = try container.decode(Bool.self, forKey: .isBase)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
            
            
            
            
            try? container.encodeIfPresent(isBase, forKey: .isBase)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: BundleDetails
        Used By: Catalog
    */

    class BundleDetails: Codable {
        
        
        public var sellerIdentifier: String
        
        public var netQuantity: Int
        
        public var isBase: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerIdentifier = "seller_identifier"
            
            case netQuantity = "net_quantity"
            
            case isBase = "is_base"
            
        }

        public init(isBase: Bool? = nil, netQuantity: Int, sellerIdentifier: String) {
            
            self.sellerIdentifier = sellerIdentifier
            
            self.netQuantity = netQuantity
            
            self.isBase = isBase
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                netQuantity = try container.decode(Int.self, forKey: .netQuantity)
                
            
            
            
                do {
                    isBase = try container.decode(Bool.self, forKey: .isBase)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
            
            
            
            
            try? container.encodeIfPresent(isBase, forKey: .isBase)
            
            
        }
        
    }
}


