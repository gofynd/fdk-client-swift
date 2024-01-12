

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AdvanceObject
        Used By: Payment
    */
    class AdvanceObject: Codable {
        
        public var isActive: Bool?
        
        public var amount: Double?
        
        public var timeUnit: String?
        
        public var description: String?
        
        public var displayName: String?
        
        public var prepaymentType: String?
        
        public var prepaymentValue: Double?
        
        public var cancellationType: String?
        
        public var refundTimeLimit: Double?
        
        public var allPrepaymentType: [String]?
        
        public var allowCustomAdvanceAmount: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case amount = "amount"
            
            case timeUnit = "time_unit"
            
            case description = "description"
            
            case displayName = "display_name"
            
            case prepaymentType = "prepayment_type"
            
            case prepaymentValue = "prepayment_value"
            
            case cancellationType = "cancellation_type"
            
            case refundTimeLimit = "refund_time_limit"
            
            case allPrepaymentType = "all_prepayment_type"
            
            case allowCustomAdvanceAmount = "allow_custom_advance_amount"
            
        }

        public init(allowCustomAdvanceAmount: Bool? = nil, allPrepaymentType: [String]? = nil, amount: Double? = nil, cancellationType: String? = nil, description: String? = nil, displayName: String? = nil, isActive: Bool? = nil, prepaymentType: String? = nil, prepaymentValue: Double? = nil, refundTimeLimit: Double? = nil, timeUnit: String? = nil) {
            
            self.isActive = isActive
            
            self.amount = amount
            
            self.timeUnit = timeUnit
            
            self.description = description
            
            self.displayName = displayName
            
            self.prepaymentType = prepaymentType
            
            self.prepaymentValue = prepaymentValue
            
            self.cancellationType = cancellationType
            
            self.refundTimeLimit = refundTimeLimit
            
            self.allPrepaymentType = allPrepaymentType
            
            self.allowCustomAdvanceAmount = allowCustomAdvanceAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
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
                timeUnit = try container.decode(String.self, forKey: .timeUnit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                description = try container.decode(String.self, forKey: .description)
            
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
                prepaymentType = try container.decode(String.self, forKey: .prepaymentType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                prepaymentValue = try container.decode(Double.self, forKey: .prepaymentValue)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cancellationType = try container.decode(String.self, forKey: .cancellationType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                refundTimeLimit = try container.decode(Double.self, forKey: .refundTimeLimit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                allPrepaymentType = try container.decode([String].self, forKey: .allPrepaymentType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                allowCustomAdvanceAmount = try container.decode(Bool.self, forKey: .allowCustomAdvanceAmount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(timeUnit, forKey: .timeUnit)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(prepaymentType, forKey: .prepaymentType)
            
            
            
            try? container.encodeIfPresent(prepaymentValue, forKey: .prepaymentValue)
            
            
            
            try? container.encodeIfPresent(cancellationType, forKey: .cancellationType)
            
            
            
            try? container.encodeIfPresent(refundTimeLimit, forKey: .refundTimeLimit)
            
            
            
            try? container.encodeIfPresent(allPrepaymentType, forKey: .allPrepaymentType)
            
            
            
            try? container.encodeIfPresent(allowCustomAdvanceAmount, forKey: .allowCustomAdvanceAmount)
            
            
        }
        
    }
}
