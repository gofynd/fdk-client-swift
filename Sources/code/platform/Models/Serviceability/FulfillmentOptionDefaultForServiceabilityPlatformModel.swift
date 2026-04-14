

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: FulfillmentOptionDefaultFor
        Used By: Serviceability
    */

    class FulfillmentOptionDefaultFor: Codable {
        
        
        public var storefront: Bool?
        
        public var storeos: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case storefront = "storefront"
            
            case storeos = "storeos"
            
        }

        public init(storefront: Bool? = nil, storeos: Bool? = nil) {
            
            self.storefront = storefront
            
            self.storeos = storeos
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storefront = try container.decode(Bool.self, forKey: .storefront)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeos = try container.decode(Bool.self, forKey: .storeos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storefront, forKey: .storefront)
            
            
            
            
            try? container.encodeIfPresent(storeos, forKey: .storeos)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: FulfillmentOptionDefaultFor
        Used By: Serviceability
    */

    class FulfillmentOptionDefaultFor: Codable {
        
        
        public var storefront: Bool?
        
        public var storeos: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case storefront = "storefront"
            
            case storeos = "storeos"
            
        }

        public init(storefront: Bool? = nil, storeos: Bool? = nil) {
            
            self.storefront = storefront
            
            self.storeos = storeos
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storefront = try container.decode(Bool.self, forKey: .storefront)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeos = try container.decode(Bool.self, forKey: .storeos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storefront, forKey: .storefront)
            
            
            
            
            try? container.encodeIfPresent(storeos, forKey: .storeos)
            
            
        }
        
    }
}


