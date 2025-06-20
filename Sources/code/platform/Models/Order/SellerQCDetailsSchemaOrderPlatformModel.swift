

import Foundation


public extension PlatformClient.Order {
    /*
        Model: SellerQCDetailsSchema
        Used By: Order
    */

    class SellerQCDetailsSchema: Codable {
        
        
        public var lineNumber: Int
        
        public var goodQuantity: Int
        
        public var badQuantity: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumber = "line_number"
            
            case goodQuantity = "good_quantity"
            
            case badQuantity = "bad_quantity"
            
        }

        public init(badQuantity: Int, goodQuantity: Int, lineNumber: Int) {
            
            self.lineNumber = lineNumber
            
            self.goodQuantity = goodQuantity
            
            self.badQuantity = badQuantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)
                
            
            
            
                goodQuantity = try container.decode(Int.self, forKey: .goodQuantity)
                
            
            
            
                badQuantity = try container.decode(Int.self, forKey: .badQuantity)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(goodQuantity, forKey: .goodQuantity)
            
            
            
            
            try? container.encodeIfPresent(badQuantity, forKey: .badQuantity)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: SellerQCDetailsSchema
        Used By: Order
    */

    class SellerQCDetailsSchema: Codable {
        
        
        public var lineNumber: Int
        
        public var goodQuantity: Int
        
        public var badQuantity: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumber = "line_number"
            
            case goodQuantity = "good_quantity"
            
            case badQuantity = "bad_quantity"
            
        }

        public init(badQuantity: Int, goodQuantity: Int, lineNumber: Int) {
            
            self.lineNumber = lineNumber
            
            self.goodQuantity = goodQuantity
            
            self.badQuantity = badQuantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)
                
            
            
            
                goodQuantity = try container.decode(Int.self, forKey: .goodQuantity)
                
            
            
            
                badQuantity = try container.decode(Int.self, forKey: .badQuantity)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(goodQuantity, forKey: .goodQuantity)
            
            
            
            
            try? container.encodeIfPresent(badQuantity, forKey: .badQuantity)
            
            
        }
        
    }
}


