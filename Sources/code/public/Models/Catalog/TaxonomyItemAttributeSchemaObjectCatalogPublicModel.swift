

import Foundation
public extension PublicClient.Catalog {
    /*
        Model: TaxonomyItemAttributeSchemaObject
        Used By: Catalog
    */

    class TaxonomyItemAttributeSchemaObject: Codable {
        
        
        public var type: String?
        
        public var mandatory: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case mandatory = "mandatory"
            
        }

        public init(mandatory: Bool? = nil, type: String? = nil) {
            
            self.type = type
            
            self.mandatory = mandatory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mandatory = try container.decode(Bool.self, forKey: .mandatory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(mandatory, forKey: .mandatory)
            
            
        }
        
    }
}
