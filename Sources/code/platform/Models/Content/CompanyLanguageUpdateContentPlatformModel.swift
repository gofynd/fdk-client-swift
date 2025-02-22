

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CompanyLanguageUpdate
        Used By: Content
    */

    class CompanyLanguageUpdate: Codable {
        
        
        public var isDefault: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
        }

        public init(isDefault: Bool) {
            
            self.isDefault = isDefault
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CompanyLanguageUpdate
        Used By: Content
    */

    class CompanyLanguageUpdate: Codable {
        
        
        public var isDefault: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
        }

        public init(isDefault: Bool) {
            
            self.isDefault = isDefault
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
}


