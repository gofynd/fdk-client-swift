

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CPConfigurationSchema
        Used By: Order
    */

    class CPConfigurationSchema: Codable {
        
        
        public var shippingBy: String
        
        public var logisticsBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shippingBy = "shipping_by"
            
            case logisticsBy = "logistics_by"
            
        }

        public init(logisticsBy: String? = nil, shippingBy: String) {
            
            self.shippingBy = shippingBy
            
            self.logisticsBy = logisticsBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shippingBy = try container.decode(String.self, forKey: .shippingBy)
                
            
            
            
                do {
                    logisticsBy = try container.decode(String.self, forKey: .logisticsBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shippingBy, forKey: .shippingBy)
            
            
            
            
            try? container.encodeIfPresent(logisticsBy, forKey: .logisticsBy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CPConfigurationSchema
        Used By: Order
    */

    class CPConfigurationSchema: Codable {
        
        
        public var shippingBy: String
        
        public var logisticsBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shippingBy = "shipping_by"
            
            case logisticsBy = "logistics_by"
            
        }

        public init(logisticsBy: String? = nil, shippingBy: String) {
            
            self.shippingBy = shippingBy
            
            self.logisticsBy = logisticsBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shippingBy = try container.decode(String.self, forKey: .shippingBy)
                
            
            
            
                do {
                    logisticsBy = try container.decode(String.self, forKey: .logisticsBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shippingBy, forKey: .shippingBy)
            
            
            
            
            try? container.encodeIfPresent(logisticsBy, forKey: .logisticsBy)
            
            
        }
        
    }
}


