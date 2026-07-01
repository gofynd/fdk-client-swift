

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: PayloadEmailProviderStructure
        Used By: Communication
    */

    class PayloadEmailProviderStructure: Codable {
        
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
        }

        public init(id: String? = nil) {
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: PayloadEmailProviderStructure
        Used By: Communication
    */

    class PayloadEmailProviderStructure: Codable {
        
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
        }

        public init(id: String? = nil) {
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


