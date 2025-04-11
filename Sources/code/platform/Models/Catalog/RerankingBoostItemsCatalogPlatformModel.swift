

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: RerankingBoostItems
        Used By: Catalog
    */

    class RerankingBoostItems: Codable {
        
        
        public var boost: [BoostItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case boost = "boost"
            
        }

        public init(boost: [BoostItem]? = nil) {
            
            self.boost = boost
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    boost = try container.decode([BoostItem].self, forKey: .boost)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(boost, forKey: .boost)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: RerankingBoostItems
        Used By: Catalog
    */

    class RerankingBoostItems: Codable {
        
        
        public var boost: [BoostItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case boost = "boost"
            
        }

        public init(boost: [BoostItem]? = nil) {
            
            self.boost = boost
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    boost = try container.decode([BoostItem].self, forKey: .boost)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(boost, forKey: .boost)
            
            
        }
        
    }
}


