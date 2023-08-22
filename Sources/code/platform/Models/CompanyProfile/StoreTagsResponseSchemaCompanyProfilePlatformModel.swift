

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: StoreTagsResponseSchema
        Used By: CompanyProfile
    */

    class StoreTagsResponseSchema: Codable {
        
        
        public var tags: [String]?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
            case success = "success"
            
        }

        public init(success: Bool? = nil, tags: [String]? = nil) {
            
            self.tags = tags
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}




