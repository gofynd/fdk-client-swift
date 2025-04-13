

import Foundation


public extension PlatformClient.Content {
    /*
        Model: PageRequestVisibility
        Used By: Content
    */

    class PageRequestVisibility: Codable {
        
        
        public var test: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case test = "test"
            
        }

        public init(test: Bool? = nil) {
            
            self.test = test
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    test = try container.decode(Bool.self, forKey: .test)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(test, forKey: .test)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: PageRequestVisibility
        Used By: Content
    */

    class PageRequestVisibility: Codable {
        
        
        public var test: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case test = "test"
            
        }

        public init(test: Bool? = nil) {
            
            self.test = test
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    test = try container.decode(Bool.self, forKey: .test)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(test, forKey: .test)
            
            
        }
        
    }
}


