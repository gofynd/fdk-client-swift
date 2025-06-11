

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: ShipmentIdBarcodeGenerator
        Used By: FileStorage
    */

    class ShipmentIdBarcodeGenerator: Codable {
        
        
        public var method: String?
        
        public var kwargs: Kwargs?
        

        public enum CodingKeys: String, CodingKey {
            
            case method = "method"
            
            case kwargs = "kwargs"
            
        }

        public init(kwargs: Kwargs? = nil, method: String? = nil) {
            
            self.method = method
            
            self.kwargs = kwargs
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    method = try container.decode(String.self, forKey: .method)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    kwargs = try container.decode(Kwargs.self, forKey: .kwargs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
            
            
            try? container.encodeIfPresent(kwargs, forKey: .kwargs)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: ShipmentIdBarcodeGenerator
        Used By: FileStorage
    */

    class ShipmentIdBarcodeGenerator: Codable {
        
        
        public var method: String?
        
        public var kwargs: Kwargs?
        

        public enum CodingKeys: String, CodingKey {
            
            case method = "method"
            
            case kwargs = "kwargs"
            
        }

        public init(kwargs: Kwargs? = nil, method: String? = nil) {
            
            self.method = method
            
            self.kwargs = kwargs
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    method = try container.decode(String.self, forKey: .method)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    kwargs = try container.decode(Kwargs.self, forKey: .kwargs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
            
            
            try? container.encodeIfPresent(kwargs, forKey: .kwargs)
            
            
        }
        
    }
}


