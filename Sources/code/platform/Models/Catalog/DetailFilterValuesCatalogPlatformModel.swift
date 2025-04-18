

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: DetailFilterValues
        Used By: Catalog
    */

    class DetailFilterValues: Codable {
        
        
        public var displayType: [DisplayType]?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayType = "display_type"
            
        }

        public init(displayType: [DisplayType]? = nil) {
            
            self.displayType = displayType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    displayType = try container.decode([DisplayType].self, forKey: .displayType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayType, forKey: .displayType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: DetailFilterValues
        Used By: Catalog
    */

    class DetailFilterValues: Codable {
        
        
        public var displayType: [DisplayType]?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayType = "display_type"
            
        }

        public init(displayType: [DisplayType]? = nil) {
            
            self.displayType = displayType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    displayType = try container.decode([DisplayType].self, forKey: .displayType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayType, forKey: .displayType)
            
            
        }
        
    }
}


