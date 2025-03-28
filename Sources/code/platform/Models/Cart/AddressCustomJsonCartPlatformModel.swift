

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: AddressCustomJson
        Used By: Cart
    */

    class AddressCustomJson: Codable {
        
        
        public var metaData: String?
        
        public var metaDataInt: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case metaData = "meta_data"
            
            case metaDataInt = "meta_data_int"
            
        }

        public init(metaData: String? = nil, metaDataInt: Double? = nil) {
            
            self.metaData = metaData
            
            self.metaDataInt = metaDataInt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    metaData = try container.decode(String.self, forKey: .metaData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    metaDataInt = try container.decode(Double.self, forKey: .metaDataInt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(metaData, forKey: .metaData)
            
            
            
            
            try? container.encodeIfPresent(metaDataInt, forKey: .metaDataInt)
            
            
        }
        
    }
}


