

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: WalletDelinkRequestSchema
        Used By: Payment
    */
    class WalletDelinkRequestSchema: Codable {
        
        public var aggregator: String
        
        public var walletCode: String
        
        public var walletId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case walletCode = "wallet_code"
            
            case walletId = "wallet_id"
            
        }

        public init(aggregator: String, walletCode: String, walletId: String? = nil) {
            
            self.aggregator = aggregator
            
            self.walletCode = walletCode
            
            self.walletId = walletId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
            
            walletCode = try container.decode(String.self, forKey: .walletCode)
            
            
            
            
            do {
                walletId = try container.decode(String.self, forKey: .walletId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(walletCode, forKey: .walletCode)
            
            
            
            try? container.encodeIfPresent(walletId, forKey: .walletId)
            
            
        }
        
    }
}
