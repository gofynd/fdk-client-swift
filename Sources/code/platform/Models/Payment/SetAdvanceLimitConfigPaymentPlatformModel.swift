

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SetAdvanceLimitConfig
        Used By: Payment
    */

    class SetAdvanceLimitConfig: Codable {
        
        
        public var isActive: Bool
        
        public var prepaymentType: String
        
        public var prepaymentValue: Double
        
        public var cancellationType: String?
        
        public var allCancellationType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case prepaymentType = "prepayment_type"
            
            case prepaymentValue = "prepayment_value"
            
            case cancellationType = "cancellation_type"
            
            case allCancellationType = "all_cancellation_type"
            
        }

        public init(allCancellationType: [String]? = nil, cancellationType: String? = nil, isActive: Bool, prepaymentType: String, prepaymentValue: Double) {
            
            self.isActive = isActive
            
            self.prepaymentType = prepaymentType
            
            self.prepaymentValue = prepaymentValue
            
            self.cancellationType = cancellationType
            
            self.allCancellationType = allCancellationType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                prepaymentType = try container.decode(String.self, forKey: .prepaymentType)
                
            
            
            
                prepaymentValue = try container.decode(Double.self, forKey: .prepaymentValue)
                
            
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(prepaymentType, forKey: .prepaymentType)
            
            
            
            
            try? container.encodeIfPresent(prepaymentValue, forKey: .prepaymentValue)
            
            
            
            
            try? container.encodeIfPresent(cancellationType, forKey: .cancellationType)
            
            
            
            
            try? container.encodeIfPresent(allCancellationType, forKey: .allCancellationType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SetAdvanceLimitConfig
        Used By: Payment
    */

    class SetAdvanceLimitConfig: Codable {
        
        
        public var isActive: Bool
        
        public var prepaymentType: String
        
        public var prepaymentValue: Double
        
        public var cancellationType: String?
        
        public var allCancellationType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case prepaymentType = "prepayment_type"
            
            case prepaymentValue = "prepayment_value"
            
            case cancellationType = "cancellation_type"
            
            case allCancellationType = "all_cancellation_type"
            
        }

        public init(allCancellationType: [String]? = nil, cancellationType: String? = nil, isActive: Bool, prepaymentType: String, prepaymentValue: Double) {
            
            self.isActive = isActive
            
            self.prepaymentType = prepaymentType
            
            self.prepaymentValue = prepaymentValue
            
            self.cancellationType = cancellationType
            
            self.allCancellationType = allCancellationType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                prepaymentType = try container.decode(String.self, forKey: .prepaymentType)
                
            
            
            
                prepaymentValue = try container.decode(Double.self, forKey: .prepaymentValue)
                
            
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(prepaymentType, forKey: .prepaymentType)
            
            
            
            
            try? container.encodeIfPresent(prepaymentValue, forKey: .prepaymentValue)
            
            
            
            
            try? container.encodeIfPresent(cancellationType, forKey: .cancellationType)
            
            
            
            
            try? container.encodeIfPresent(allCancellationType, forKey: .allCancellationType)
            
            
        }
        
    }
}


