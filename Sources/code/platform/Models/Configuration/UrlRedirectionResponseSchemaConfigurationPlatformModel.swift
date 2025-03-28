

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: UrlRedirectionResponseSchema
        Used By: Configuration
    */

    class UrlRedirectionResponseSchema: Codable {
        
        
        public var redirections: [UrlRedirection]?
        

        public enum CodingKeys: String, CodingKey {
            
            case redirections = "redirections"
            
        }

        public init(redirections: [UrlRedirection]? = nil) {
            
            self.redirections = redirections
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    redirections = try container.decode([UrlRedirection].self, forKey: .redirections)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(redirections, forKey: .redirections)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: UrlRedirectionResponseSchema
        Used By: Configuration
    */

    class UrlRedirectionResponseSchema: Codable {
        
        
        public var redirections: [UrlRedirection]?
        

        public enum CodingKeys: String, CodingKey {
            
            case redirections = "redirections"
            
        }

        public init(redirections: [UrlRedirection]? = nil) {
            
            self.redirections = redirections
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    redirections = try container.decode([UrlRedirection].self, forKey: .redirections)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(redirections, forKey: .redirections)
            
            
        }
        
    }
}


