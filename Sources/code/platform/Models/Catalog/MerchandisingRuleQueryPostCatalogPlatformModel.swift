

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MerchandisingRuleQueryPost
        Used By: Catalog
    */

    class MerchandisingRuleQueryPost: Codable {
        
        
        public var query: MerchandisingRuleQueryPart?
        
        public var zoneId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case zoneId = "zone_id"
            
        }

        public init(query: MerchandisingRuleQueryPart? = nil, zoneId: String? = nil) {
            
            self.query = query
            
            self.zoneId = zoneId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    query = try container.decode(MerchandisingRuleQueryPart.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zoneId = try container.decode(String.self, forKey: .zoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MerchandisingRuleQueryPost
        Used By: Catalog
    */

    class MerchandisingRuleQueryPost: Codable {
        
        
        public var query: MerchandisingRuleQueryPart?
        
        public var zoneId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case zoneId = "zone_id"
            
        }

        public init(query: MerchandisingRuleQueryPart? = nil, zoneId: String? = nil) {
            
            self.query = query
            
            self.zoneId = zoneId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    query = try container.decode(MerchandisingRuleQueryPart.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zoneId = try container.decode(String.self, forKey: .zoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
        }
        
    }
}


