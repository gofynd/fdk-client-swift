

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Country
        Used By: Catalog
    */

    class Country: Codable {
        
        
        public var uid: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case displayName = "display_name"
            
        }

        public init(displayName: String? = nil, uid: String? = nil) {
            
            self.uid = uid
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Country
        Used By: Catalog
    */

    class Country: Codable {
        
        
        public var uid: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case displayName = "display_name"
            
        }

        public init(displayName: String? = nil, uid: String? = nil) {
            
            self.uid = uid
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}


