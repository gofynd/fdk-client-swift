

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: DeliveryTat
        Used By: Serviceability
    */

    class DeliveryTat: Codable {
        
        
        public var tat: DeliveryTatSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case tat = "tat"
            
        }

        public init(tat: DeliveryTatSchema? = nil) {
            
            self.tat = tat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tat = try container.decode(DeliveryTatSchema.self, forKey: .tat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: DeliveryTat
        Used By: Serviceability
    */

    class DeliveryTat: Codable {
        
        
        public var tat: DeliveryTatSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case tat = "tat"
            
        }

        public init(tat: DeliveryTatSchema? = nil) {
            
            self.tat = tat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tat = try container.decode(DeliveryTatSchema.self, forKey: .tat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
        }
        
    }
}


