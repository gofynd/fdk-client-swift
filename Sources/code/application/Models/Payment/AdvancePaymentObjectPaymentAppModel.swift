

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AdvancePaymentObject
        Used By: Payment
    */
    class AdvancePaymentObject: Codable {
        
        public var name: String?
        
        public var displayPriority: Double?
        
        public var paymentModeId: Double?
        
        public var displayName: String?
        
        public var list: [PaymentModeList]?
        
        public var split: SplitObject?
        
        public var advance: AdvanceObject?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case displayPriority = "display_priority"
            
            case paymentModeId = "payment_mode_id"
            
            case displayName = "display_name"
            
            case list = "list"
            
            case split = "split"
            
            case advance = "advance"
            
        }

        public init(advance: AdvanceObject? = nil, displayName: String? = nil, displayPriority: Double? = nil, list: [PaymentModeList]? = nil, name: String? = nil, paymentModeId: Double? = nil, split: SplitObject? = nil) {
            
            self.name = name
            
            self.displayPriority = displayPriority
            
            self.paymentModeId = paymentModeId
            
            self.displayName = displayName
            
            self.list = list
            
            self.split = split
            
            self.advance = advance
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                displayPriority = try container.decode(Double.self, forKey: .displayPriority)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentModeId = try container.decode(Double.self, forKey: .paymentModeId)
            
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
                list = try container.decode([PaymentModeList].self, forKey: .list)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                split = try container.decode(SplitObject.self, forKey: .split)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                advance = try container.decode(AdvanceObject.self, forKey: .advance)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encode(paymentModeId, forKey: .paymentModeId)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(list, forKey: .list)
            
            
            
            
            try? container.encodeIfPresent(split, forKey: .split)
            
            
            
            
            try? container.encodeIfPresent(advance, forKey: .advance)
            
            
        }
        
    }
}
