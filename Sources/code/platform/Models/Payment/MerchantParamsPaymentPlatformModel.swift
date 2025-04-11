

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: MerchantParams
        Used By: Payment
    */

    class MerchantParams: Codable {
        
        
        public var source: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
        }

        public init(source: String? = nil) {
            
            self.source = source
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: MerchantParams
        Used By: Payment
    */

    class MerchantParams: Codable {
        
        
        public var source: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
        }

        public init(source: String? = nil) {
            
            self.source = source
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
        }
        
    }
}


