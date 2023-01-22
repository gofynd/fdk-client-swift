

import Foundation
public extension PlatformClient {
    /*
        Model: AttributeMasterFilter
        Used By: Catalog
    */

    class AttributeMasterFilter: Codable {
        
        
        public var priority: Int?
        
        public var indexing: Bool
        
        public var dependsOn: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case priority = "priority"
            
            case indexing = "indexing"
            
            case dependsOn = "depends_on"
            
        }

        public init(dependsOn: [String]? = nil, indexing: Bool, priority: Int? = nil) {
            
            self.priority = priority
            
            self.indexing = indexing
            
            self.dependsOn = dependsOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                indexing = try container.decode(Bool.self, forKey: .indexing)
                
            
            
            
                do {
                    dependsOn = try container.decode([String].self, forKey: .dependsOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(indexing, forKey: .indexing)
            
            
            
            
            try? container.encodeIfPresent(dependsOn, forKey: .dependsOn)
            
            
        }
        
    }
}
