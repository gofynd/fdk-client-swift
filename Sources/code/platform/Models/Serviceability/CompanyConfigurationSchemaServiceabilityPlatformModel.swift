

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CompanyConfigurationSchema
        Used By: Serviceability
    */

    class CompanyConfigurationSchema: Codable {
        
        
        public var sort: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sort = "sort"
            
        }

        public init(sort: [String]? = nil) {
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CompanyConfigurationSchema
        Used By: Serviceability
    */

    class CompanyConfigurationSchema: Codable {
        
        
        public var sort: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sort = "sort"
            
        }

        public init(sort: [String]? = nil) {
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
        }
        
    }
}


