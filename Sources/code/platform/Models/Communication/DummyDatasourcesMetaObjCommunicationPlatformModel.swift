

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: DummyDatasourcesMetaObj
        Used By: Communication
    */

    class DummyDatasourcesMetaObj: Codable {
        
        
        public var b: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case b = "b"
            
        }

        public init(b: Int? = nil) {
            
            self.b = b
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    b = try container.decode(Int.self, forKey: .b)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(b, forKey: .b)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: DummyDatasourcesMetaObj
        Used By: Communication
    */

    class DummyDatasourcesMetaObj: Codable {
        
        
        public var b: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case b = "b"
            
        }

        public init(b: Int? = nil) {
            
            self.b = b
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    b = try container.decode(Int.self, forKey: .b)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(b, forKey: .b)
            
            
        }
        
    }
}


