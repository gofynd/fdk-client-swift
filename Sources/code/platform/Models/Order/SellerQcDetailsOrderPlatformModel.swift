

import Foundation


public extension PlatformClient.Order {
    /*
        Model: SellerQcDetails
        Used By: Order
    */

    class SellerQcDetails: Codable {
        
        
        public var lineNumber: Int?
        
        public var badQuantity: Int?
        
        public var goodQuantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumber = "line_number"
            
            case badQuantity = "bad_quantity"
            
            case goodQuantity = "good_quantity"
            
        }

        public init(badQuantity: Int? = nil, goodQuantity: Int? = nil, lineNumber: Int? = nil) {
            
            self.lineNumber = lineNumber
            
            self.badQuantity = badQuantity
            
            self.goodQuantity = goodQuantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    lineNumber = try container.decode(Int.self, forKey: .lineNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    badQuantity = try container.decode(Int.self, forKey: .badQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    goodQuantity = try container.decode(Int.self, forKey: .goodQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(badQuantity, forKey: .badQuantity)
            
            
            
            
            try? container.encodeIfPresent(goodQuantity, forKey: .goodQuantity)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: SellerQcDetails
        Used By: Order
    */

    class SellerQcDetails: Codable {
        
        
        public var lineNumber: Int?
        
        public var badQuantity: Int?
        
        public var goodQuantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumber = "line_number"
            
            case badQuantity = "bad_quantity"
            
            case goodQuantity = "good_quantity"
            
        }

        public init(badQuantity: Int? = nil, goodQuantity: Int? = nil, lineNumber: Int? = nil) {
            
            self.lineNumber = lineNumber
            
            self.badQuantity = badQuantity
            
            self.goodQuantity = goodQuantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    lineNumber = try container.decode(Int.self, forKey: .lineNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    badQuantity = try container.decode(Int.self, forKey: .badQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    goodQuantity = try container.decode(Int.self, forKey: .goodQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(badQuantity, forKey: .badQuantity)
            
            
            
            
            try? container.encodeIfPresent(goodQuantity, forKey: .goodQuantity)
            
            
        }
        
    }
}


