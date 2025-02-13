

import Foundation
public extension PublicClient.Billing {
    /*
        Model: TenureConfigData
        Used By: Billing
    */

    class TenureConfigData: Codable {
        
        
        public var country: String?
        
        public var tenureConfig: [TenureConfig]?
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case tenureConfig = "tenure_config"
            
        }

        public init(country: String? = nil, tenureConfig: [TenureConfig]? = nil) {
            
            self.country = country
            
            self.tenureConfig = tenureConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tenureConfig = try container.decode([TenureConfig].self, forKey: .tenureConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            try? container.encodeIfPresent(tenureConfig, forKey: .tenureConfig)
            
            
        }
        
    }
}
