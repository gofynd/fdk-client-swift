

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerRuleResponseConditions
        Used By: Serviceability
    */

    class CourierPartnerRuleResponseConditions: Codable {
        
        
        public var forward: LocationRule?
        
        public var reverse: LocationRule?
        
        public var paymentMode: StringComparisonOperations?
        
        public var categoryIds: IntComparisonOperations?
        
        public var productIds: IntComparisonOperations?
        
        public var productTags: StringComparisonOperations?
        
        public var zoneIds: StringComparisonOperations?
        
        public var departmentIds: IntComparisonOperations?
        
        public var brandIds: IntComparisonOperations?
        
        public var orderPlaceDate: ArithmeticOperationsV2?
        
        public var storeIds: IntComparisonOperations?
        
        public var storeType: StringComparisonOperations?
        
        public var storeTags: StringComparisonOperations?
        
        public var shipmentWeight: ArithmeticOperations?
        
        public var shipmentCost: ArithmeticOperations?
        
        public var shipmentVolumetricWeight: ArithmeticOperations?
        
        public var companyIds: IntComparisonOperations?
        
        public var promiseTypes: StringComparisonOperations?
        

        public enum CodingKeys: String, CodingKey {
            
            case forward = "forward"
            
            case reverse = "reverse"
            
            case paymentMode = "payment_mode"
            
            case categoryIds = "category_ids"
            
            case productIds = "product_ids"
            
            case productTags = "product_tags"
            
            case zoneIds = "zone_ids"
            
            case departmentIds = "department_ids"
            
            case brandIds = "brand_ids"
            
            case orderPlaceDate = "order_place_date"
            
            case storeIds = "store_ids"
            
            case storeType = "store_type"
            
            case storeTags = "store_tags"
            
            case shipmentWeight = "shipment_weight"
            
            case shipmentCost = "shipment_cost"
            
            case shipmentVolumetricWeight = "shipment_volumetric_weight"
            
            case companyIds = "company_ids"
            
            case promiseTypes = "promise_types"
            
        }

        public init(brandIds: IntComparisonOperations? = nil, categoryIds: IntComparisonOperations? = nil, companyIds: IntComparisonOperations? = nil, departmentIds: IntComparisonOperations? = nil, forward: LocationRule? = nil, orderPlaceDate: ArithmeticOperationsV2? = nil, paymentMode: StringComparisonOperations? = nil, productIds: IntComparisonOperations? = nil, productTags: StringComparisonOperations? = nil, promiseTypes: StringComparisonOperations? = nil, reverse: LocationRule? = nil, shipmentCost: ArithmeticOperations? = nil, shipmentVolumetricWeight: ArithmeticOperations? = nil, shipmentWeight: ArithmeticOperations? = nil, storeIds: IntComparisonOperations? = nil, storeTags: StringComparisonOperations? = nil, storeType: StringComparisonOperations? = nil, zoneIds: StringComparisonOperations? = nil) {
            
            self.forward = forward
            
            self.reverse = reverse
            
            self.paymentMode = paymentMode
            
            self.categoryIds = categoryIds
            
            self.productIds = productIds
            
            self.productTags = productTags
            
            self.zoneIds = zoneIds
            
            self.departmentIds = departmentIds
            
            self.brandIds = brandIds
            
            self.orderPlaceDate = orderPlaceDate
            
            self.storeIds = storeIds
            
            self.storeType = storeType
            
            self.storeTags = storeTags
            
            self.shipmentWeight = shipmentWeight
            
            self.shipmentCost = shipmentCost
            
            self.shipmentVolumetricWeight = shipmentVolumetricWeight
            
            self.companyIds = companyIds
            
            self.promiseTypes = promiseTypes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    forward = try container.decode(LocationRule.self, forKey: .forward)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reverse = try container.decode(LocationRule.self, forKey: .reverse)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(StringComparisonOperations.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryIds = try container.decode(IntComparisonOperations.self, forKey: .categoryIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productIds = try container.decode(IntComparisonOperations.self, forKey: .productIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productTags = try container.decode(StringComparisonOperations.self, forKey: .productTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zoneIds = try container.decode(StringComparisonOperations.self, forKey: .zoneIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    departmentIds = try container.decode(IntComparisonOperations.self, forKey: .departmentIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandIds = try container.decode(IntComparisonOperations.self, forKey: .brandIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlaceDate = try container.decode(ArithmeticOperationsV2.self, forKey: .orderPlaceDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeIds = try container.decode(IntComparisonOperations.self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeType = try container.decode(StringComparisonOperations.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeTags = try container.decode(StringComparisonOperations.self, forKey: .storeTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentWeight = try container.decode(ArithmeticOperations.self, forKey: .shipmentWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentCost = try container.decode(ArithmeticOperations.self, forKey: .shipmentCost)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentVolumetricWeight = try container.decode(ArithmeticOperations.self, forKey: .shipmentVolumetricWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyIds = try container.decode(IntComparisonOperations.self, forKey: .companyIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promiseTypes = try container.decode(StringComparisonOperations.self, forKey: .promiseTypes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(forward, forKey: .forward)
            
            
            
            
            try? container.encodeIfPresent(reverse, forKey: .reverse)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(categoryIds, forKey: .categoryIds)
            
            
            
            
            try? container.encodeIfPresent(productIds, forKey: .productIds)
            
            
            
            
            try? container.encodeIfPresent(productTags, forKey: .productTags)
            
            
            
            
            try? container.encodeIfPresent(zoneIds, forKey: .zoneIds)
            
            
            
            
            try? container.encodeIfPresent(departmentIds, forKey: .departmentIds)
            
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(orderPlaceDate, forKey: .orderPlaceDate)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(storeTags, forKey: .storeTags)
            
            
            
            
            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)
            
            
            
            
            try? container.encodeIfPresent(shipmentCost, forKey: .shipmentCost)
            
            
            
            
            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(companyIds, forKey: .companyIds)
            
            
            
            
            try? container.encodeIfPresent(promiseTypes, forKey: .promiseTypes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerRuleResponseConditions
        Used By: Serviceability
    */

    class CourierPartnerRuleResponseConditions: Codable {
        
        
        public var forward: LocationRule?
        
        public var reverse: LocationRule?
        
        public var paymentMode: StringComparisonOperations?
        
        public var categoryIds: IntComparisonOperations?
        
        public var productIds: IntComparisonOperations?
        
        public var productTags: StringComparisonOperations?
        
        public var zoneIds: StringComparisonOperations?
        
        public var departmentIds: IntComparisonOperations?
        
        public var brandIds: IntComparisonOperations?
        
        public var orderPlaceDate: ArithmeticOperationsV2?
        
        public var storeIds: IntComparisonOperations?
        
        public var storeType: StringComparisonOperations?
        
        public var storeTags: StringComparisonOperations?
        
        public var shipmentWeight: ArithmeticOperations?
        
        public var shipmentCost: ArithmeticOperations?
        
        public var shipmentVolumetricWeight: ArithmeticOperations?
        
        public var companyIds: IntComparisonOperations?
        
        public var promiseTypes: StringComparisonOperations?
        

        public enum CodingKeys: String, CodingKey {
            
            case forward = "forward"
            
            case reverse = "reverse"
            
            case paymentMode = "payment_mode"
            
            case categoryIds = "category_ids"
            
            case productIds = "product_ids"
            
            case productTags = "product_tags"
            
            case zoneIds = "zone_ids"
            
            case departmentIds = "department_ids"
            
            case brandIds = "brand_ids"
            
            case orderPlaceDate = "order_place_date"
            
            case storeIds = "store_ids"
            
            case storeType = "store_type"
            
            case storeTags = "store_tags"
            
            case shipmentWeight = "shipment_weight"
            
            case shipmentCost = "shipment_cost"
            
            case shipmentVolumetricWeight = "shipment_volumetric_weight"
            
            case companyIds = "company_ids"
            
            case promiseTypes = "promise_types"
            
        }

        public init(brandIds: IntComparisonOperations? = nil, categoryIds: IntComparisonOperations? = nil, companyIds: IntComparisonOperations? = nil, departmentIds: IntComparisonOperations? = nil, forward: LocationRule? = nil, orderPlaceDate: ArithmeticOperationsV2? = nil, paymentMode: StringComparisonOperations? = nil, productIds: IntComparisonOperations? = nil, productTags: StringComparisonOperations? = nil, promiseTypes: StringComparisonOperations? = nil, reverse: LocationRule? = nil, shipmentCost: ArithmeticOperations? = nil, shipmentVolumetricWeight: ArithmeticOperations? = nil, shipmentWeight: ArithmeticOperations? = nil, storeIds: IntComparisonOperations? = nil, storeTags: StringComparisonOperations? = nil, storeType: StringComparisonOperations? = nil, zoneIds: StringComparisonOperations? = nil) {
            
            self.forward = forward
            
            self.reverse = reverse
            
            self.paymentMode = paymentMode
            
            self.categoryIds = categoryIds
            
            self.productIds = productIds
            
            self.productTags = productTags
            
            self.zoneIds = zoneIds
            
            self.departmentIds = departmentIds
            
            self.brandIds = brandIds
            
            self.orderPlaceDate = orderPlaceDate
            
            self.storeIds = storeIds
            
            self.storeType = storeType
            
            self.storeTags = storeTags
            
            self.shipmentWeight = shipmentWeight
            
            self.shipmentCost = shipmentCost
            
            self.shipmentVolumetricWeight = shipmentVolumetricWeight
            
            self.companyIds = companyIds
            
            self.promiseTypes = promiseTypes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    forward = try container.decode(LocationRule.self, forKey: .forward)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reverse = try container.decode(LocationRule.self, forKey: .reverse)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(StringComparisonOperations.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryIds = try container.decode(IntComparisonOperations.self, forKey: .categoryIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productIds = try container.decode(IntComparisonOperations.self, forKey: .productIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productTags = try container.decode(StringComparisonOperations.self, forKey: .productTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zoneIds = try container.decode(StringComparisonOperations.self, forKey: .zoneIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    departmentIds = try container.decode(IntComparisonOperations.self, forKey: .departmentIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandIds = try container.decode(IntComparisonOperations.self, forKey: .brandIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlaceDate = try container.decode(ArithmeticOperationsV2.self, forKey: .orderPlaceDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeIds = try container.decode(IntComparisonOperations.self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeType = try container.decode(StringComparisonOperations.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeTags = try container.decode(StringComparisonOperations.self, forKey: .storeTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentWeight = try container.decode(ArithmeticOperations.self, forKey: .shipmentWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentCost = try container.decode(ArithmeticOperations.self, forKey: .shipmentCost)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentVolumetricWeight = try container.decode(ArithmeticOperations.self, forKey: .shipmentVolumetricWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyIds = try container.decode(IntComparisonOperations.self, forKey: .companyIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promiseTypes = try container.decode(StringComparisonOperations.self, forKey: .promiseTypes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(forward, forKey: .forward)
            
            
            
            
            try? container.encodeIfPresent(reverse, forKey: .reverse)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(categoryIds, forKey: .categoryIds)
            
            
            
            
            try? container.encodeIfPresent(productIds, forKey: .productIds)
            
            
            
            
            try? container.encodeIfPresent(productTags, forKey: .productTags)
            
            
            
            
            try? container.encodeIfPresent(zoneIds, forKey: .zoneIds)
            
            
            
            
            try? container.encodeIfPresent(departmentIds, forKey: .departmentIds)
            
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(orderPlaceDate, forKey: .orderPlaceDate)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(storeTags, forKey: .storeTags)
            
            
            
            
            try? container.encodeIfPresent(shipmentWeight, forKey: .shipmentWeight)
            
            
            
            
            try? container.encodeIfPresent(shipmentCost, forKey: .shipmentCost)
            
            
            
            
            try? container.encodeIfPresent(shipmentVolumetricWeight, forKey: .shipmentVolumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(companyIds, forKey: .companyIds)
            
            
            
            
            try? container.encodeIfPresent(promiseTypes, forKey: .promiseTypes)
            
            
        }
        
    }
}


