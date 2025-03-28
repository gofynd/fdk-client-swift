

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: Meta
        Used By: FileStorage
    */

    class Meta: Codable {
        
        
        public var generator: MetaProperty?
        

        public enum CodingKeys: String, CodingKey {
            
            case generator = "generator"
            
        }

        public init(generator: MetaProperty? = nil) {
            
            self.generator = generator
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    generator = try container.decode(MetaProperty.self, forKey: .generator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(generator, forKey: .generator)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: Meta
        Used By: FileStorage
    */

    class Meta: Codable {
        
        
        public var generator: MetaProperty?
        

        public enum CodingKeys: String, CodingKey {
            
            case generator = "generator"
            
        }

        public init(generator: MetaProperty? = nil) {
            
            self.generator = generator
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    generator = try container.decode(MetaProperty.self, forKey: .generator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(generator, forKey: .generator)
            
            
        }
        
    }
}


