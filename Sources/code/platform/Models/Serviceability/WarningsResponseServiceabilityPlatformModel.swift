

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: WarningsResponse
        Used By: Serviceability
    */

    class WarningsResponse: Codable {
        
        
        public var storeAddress: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeAddress = "store_address"
            
        }

        public init(storeAddress: String? = nil) {
            
            self.storeAddress = storeAddress
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeAddress = try container.decode(String.self, forKey: .storeAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeAddress, forKey: .storeAddress)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: WarningsResponse
        Used By: Serviceability
    */

    class WarningsResponse: Codable {
        
        
        public var storeAddress: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeAddress = "store_address"
            
        }

        public init(storeAddress: String? = nil) {
            
            self.storeAddress = storeAddress
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeAddress = try container.decode(String.self, forKey: .storeAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeAddress, forKey: .storeAddress)
            
            
        }
        
    }
}


