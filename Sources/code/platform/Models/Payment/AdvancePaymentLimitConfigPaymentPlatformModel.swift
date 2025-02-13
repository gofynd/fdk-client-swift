

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AdvancePaymentLimitConfig
        Used By: Payment
    */

    class AdvancePaymentLimitConfig: Codable {
        
        
        public var isActive: Bool?
        
        public var prepaymentType: String?
        
        public var prepaymentValue: Double?
        
        public var cancellationType: String?
        
        public var allCancellationType: [String]?
        
        public var allPrepaymentType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case prepaymentType = "prepayment_type"
            
            case prepaymentValue = "prepayment_value"
            
            case cancellationType = "cancellation_type"
            
            case allCancellationType = "all_cancellation_type"
            
            case allPrepaymentType = "all_prepayment_type"
            
        }

        public init(allCancellationType: [String]? = nil, allPrepaymentType: [String]? = nil, cancellationType: String? = nil, isActive: Bool? = nil, prepaymentType: String? = nil, prepaymentValue: Double? = nil) {
            
            self.isActive = isActive
            
            self.prepaymentType = prepaymentType
            
            self.prepaymentValue = prepaymentValue
            
            self.cancellationType = cancellationType
            
            self.allCancellationType = allCancellationType
            
            self.allPrepaymentType = allPrepaymentType
            
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
                    allCancellationType = try container.decode([String].self, forKey: .allCancellationType)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(prepaymentType, forKey: .prepaymentType)
            
            
            
            
            try? container.encodeIfPresent(prepaymentValue, forKey: .prepaymentValue)
            
            
            
            
            try? container.encodeIfPresent(cancellationType, forKey: .cancellationType)
            
            
            
            
            try? container.encodeIfPresent(allCancellationType, forKey: .allCancellationType)
            
            
            
            
            try? container.encodeIfPresent(allPrepaymentType, forKey: .allPrepaymentType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AdvancePaymentLimitConfig
        Used By: Payment
    */

    class AdvancePaymentLimitConfig: Codable {
        
        
        public var isActive: Bool?
        
        public var prepaymentType: String?
        
        public var prepaymentValue: Double?
        
        public var cancellationType: String?
        
        public var allCancellationType: [String]?
        
        public var allPrepaymentType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case prepaymentType = "prepayment_type"
            
            case prepaymentValue = "prepayment_value"
            
            case cancellationType = "cancellation_type"
            
            case allCancellationType = "all_cancellation_type"
            
            case allPrepaymentType = "all_prepayment_type"
            
        }

        public init(allCancellationType: [String]? = nil, allPrepaymentType: [String]? = nil, cancellationType: String? = nil, isActive: Bool? = nil, prepaymentType: String? = nil, prepaymentValue: Double? = nil) {
            
            self.isActive = isActive
            
            self.prepaymentType = prepaymentType
            
            self.prepaymentValue = prepaymentValue
            
            self.cancellationType = cancellationType
            
            self.allCancellationType = allCancellationType
            
            self.allPrepaymentType = allPrepaymentType
            
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
                    allCancellationType = try container.decode([String].self, forKey: .allCancellationType)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(prepaymentType, forKey: .prepaymentType)
            
            
            
            
            try? container.encodeIfPresent(prepaymentValue, forKey: .prepaymentValue)
            
            
            
            
            try? container.encodeIfPresent(cancellationType, forKey: .cancellationType)
            
            
            
            
            try? container.encodeIfPresent(allCancellationType, forKey: .allCancellationType)
            
            
            
            
            try? container.encodeIfPresent(allPrepaymentType, forKey: .allPrepaymentType)
            
            
        }
        
    }
}


