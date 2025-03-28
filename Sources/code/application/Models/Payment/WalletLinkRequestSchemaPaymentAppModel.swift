

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: WalletLinkRequestSchema
        Used By: Payment
    */
    class WalletLinkRequestSchema: Codable {
        
        public var aggregator: String?
        
        public var mobile: String
        
        public var walletCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case mobile = "mobile"
            
            case walletCode = "wallet_code"
            
        }

        public init(aggregator: String? = nil, mobile: String, walletCode: String) {
            
            self.aggregator = aggregator
            
            self.mobile = mobile
            
            self.walletCode = walletCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            mobile = try container.decode(String.self, forKey: .mobile)
            
            
            
            
            walletCode = try container.decode(String.self, forKey: .walletCode)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            try? container.encodeIfPresent(walletCode, forKey: .walletCode)
            
            
        }
        
    }
}
