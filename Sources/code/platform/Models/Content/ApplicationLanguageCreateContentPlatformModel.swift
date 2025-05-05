

import Foundation


public extension PlatformClient.Content {
    /*
        Model: ApplicationLanguageCreate
        Used By: Content
    */

    class ApplicationLanguageCreate: Codable {
        
        
        public var locales: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case locales = "locales"
            
        }

        public init(locales: [String]) {
            
            self.locales = locales
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                locales = try container.decode([String].self, forKey: .locales)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(locales, forKey: .locales)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: ApplicationLanguageCreate
        Used By: Content
    */

    class ApplicationLanguageCreate: Codable {
        
        
        public var locales: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case locales = "locales"
            
        }

        public init(locales: [String]) {
            
            self.locales = locales
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                locales = try container.decode([String].self, forKey: .locales)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(locales, forKey: .locales)
            
            
        }
        
    }
}


