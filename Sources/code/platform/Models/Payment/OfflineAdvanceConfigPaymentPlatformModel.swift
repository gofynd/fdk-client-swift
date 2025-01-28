

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OfflineAdvanceConfig
        Used By: Payment
    */

    class OfflineAdvanceConfig: Codable {
        
        
        public var anonymous: Bool?
        
        public var userLimit: Int?
        
        public var charges: Int?
        
        public var chargesMaxValue: Int?
        
        public var chargesMinValue: Int?
        
        public var maxOrderValue: Int?
        
        public var minOrderValue: Int?
        
        public var isActive: Bool?
        
        public var name: String?
        
        public var numberOfSplit: Double?
        
        public var slug: String?
        
        public var saveAllowed: Bool?
        
        public var prepaymentType: String?
        
        public var prepaymentValue: Int?
        
        public var refundTimeLimit: Int?
        
        public var timeUnit: String?
        
        public var cancellationType: String?
        
        public var allCancellationType: [String]?
        
        public var allowCustomAdvanceAmount: Bool?
        
        public var description: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case anonymous = "anonymous"
            
            case userLimit = "user_limit"
            
            case charges = "charges"
            
            case chargesMaxValue = "charges_max_value"
            
            case chargesMinValue = "charges_min_value"
            
            case maxOrderValue = "max_order_value"
            
            case minOrderValue = "min_order_value"
            
            case isActive = "is_active"
            
            case name = "name"
            
            case numberOfSplit = "number_of_split"
            
            case slug = "slug"
            
            case saveAllowed = "save_allowed"
            
            case prepaymentType = "prepayment_type"
            
            case prepaymentValue = "prepayment_value"
            
            case refundTimeLimit = "refund_time_limit"
            
            case timeUnit = "time_unit"
            
            case cancellationType = "cancellation_type"
            
            case allCancellationType = "all_cancellation_type"
            
            case allowCustomAdvanceAmount = "allow_custom_advance_amount"
            
            case description = "description"
            
            case displayName = "display_name"
            
        }

        public init(allowCustomAdvanceAmount: Bool? = nil, allCancellationType: [String]? = nil, anonymous: Bool? = nil, cancellationType: String? = nil, charges: Int? = nil, chargesMaxValue: Int? = nil, chargesMinValue: Int? = nil, description: String? = nil, displayName: String? = nil, isActive: Bool? = nil, maxOrderValue: Int? = nil, minOrderValue: Int? = nil, name: String? = nil, numberOfSplit: Double? = nil, prepaymentType: String? = nil, prepaymentValue: Int? = nil, refundTimeLimit: Int? = nil, saveAllowed: Bool? = nil, slug: String? = nil, timeUnit: String? = nil, userLimit: Int? = nil) {
            
            self.anonymous = anonymous
            
            self.userLimit = userLimit
            
            self.charges = charges
            
            self.chargesMaxValue = chargesMaxValue
            
            self.chargesMinValue = chargesMinValue
            
            self.maxOrderValue = maxOrderValue
            
            self.minOrderValue = minOrderValue
            
            self.isActive = isActive
            
            self.name = name
            
            self.numberOfSplit = numberOfSplit
            
            self.slug = slug
            
            self.saveAllowed = saveAllowed
            
            self.prepaymentType = prepaymentType
            
            self.prepaymentValue = prepaymentValue
            
            self.refundTimeLimit = refundTimeLimit
            
            self.timeUnit = timeUnit
            
            self.cancellationType = cancellationType
            
            self.allCancellationType = allCancellationType
            
            self.allowCustomAdvanceAmount = allowCustomAdvanceAmount
            
            self.description = description
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    anonymous = try container.decode(Bool.self, forKey: .anonymous)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userLimit = try container.decode(Int.self, forKey: .userLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    charges = try container.decode(Int.self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    chargesMaxValue = try container.decode(Int.self, forKey: .chargesMaxValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    chargesMinValue = try container.decode(Int.self, forKey: .chargesMinValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxOrderValue = try container.decode(Int.self, forKey: .maxOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minOrderValue = try container.decode(Int.self, forKey: .minOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    numberOfSplit = try container.decode(Double.self, forKey: .numberOfSplit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    saveAllowed = try container.decode(Bool.self, forKey: .saveAllowed)
                
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
                    prepaymentValue = try container.decode(Int.self, forKey: .prepaymentValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundTimeLimit = try container.decode(Int.self, forKey: .refundTimeLimit)
                
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
                    cancellationType = try container.decode(String.self, forKey: .cancellationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allCancellationType = try container.decode([String].self, forKey: .allCancellationType)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
            
            
            
            
            try? container.encodeIfPresent(userLimit, forKey: .userLimit)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(chargesMaxValue, forKey: .chargesMaxValue)
            
            
            
            
            try? container.encodeIfPresent(chargesMinValue, forKey: .chargesMinValue)
            
            
            
            
            try? container.encodeIfPresent(maxOrderValue, forKey: .maxOrderValue)
            
            
            
            
            try? container.encodeIfPresent(minOrderValue, forKey: .minOrderValue)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(numberOfSplit, forKey: .numberOfSplit)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(saveAllowed, forKey: .saveAllowed)
            
            
            
            
            try? container.encodeIfPresent(prepaymentType, forKey: .prepaymentType)
            
            
            
            
            try? container.encodeIfPresent(prepaymentValue, forKey: .prepaymentValue)
            
            
            
            
            try? container.encodeIfPresent(refundTimeLimit, forKey: .refundTimeLimit)
            
            
            
            
            try? container.encodeIfPresent(timeUnit, forKey: .timeUnit)
            
            
            
            
            try? container.encodeIfPresent(cancellationType, forKey: .cancellationType)
            
            
            
            
            try? container.encodeIfPresent(allCancellationType, forKey: .allCancellationType)
            
            
            
            
            try? container.encodeIfPresent(allowCustomAdvanceAmount, forKey: .allowCustomAdvanceAmount)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OfflineAdvanceConfig
        Used By: Payment
    */

    class OfflineAdvanceConfig: Codable {
        
        
        public var anonymous: Bool?
        
        public var userLimit: Int?
        
        public var charges: Int?
        
        public var chargesMaxValue: Int?
        
        public var chargesMinValue: Int?
        
        public var maxOrderValue: Int?
        
        public var minOrderValue: Int?
        
        public var isActive: Bool?
        
        public var name: String?
        
        public var numberOfSplit: Double?
        
        public var slug: String?
        
        public var saveAllowed: Bool?
        
        public var prepaymentType: String?
        
        public var prepaymentValue: Int?
        
        public var refundTimeLimit: Int?
        
        public var timeUnit: String?
        
        public var cancellationType: String?
        
        public var allCancellationType: [String]?
        
        public var allowCustomAdvanceAmount: Bool?
        
        public var description: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case anonymous = "anonymous"
            
            case userLimit = "user_limit"
            
            case charges = "charges"
            
            case chargesMaxValue = "charges_max_value"
            
            case chargesMinValue = "charges_min_value"
            
            case maxOrderValue = "max_order_value"
            
            case minOrderValue = "min_order_value"
            
            case isActive = "is_active"
            
            case name = "name"
            
            case numberOfSplit = "number_of_split"
            
            case slug = "slug"
            
            case saveAllowed = "save_allowed"
            
            case prepaymentType = "prepayment_type"
            
            case prepaymentValue = "prepayment_value"
            
            case refundTimeLimit = "refund_time_limit"
            
            case timeUnit = "time_unit"
            
            case cancellationType = "cancellation_type"
            
            case allCancellationType = "all_cancellation_type"
            
            case allowCustomAdvanceAmount = "allow_custom_advance_amount"
            
            case description = "description"
            
            case displayName = "display_name"
            
        }

        public init(allowCustomAdvanceAmount: Bool? = nil, allCancellationType: [String]? = nil, anonymous: Bool? = nil, cancellationType: String? = nil, charges: Int? = nil, chargesMaxValue: Int? = nil, chargesMinValue: Int? = nil, description: String? = nil, displayName: String? = nil, isActive: Bool? = nil, maxOrderValue: Int? = nil, minOrderValue: Int? = nil, name: String? = nil, numberOfSplit: Double? = nil, prepaymentType: String? = nil, prepaymentValue: Int? = nil, refundTimeLimit: Int? = nil, saveAllowed: Bool? = nil, slug: String? = nil, timeUnit: String? = nil, userLimit: Int? = nil) {
            
            self.anonymous = anonymous
            
            self.userLimit = userLimit
            
            self.charges = charges
            
            self.chargesMaxValue = chargesMaxValue
            
            self.chargesMinValue = chargesMinValue
            
            self.maxOrderValue = maxOrderValue
            
            self.minOrderValue = minOrderValue
            
            self.isActive = isActive
            
            self.name = name
            
            self.numberOfSplit = numberOfSplit
            
            self.slug = slug
            
            self.saveAllowed = saveAllowed
            
            self.prepaymentType = prepaymentType
            
            self.prepaymentValue = prepaymentValue
            
            self.refundTimeLimit = refundTimeLimit
            
            self.timeUnit = timeUnit
            
            self.cancellationType = cancellationType
            
            self.allCancellationType = allCancellationType
            
            self.allowCustomAdvanceAmount = allowCustomAdvanceAmount
            
            self.description = description
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    anonymous = try container.decode(Bool.self, forKey: .anonymous)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userLimit = try container.decode(Int.self, forKey: .userLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    charges = try container.decode(Int.self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    chargesMaxValue = try container.decode(Int.self, forKey: .chargesMaxValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    chargesMinValue = try container.decode(Int.self, forKey: .chargesMinValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxOrderValue = try container.decode(Int.self, forKey: .maxOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minOrderValue = try container.decode(Int.self, forKey: .minOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    numberOfSplit = try container.decode(Double.self, forKey: .numberOfSplit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    saveAllowed = try container.decode(Bool.self, forKey: .saveAllowed)
                
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
                    prepaymentValue = try container.decode(Int.self, forKey: .prepaymentValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundTimeLimit = try container.decode(Int.self, forKey: .refundTimeLimit)
                
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
                    cancellationType = try container.decode(String.self, forKey: .cancellationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allCancellationType = try container.decode([String].self, forKey: .allCancellationType)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
            
            
            
            
            try? container.encodeIfPresent(userLimit, forKey: .userLimit)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(chargesMaxValue, forKey: .chargesMaxValue)
            
            
            
            
            try? container.encodeIfPresent(chargesMinValue, forKey: .chargesMinValue)
            
            
            
            
            try? container.encodeIfPresent(maxOrderValue, forKey: .maxOrderValue)
            
            
            
            
            try? container.encodeIfPresent(minOrderValue, forKey: .minOrderValue)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(numberOfSplit, forKey: .numberOfSplit)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(saveAllowed, forKey: .saveAllowed)
            
            
            
            
            try? container.encodeIfPresent(prepaymentType, forKey: .prepaymentType)
            
            
            
            
            try? container.encodeIfPresent(prepaymentValue, forKey: .prepaymentValue)
            
            
            
            
            try? container.encodeIfPresent(refundTimeLimit, forKey: .refundTimeLimit)
            
            
            
            
            try? container.encodeIfPresent(timeUnit, forKey: .timeUnit)
            
            
            
            
            try? container.encodeIfPresent(cancellationType, forKey: .cancellationType)
            
            
            
            
            try? container.encodeIfPresent(allCancellationType, forKey: .allCancellationType)
            
            
            
            
            try? container.encodeIfPresent(allowCustomAdvanceAmount, forKey: .allowCustomAdvanceAmount)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}


