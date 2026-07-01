

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PackageProduct
        Used By: Order
    */

    class PackageProduct: Codable {
        
        
        public var lineNumber: Int
        
        public var quantity: Double
        
        public var identifier: String
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumber = "line_number"
            
            case quantity = "quantity"
            
            case identifier = "identifier"
            
        }

        public init(identifier: String, lineNumber: Int, quantity: Double) {
            
            self.lineNumber = lineNumber
            
            self.quantity = quantity
            
            self.identifier = identifier
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)
                
            
            
            
                quantity = try container.decode(Double.self, forKey: .quantity)
                
            
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PackageProduct
        Used By: Order
    */

    class PackageProduct: Codable {
        
        
        public var lineNumber: Int
        
        public var quantity: Double
        
        public var identifier: String
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumber = "line_number"
            
            case quantity = "quantity"
            
            case identifier = "identifier"
            
        }

        public init(identifier: String, lineNumber: Int, quantity: Double) {
            
            self.lineNumber = lineNumber
            
            self.quantity = quantity
            
            self.identifier = identifier
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)
                
            
            
            
                quantity = try container.decode(Double.self, forKey: .quantity)
                
            
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
        }
        
    }
}


