

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityStoreSummary
        Used By: Serviceability
    */

    class StorePolygonServiceabilityStoreSummary: Codable {
        
        
        public var storeCode: String
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeCode = "store_code"
            
            case name = "name"
            
        }

        public init(name: String? = nil, storeCode: String) {
            
            self.storeCode = storeCode
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storeCode = try container.decode(String.self, forKey: .storeCode)
                
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityStoreSummary
        Used By: Serviceability
    */

    class StorePolygonServiceabilityStoreSummary: Codable {
        
        
        public var storeCode: String
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeCode = "store_code"
            
            case name = "name"
            
        }

        public init(name: String? = nil, storeCode: String) {
            
            self.storeCode = storeCode
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storeCode = try container.decode(String.self, forKey: .storeCode)
                
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}


