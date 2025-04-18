

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponOptions
        Used By: Cart
    */

    class CouponOptions: Codable {
        
        
        public var types: CouponOptionTypes?
        
        public var scopes: CouponOptionScopes?
        
        public var applicableOn: CouponOptionsApplicable?
        
        public var valueTypes: CouponOptionsValueTypes?
        
        public var calculateOn: CouponOptionsCalculate?
        
        public var payableCategory: CouponOptionsPayableCategory?
        
        public var txnMode: CouponOptionsTxnMode?
        
        public var payableBy: CouponOptionsPayableBy?
        

        public enum CodingKeys: String, CodingKey {
            
            case types = "types"
            
            case scopes = "scopes"
            
            case applicableOn = "applicable_on"
            
            case valueTypes = "value_types"
            
            case calculateOn = "calculate_on"
            
            case payableCategory = "payable_category"
            
            case txnMode = "txn_mode"
            
            case payableBy = "payable_by"
            
        }

        public init(applicableOn: CouponOptionsApplicable? = nil, calculateOn: CouponOptionsCalculate? = nil, payableBy: CouponOptionsPayableBy? = nil, payableCategory: CouponOptionsPayableCategory? = nil, scopes: CouponOptionScopes? = nil, txnMode: CouponOptionsTxnMode? = nil, types: CouponOptionTypes? = nil, valueTypes: CouponOptionsValueTypes? = nil) {
            
            self.types = types
            
            self.scopes = scopes
            
            self.applicableOn = applicableOn
            
            self.valueTypes = valueTypes
            
            self.calculateOn = calculateOn
            
            self.payableCategory = payableCategory
            
            self.txnMode = txnMode
            
            self.payableBy = payableBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    types = try container.decode(CouponOptionTypes.self, forKey: .types)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    scopes = try container.decode(CouponOptionScopes.self, forKey: .scopes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicableOn = try container.decode(CouponOptionsApplicable.self, forKey: .applicableOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    valueTypes = try container.decode(CouponOptionsValueTypes.self, forKey: .valueTypes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    calculateOn = try container.decode(CouponOptionsCalculate.self, forKey: .calculateOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payableCategory = try container.decode(CouponOptionsPayableCategory.self, forKey: .payableCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    txnMode = try container.decode(CouponOptionsTxnMode.self, forKey: .txnMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payableBy = try container.decode(CouponOptionsPayableBy.self, forKey: .payableBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(types, forKey: .types)
            
            
            
            
            try? container.encodeIfPresent(scopes, forKey: .scopes)
            
            
            
            
            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)
            
            
            
            
            try? container.encodeIfPresent(valueTypes, forKey: .valueTypes)
            
            
            
            
            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)
            
            
            
            
            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
            
            
            
            
            try? container.encodeIfPresent(txnMode, forKey: .txnMode)
            
            
            
            
            try? container.encodeIfPresent(payableBy, forKey: .payableBy)
            
            
        }
        
    }
}


