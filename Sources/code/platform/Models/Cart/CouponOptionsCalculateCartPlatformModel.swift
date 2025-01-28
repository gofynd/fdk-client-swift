

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponOptionsCalculate
        Used By: Cart
    */

    class CouponOptionsCalculate: Codable {
        
        
        public var mrp: String?
        
        public var esp: String?
        
        public var tp: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mrp = "mrp"
            
            case esp = "esp"
            
            case tp = "tp"
            
        }

        public init(esp: String? = nil, mrp: String? = nil, tp: String? = nil) {
            
            self.mrp = mrp
            
            self.esp = esp
            
            self.tp = tp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mrp = try container.decode(String.self, forKey: .mrp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    esp = try container.decode(String.self, forKey: .esp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tp = try container.decode(String.self, forKey: .tp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mrp, forKey: .mrp)
            
            
            
            
            try? container.encodeIfPresent(esp, forKey: .esp)
            
            
            
            
            try? container.encodeIfPresent(tp, forKey: .tp)
            
            
        }
        
    }
}


