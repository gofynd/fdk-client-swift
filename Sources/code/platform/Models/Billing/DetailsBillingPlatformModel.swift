

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: Details
        Used By: Billing
    */

    class Details: Codable {
        
        
        public var feeComponents: [FeeComponents]?
        
        public var features: [Features]?
        

        public enum CodingKeys: String, CodingKey {
            
            case feeComponents = "fee_components"
            
            case features = "features"
            
        }

        public init(features: [Features]? = nil, feeComponents: [FeeComponents]? = nil) {
            
            self.feeComponents = feeComponents
            
            self.features = features
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    feeComponents = try container.decode([FeeComponents].self, forKey: .feeComponents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    features = try container.decode([Features].self, forKey: .features)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(feeComponents, forKey: .feeComponents)
            
            
            
            
            try? container.encodeIfPresent(features, forKey: .features)
            
            
        }
        
    }
}




