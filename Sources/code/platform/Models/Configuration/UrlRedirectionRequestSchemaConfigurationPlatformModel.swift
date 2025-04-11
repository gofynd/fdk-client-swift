

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: UrlRedirectionRequestSchema
        Used By: Configuration
    */

    class UrlRedirectionRequestSchema: Codable {
        
        
        public var redirection: UrlRedirection?
        

        public enum CodingKeys: String, CodingKey {
            
            case redirection = "redirection"
            
        }

        public init(redirection: UrlRedirection? = nil) {
            
            self.redirection = redirection
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    redirection = try container.decode(UrlRedirection.self, forKey: .redirection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(redirection, forKey: .redirection)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: UrlRedirectionRequestSchema
        Used By: Configuration
    */

    class UrlRedirectionRequestSchema: Codable {
        
        
        public var redirection: UrlRedirection?
        

        public enum CodingKeys: String, CodingKey {
            
            case redirection = "redirection"
            
        }

        public init(redirection: UrlRedirection? = nil) {
            
            self.redirection = redirection
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    redirection = try container.decode(UrlRedirection.self, forKey: .redirection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(redirection, forKey: .redirection)
            
            
        }
        
    }
}


