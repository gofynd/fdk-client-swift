

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: Dp
        Used By: Serviceability
    */

    class Dp: Codable {
        
        
        public var fmPriority: Int?
        
        public var rvpPriority: Int?
        
        public var lmPriority: Int?
        
        public var internalAccountId: String?
        
        public var areaCode: Int?
        
        public var paymentMode: String?
        
        public var operations: [String]?
        
        public var externalAccountId: String?
        
        public var transportMode: String?
        
        public var assignDpFromSb: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case fmPriority = "fm_priority"
            
            case rvpPriority = "rvp_priority"
            
            case lmPriority = "lm_priority"
            
            case internalAccountId = "internal_account_id"
            
            case areaCode = "area_code"
            
            case paymentMode = "payment_mode"
            
            case operations = "operations"
            
            case externalAccountId = "external_account_id"
            
            case transportMode = "transport_mode"
            
            case assignDpFromSb = "assign_dp_from_sb"
            
        }

        public init(areaCode: Int? = nil, assignDpFromSb: Bool? = nil, externalAccountId: String? = nil, fmPriority: Int? = nil, internalAccountId: String? = nil, lmPriority: Int? = nil, operations: [String]? = nil, paymentMode: String? = nil, rvpPriority: Int? = nil, transportMode: String? = nil) {
            
            self.fmPriority = fmPriority
            
            self.rvpPriority = rvpPriority
            
            self.lmPriority = lmPriority
            
            self.internalAccountId = internalAccountId
            
            self.areaCode = areaCode
            
            self.paymentMode = paymentMode
            
            self.operations = operations
            
            self.externalAccountId = externalAccountId
            
            self.transportMode = transportMode
            
            self.assignDpFromSb = assignDpFromSb
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fmPriority = try container.decode(Int.self, forKey: .fmPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rvpPriority = try container.decode(Int.self, forKey: .rvpPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lmPriority = try container.decode(Int.self, forKey: .lmPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    internalAccountId = try container.decode(String.self, forKey: .internalAccountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    areaCode = try container.decode(Int.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operations = try container.decode([String].self, forKey: .operations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalAccountId = try container.decode(String.self, forKey: .externalAccountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transportMode = try container.decode(String.self, forKey: .transportMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assignDpFromSb = try container.decode(Bool.self, forKey: .assignDpFromSb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fmPriority, forKey: .fmPriority)
            
            
            
            
            try? container.encodeIfPresent(rvpPriority, forKey: .rvpPriority)
            
            
            
            
            try? container.encodeIfPresent(lmPriority, forKey: .lmPriority)
            
            
            
            
            try? container.encodeIfPresent(internalAccountId, forKey: .internalAccountId)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(operations, forKey: .operations)
            
            
            
            
            try? container.encodeIfPresent(externalAccountId, forKey: .externalAccountId)
            
            
            
            
            try? container.encodeIfPresent(transportMode, forKey: .transportMode)
            
            
            
            
            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: Dp
        Used By: Serviceability
    */

    class Dp: Codable {
        
        
        public var fmPriority: Int?
        
        public var rvpPriority: Int?
        
        public var lmPriority: Int?
        
        public var internalAccountId: String?
        
        public var areaCode: Int?
        
        public var paymentMode: String?
        
        public var operations: [String]?
        
        public var externalAccountId: String?
        
        public var transportMode: String?
        
        public var assignDpFromSb: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case fmPriority = "fm_priority"
            
            case rvpPriority = "rvp_priority"
            
            case lmPriority = "lm_priority"
            
            case internalAccountId = "internal_account_id"
            
            case areaCode = "area_code"
            
            case paymentMode = "payment_mode"
            
            case operations = "operations"
            
            case externalAccountId = "external_account_id"
            
            case transportMode = "transport_mode"
            
            case assignDpFromSb = "assign_dp_from_sb"
            
        }

        public init(areaCode: Int? = nil, assignDpFromSb: Bool? = nil, externalAccountId: String? = nil, fmPriority: Int? = nil, internalAccountId: String? = nil, lmPriority: Int? = nil, operations: [String]? = nil, paymentMode: String? = nil, rvpPriority: Int? = nil, transportMode: String? = nil) {
            
            self.fmPriority = fmPriority
            
            self.rvpPriority = rvpPriority
            
            self.lmPriority = lmPriority
            
            self.internalAccountId = internalAccountId
            
            self.areaCode = areaCode
            
            self.paymentMode = paymentMode
            
            self.operations = operations
            
            self.externalAccountId = externalAccountId
            
            self.transportMode = transportMode
            
            self.assignDpFromSb = assignDpFromSb
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fmPriority = try container.decode(Int.self, forKey: .fmPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rvpPriority = try container.decode(Int.self, forKey: .rvpPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lmPriority = try container.decode(Int.self, forKey: .lmPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    internalAccountId = try container.decode(String.self, forKey: .internalAccountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    areaCode = try container.decode(Int.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operations = try container.decode([String].self, forKey: .operations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalAccountId = try container.decode(String.self, forKey: .externalAccountId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transportMode = try container.decode(String.self, forKey: .transportMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assignDpFromSb = try container.decode(Bool.self, forKey: .assignDpFromSb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fmPriority, forKey: .fmPriority)
            
            
            
            
            try? container.encodeIfPresent(rvpPriority, forKey: .rvpPriority)
            
            
            
            
            try? container.encodeIfPresent(lmPriority, forKey: .lmPriority)
            
            
            
            
            try? container.encodeIfPresent(internalAccountId, forKey: .internalAccountId)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(operations, forKey: .operations)
            
            
            
            
            try? container.encodeIfPresent(externalAccountId, forKey: .externalAccountId)
            
            
            
            
            try? container.encodeIfPresent(transportMode, forKey: .transportMode)
            
            
            
            
            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)
            
            
        }
        
    }
}


