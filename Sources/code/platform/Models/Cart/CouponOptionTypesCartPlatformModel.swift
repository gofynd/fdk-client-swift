

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponOptionTypes
        Used By: Cart
    */

    class CouponOptionTypes: Codable {
        
        
        public var absolute: String?
        
        public var percentage: String?
        
        public var bogo: String?
        
        public var bundle: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case absolute = "absolute"
            
            case percentage = "percentage"
            
            case bogo = "bogo"
            
            case bundle = "bundle"
            
        }

        public init(absolute: String? = nil, bogo: String? = nil, bundle: String? = nil, percentage: String? = nil) {
            
            self.absolute = absolute
            
            self.percentage = percentage
            
            self.bogo = bogo
            
            self.bundle = bundle
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    absolute = try container.decode(String.self, forKey: .absolute)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    percentage = try container.decode(String.self, forKey: .percentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bogo = try container.decode(String.self, forKey: .bogo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bundle = try container.decode(String.self, forKey: .bundle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(absolute, forKey: .absolute)
            
            
            
            
            try? container.encodeIfPresent(percentage, forKey: .percentage)
            
            
            
            
            try? container.encodeIfPresent(bogo, forKey: .bogo)
            
            
            
            
            try? container.encodeIfPresent(bundle, forKey: .bundle)
            
            
        }
        
    }
}


