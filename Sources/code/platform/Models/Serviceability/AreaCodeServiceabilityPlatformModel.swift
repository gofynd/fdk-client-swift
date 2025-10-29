

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: AreaCode
        Used By: Serviceability
    */

    class AreaCode: Codable {
        
        
        public var source: String?
        
        public var destination: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
            case destination = "destination"
            
        }

        public init(destination: String? = nil, source: String? = nil) {
            
            self.source = source
            
            self.destination = destination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    destination = try container.decode(String.self, forKey: .destination)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(destination, forKey: .destination)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: AreaCode
        Used By: Serviceability
    */

    class AreaCode: Codable {
        
        
        public var source: String?
        
        public var destination: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
            case destination = "destination"
            
        }

        public init(destination: String? = nil, source: String? = nil) {
            
            self.source = source
            
            self.destination = destination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    destination = try container.decode(String.self, forKey: .destination)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(destination, forKey: .destination)
            
            
        }
        
    }
}


