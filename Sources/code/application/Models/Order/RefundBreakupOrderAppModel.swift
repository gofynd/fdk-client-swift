

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RefundBreakup
        Used By: Order
    */
    class RefundBreakup: Codable {
        
        public var mode: String?
        
        public var amount: Double?
        
        public var displayName: String?
        
        public var offline: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case amount = "amount"
            
            case displayName = "display_name"
            
            case offline = "offline"
            
        }

        public init(amount: Double? = nil, displayName: String? = nil, mode: String? = nil, offline: Bool? = nil) {
            
            self.mode = mode
            
            self.amount = amount
            
            self.displayName = displayName
            
            self.offline = offline
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                mode = try container.decode(String.self, forKey: .mode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                amount = try container.decode(Double.self, forKey: .amount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                displayName = try container.decode(String.self, forKey: .displayName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                offline = try container.decode(Bool.self, forKey: .offline)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(offline, forKey: .offline)
            
            
        }
        
    }
}
