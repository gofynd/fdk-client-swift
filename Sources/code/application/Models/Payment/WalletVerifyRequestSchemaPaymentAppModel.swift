

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: WalletVerifyRequestSchema
        Used By: Payment
    */
    class WalletVerifyRequestSchema: Codable {
        
        public var aggregator: String
        
        public var linkToken: String
        
        public var otp: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case linkToken = "link_token"
            
            case otp = "otp"
            
        }

        public init(aggregator: String, linkToken: String, otp: Int) {
            
            self.aggregator = aggregator
            
            self.linkToken = linkToken
            
            self.otp = otp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
            
            linkToken = try container.decode(String.self, forKey: .linkToken)
            
            
            
            
            otp = try container.decode(Int.self, forKey: .otp)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(linkToken, forKey: .linkToken)
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
        }
        
    }
}
