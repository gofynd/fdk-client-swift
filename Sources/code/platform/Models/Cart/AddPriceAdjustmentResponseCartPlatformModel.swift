

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: AddPriceAdjustmentResponse
        Used By: Cart
    */

    class AddPriceAdjustmentResponse: Codable {
        
        
        public var data: PriceAdjustment?
        
        public var success: Bool?
        
        public var priceAdjustments: [PriceAdjustment]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case success = "success"
            
            case priceAdjustments = "price_adjustments"
            
        }

        public init(data: PriceAdjustment? = nil, priceAdjustments: [PriceAdjustment]? = nil, success: Bool? = nil) {
            
            self.data = data
            
            self.success = success
            
            self.priceAdjustments = priceAdjustments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(PriceAdjustment.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceAdjustments = try container.decode([PriceAdjustment].self, forKey: .priceAdjustments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(priceAdjustments, forKey: .priceAdjustments)
            
            
        }
        
    }
}


