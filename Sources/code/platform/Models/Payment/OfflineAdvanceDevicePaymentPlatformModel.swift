

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OfflineAdvanceDevice
        Used By: Payment
    */

    class OfflineAdvanceDevice: Codable {
        
        
        public var android: Bool?
        
        public var ios: Bool?
        
        public var desktop: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case android = "android"
            
            case ios = "ios"
            
            case desktop = "desktop"
            
        }

        public init(android: Bool? = nil, desktop: Bool? = nil, ios: Bool? = nil) {
            
            self.android = android
            
            self.ios = ios
            
            self.desktop = desktop
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    android = try container.decode(Bool.self, forKey: .android)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ios = try container.decode(Bool.self, forKey: .ios)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    desktop = try container.decode(Bool.self, forKey: .desktop)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(android, forKey: .android)
            
            
            
            
            try? container.encodeIfPresent(ios, forKey: .ios)
            
            
            
            
            try? container.encodeIfPresent(desktop, forKey: .desktop)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OfflineAdvanceDevice
        Used By: Payment
    */

    class OfflineAdvanceDevice: Codable {
        
        
        public var android: Bool?
        
        public var ios: Bool?
        
        public var desktop: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case android = "android"
            
            case ios = "ios"
            
            case desktop = "desktop"
            
        }

        public init(android: Bool? = nil, desktop: Bool? = nil, ios: Bool? = nil) {
            
            self.android = android
            
            self.ios = ios
            
            self.desktop = desktop
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    android = try container.decode(Bool.self, forKey: .android)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ios = try container.decode(Bool.self, forKey: .ios)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    desktop = try container.decode(Bool.self, forKey: .desktop)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(android, forKey: .android)
            
            
            
            
            try? container.encodeIfPresent(ios, forKey: .ios)
            
            
            
            
            try? container.encodeIfPresent(desktop, forKey: .desktop)
            
            
        }
        
    }
}


