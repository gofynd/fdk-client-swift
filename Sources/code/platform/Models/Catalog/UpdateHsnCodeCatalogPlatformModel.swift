

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: UpdateHsnCode
        Used By: Catalog
    */

    class UpdateHsnCode: Codable {
        
        
        public var data: UpdateHsnCodesObject?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: UpdateHsnCodesObject? = nil) {
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(UpdateHsnCodesObject.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: UpdateHsnCode
        Used By: Catalog
    */

    class UpdateHsnCode: Codable {
        
        
        public var data: UpdateHsnCodesObject?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: UpdateHsnCodesObject? = nil) {
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(UpdateHsnCodesObject.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


