

import Foundation


public extension PlatformClient.Content {
    /*
        Model: NavigationAssignment
        Used By: Content
    */

    class NavigationAssignment: Codable {
        
        
        public var platform: String?
        
        public var orientation: String?
        
        public var position: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case platform = "platform"
            
            case orientation = "orientation"
            
            case position = "position"
            
        }

        public init(orientation: String? = nil, platform: String? = nil, position: String? = nil) {
            
            self.platform = platform
            
            self.orientation = orientation
            
            self.position = position
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    platform = try container.decode(String.self, forKey: .platform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orientation = try container.decode(String.self, forKey: .orientation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    position = try container.decode(String.self, forKey: .position)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(orientation, forKey: .orientation)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: NavigationAssignment
        Used By: Content
    */

    class NavigationAssignment: Codable {
        
        
        public var platform: String?
        
        public var orientation: String?
        
        public var position: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case platform = "platform"
            
            case orientation = "orientation"
            
            case position = "position"
            
        }

        public init(orientation: String? = nil, platform: String? = nil, position: String? = nil) {
            
            self.platform = platform
            
            self.orientation = orientation
            
            self.position = position
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    platform = try container.decode(String.self, forKey: .platform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orientation = try container.decode(String.self, forKey: .orientation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    position = try container.decode(String.self, forKey: .position)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(orientation, forKey: .orientation)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
        }
        
    }
}


