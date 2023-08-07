

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: Preset
        Used By: Theme
    */

    class Preset: Codable {
        
        
        public var pages: [Page]?
        

        public enum CodingKeys: String, CodingKey {
            
            case pages = "pages"
            
        }

        public init(pages: [Page]? = nil) {
            
            self.pages = pages
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pages = try container.decode([Page].self, forKey: .pages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: Preset
        Used By: Theme
    */

    class Preset: Codable {
        
        
        public var pages: [Page]?
        

        public enum CodingKeys: String, CodingKey {
            
            case pages = "pages"
            
        }

        public init(pages: [Page]? = nil) {
            
            self.pages = pages
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pages = try container.decode([Page].self, forKey: .pages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            
        }
        
    }
}


