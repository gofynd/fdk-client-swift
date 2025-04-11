

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageRuleProductAttributes
        Used By: Serviceability
    */

    class PackageRuleProductAttributes: Codable {
        
        
        public var includes: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case includes = "includes"
            
        }

        public init(includes: [[String: Any]]? = nil) {
            
            self.includes = includes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    includes = try container.decode([[String: Any]].self, forKey: .includes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(includes, forKey: .includes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageRuleProductAttributes
        Used By: Serviceability
    */

    class PackageRuleProductAttributes: Codable {
        
        
        public var includes: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case includes = "includes"
            
        }

        public init(includes: [[String: Any]]? = nil) {
            
            self.includes = includes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    includes = try container.decode([[String: Any]].self, forKey: .includes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(includes, forKey: .includes)
            
            
        }
        
    }
}


