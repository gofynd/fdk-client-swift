

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CODOffline
        Used By: Payment
    */

    class CODOffline: Codable {
        
        
        public var cod: CODPaymentMode?
        

        public enum CodingKeys: String, CodingKey {
            
            case cod = "cod"
            
        }

        public init(cod: CODPaymentMode? = nil) {
            
            self.cod = cod
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cod = try container.decode(CODPaymentMode.self, forKey: .cod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cod, forKey: .cod)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CODOffline
        Used By: Payment
    */

    class CODOffline: Codable {
        
        
        public var cod: CODPaymentMode?
        

        public enum CodingKeys: String, CodingKey {
            
            case cod = "cod"
            
        }

        public init(cod: CODPaymentMode? = nil) {
            
            self.cod = cod
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cod = try container.decode(CODPaymentMode.self, forKey: .cod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cod, forKey: .cod)
            
            
        }
        
    }
}


