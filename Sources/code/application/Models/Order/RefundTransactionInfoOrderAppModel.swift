

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RefundTransactionInfo
        Used By: Order
    */
    class RefundTransactionInfo: Codable {
        
        public var rrn: String?
        
        public var utr: String?
        
        public var mode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case rrn = "rrn"
            
            case utr = "utr"
            
            case mode = "mode"
            
        }

        public init(mode: String? = nil, rrn: String? = nil, utr: String? = nil) {
            
            self.rrn = rrn
            
            self.utr = utr
            
            self.mode = mode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                rrn = try container.decode(String.self, forKey: .rrn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                utr = try container.decode(String.self, forKey: .utr)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mode = try container.decode(String.self, forKey: .mode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(rrn, forKey: .rrn)
            
            
            
            try? container.encodeIfPresent(utr, forKey: .utr)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
        }
        
    }
}
