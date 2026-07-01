

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: LogoSet
        Used By: Payment
    */

    class LogoSet: Codable {
        
        
        public var large: String?
        
        public var small: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case large = "large"
            
            case small = "small"
            
        }

        public init(large: String? = nil, small: String? = nil) {
            
            self.large = large
            
            self.small = small
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    large = try container.decode(String.self, forKey: .large)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    small = try container.decode(String.self, forKey: .small)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(large, forKey: .large)
            
            
            
            
            try? container.encodeIfPresent(small, forKey: .small)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: LogoSet
        Used By: Payment
    */

    class LogoSet: Codable {
        
        
        public var large: String?
        
        public var small: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case large = "large"
            
            case small = "small"
            
        }

        public init(large: String? = nil, small: String? = nil) {
            
            self.large = large
            
            self.small = small
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    large = try container.decode(String.self, forKey: .large)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    small = try container.decode(String.self, forKey: .small)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(large, forKey: .large)
            
            
            
            
            try? container.encodeIfPresent(small, forKey: .small)
            
            
        }
        
    }
}


