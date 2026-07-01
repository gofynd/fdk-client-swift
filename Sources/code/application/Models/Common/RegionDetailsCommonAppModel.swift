

import Foundation
public extension ApplicationClient.Common {
    /*
        Model: RegionDetails
        Used By: Common
    */
    class RegionDetails: Codable {
        
        public var slug: String?
        
        public var zone: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case zone = "zone"
            
        }

        public init(slug: String? = nil, zone: String? = nil) {
            
            self.slug = slug
            
            self.zone = zone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                zone = try container.decode(String.self, forKey: .zone)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(zone, forKey: .zone)
            
            
        }
        
    }
}
