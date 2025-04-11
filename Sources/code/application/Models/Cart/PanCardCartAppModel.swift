

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: PanCard
        Used By: Cart
    */
    class PanCard: Codable {
        
        public var enabled: Bool?
        
        public var codThresholdAmount: Int?
        
        public var onlineThresholdAmount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case codThresholdAmount = "cod_threshold_amount"
            
            case onlineThresholdAmount = "online_threshold_amount"
            
        }

        public init(codThresholdAmount: Int? = nil, enabled: Bool? = nil, onlineThresholdAmount: Int? = nil) {
            
            self.enabled = enabled
            
            self.codThresholdAmount = codThresholdAmount
            
            self.onlineThresholdAmount = onlineThresholdAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                codThresholdAmount = try container.decode(Int.self, forKey: .codThresholdAmount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                onlineThresholdAmount = try container.decode(Int.self, forKey: .onlineThresholdAmount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            try? container.encodeIfPresent(codThresholdAmount, forKey: .codThresholdAmount)
            
            
            
            try? container.encodeIfPresent(onlineThresholdAmount, forKey: .onlineThresholdAmount)
            
            
        }
        
    }
}
