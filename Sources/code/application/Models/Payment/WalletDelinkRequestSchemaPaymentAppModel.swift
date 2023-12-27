

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: WalletDelinkRequestSchema
        Used By: Payment
    */
    class WalletDelinkRequestSchema: Codable {
        
        public var aggregator: String
        
        public var walletCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case walletCode = "wallet_code"
            
        }

        public init(aggregator: String, walletCode: String) {
            
            self.aggregator = aggregator
            
            self.walletCode = walletCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
            
            walletCode = try container.decode(String.self, forKey: .walletCode)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(walletCode, forKey: .walletCode)
            
            
        }
        
    }
}
