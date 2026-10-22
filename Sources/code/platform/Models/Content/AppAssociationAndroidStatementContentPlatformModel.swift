

import Foundation


public extension PlatformClient.Content {
    /*
        Model: AppAssociationAndroidStatement
        Used By: Content
    */

    class AppAssociationAndroidStatement: Codable {
        
        
        public var relation: [String]?
        
        public var target: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case relation = "relation"
            
            case target = "target"
            
        }

        public init(relation: [String]? = nil, target: [String: Any]? = nil) {
            
            self.relation = relation
            
            self.target = target
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    relation = try container.decode([String].self, forKey: .relation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    target = try container.decode([String: Any].self, forKey: .target)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(relation, forKey: .relation)
            
            
            
            
            try? container.encodeIfPresent(target, forKey: .target)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: AppAssociationAndroidStatement
        Used By: Content
    */

    class AppAssociationAndroidStatement: Codable {
        
        
        public var relation: [String]?
        
        public var target: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case relation = "relation"
            
            case target = "target"
            
        }

        public init(relation: [String]? = nil, target: [String: Any]? = nil) {
            
            self.relation = relation
            
            self.target = target
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    relation = try container.decode([String].self, forKey: .relation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    target = try container.decode([String: Any].self, forKey: .target)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(relation, forKey: .relation)
            
            
            
            
            try? container.encodeIfPresent(target, forKey: .target)
            
            
        }
        
    }
}


