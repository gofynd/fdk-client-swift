

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StoreRuleConditionSchema
        Used By: Serviceability
    */

    class StoreRuleConditionSchema: Codable {
        
        
        public var departmentIds: IntComparisonOperations?
        
        public var categoryIds: IntComparisonOperations?
        
        public var brandIds: IntComparisonOperations?
        
        public var toLocation: LocationRule?
        
        public var customerRadius: CustomerRadiusSchema?
        
        public var storeType: StringComparisonOperations?
        
        public var productTags: StringComparisonOperations?
        
        public var productIds: IntComparisonOperations?
        
        public var storeTags: StringComparisonOperations?
        
        public var orderPlaceDate: DateOperations?
        
        public var zoneIds: StringComparisonOperations?
        

        public enum CodingKeys: String, CodingKey {
            
            case departmentIds = "department_ids"
            
            case categoryIds = "category_ids"
            
            case brandIds = "brand_ids"
            
            case toLocation = "to_location"
            
            case customerRadius = "customer_radius"
            
            case storeType = "store_type"
            
            case productTags = "product_tags"
            
            case productIds = "product_ids"
            
            case storeTags = "store_tags"
            
            case orderPlaceDate = "order_place_date"
            
            case zoneIds = "zone_ids"
            
        }

        public init(brandIds: IntComparisonOperations? = nil, categoryIds: IntComparisonOperations? = nil, customerRadius: CustomerRadiusSchema? = nil, departmentIds: IntComparisonOperations? = nil, orderPlaceDate: DateOperations? = nil, productIds: IntComparisonOperations? = nil, productTags: StringComparisonOperations? = nil, storeTags: StringComparisonOperations? = nil, storeType: StringComparisonOperations? = nil, toLocation: LocationRule? = nil, zoneIds: StringComparisonOperations? = nil) {
            
            self.departmentIds = departmentIds
            
            self.categoryIds = categoryIds
            
            self.brandIds = brandIds
            
            self.toLocation = toLocation
            
            self.customerRadius = customerRadius
            
            self.storeType = storeType
            
            self.productTags = productTags
            
            self.productIds = productIds
            
            self.storeTags = storeTags
            
            self.orderPlaceDate = orderPlaceDate
            
            self.zoneIds = zoneIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    departmentIds = try container.decode(IntComparisonOperations.self, forKey: .departmentIds)
                
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
                    brandIds = try container.decode(IntComparisonOperations.self, forKey: .brandIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    toLocation = try container.decode(LocationRule.self, forKey: .toLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerRadius = try container.decode(CustomerRadiusSchema.self, forKey: .customerRadius)
                
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
                    productTags = try container.decode(StringComparisonOperations.self, forKey: .productTags)
                
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
                    storeTags = try container.decode(StringComparisonOperations.self, forKey: .storeTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlaceDate = try container.decode(DateOperations.self, forKey: .orderPlaceDate)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(departmentIds, forKey: .departmentIds)
            
            
            
            
            try? container.encodeIfPresent(categoryIds, forKey: .categoryIds)
            
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(toLocation, forKey: .toLocation)
            
            
            
            
            try? container.encodeIfPresent(customerRadius, forKey: .customerRadius)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(productTags, forKey: .productTags)
            
            
            
            
            try? container.encodeIfPresent(productIds, forKey: .productIds)
            
            
            
            
            try? container.encodeIfPresent(storeTags, forKey: .storeTags)
            
            
            
            
            try? container.encodeIfPresent(orderPlaceDate, forKey: .orderPlaceDate)
            
            
            
            
            try? container.encodeIfPresent(zoneIds, forKey: .zoneIds)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StoreRuleConditionSchema
        Used By: Serviceability
    */

    class StoreRuleConditionSchema: Codable {
        
        
        public var departmentIds: IntComparisonOperations?
        
        public var categoryIds: IntComparisonOperations?
        
        public var brandIds: IntComparisonOperations?
        
        public var toLocation: LocationRule?
        
        public var customerRadius: CustomerRadiusSchema?
        
        public var storeType: StringComparisonOperations?
        
        public var productTags: StringComparisonOperations?
        
        public var productIds: IntComparisonOperations?
        
        public var storeTags: StringComparisonOperations?
        
        public var orderPlaceDate: DateOperations?
        
        public var zoneIds: StringComparisonOperations?
        

        public enum CodingKeys: String, CodingKey {
            
            case departmentIds = "department_ids"
            
            case categoryIds = "category_ids"
            
            case brandIds = "brand_ids"
            
            case toLocation = "to_location"
            
            case customerRadius = "customer_radius"
            
            case storeType = "store_type"
            
            case productTags = "product_tags"
            
            case productIds = "product_ids"
            
            case storeTags = "store_tags"
            
            case orderPlaceDate = "order_place_date"
            
            case zoneIds = "zone_ids"
            
        }

        public init(brandIds: IntComparisonOperations? = nil, categoryIds: IntComparisonOperations? = nil, customerRadius: CustomerRadiusSchema? = nil, departmentIds: IntComparisonOperations? = nil, orderPlaceDate: DateOperations? = nil, productIds: IntComparisonOperations? = nil, productTags: StringComparisonOperations? = nil, storeTags: StringComparisonOperations? = nil, storeType: StringComparisonOperations? = nil, toLocation: LocationRule? = nil, zoneIds: StringComparisonOperations? = nil) {
            
            self.departmentIds = departmentIds
            
            self.categoryIds = categoryIds
            
            self.brandIds = brandIds
            
            self.toLocation = toLocation
            
            self.customerRadius = customerRadius
            
            self.storeType = storeType
            
            self.productTags = productTags
            
            self.productIds = productIds
            
            self.storeTags = storeTags
            
            self.orderPlaceDate = orderPlaceDate
            
            self.zoneIds = zoneIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    departmentIds = try container.decode(IntComparisonOperations.self, forKey: .departmentIds)
                
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
                    brandIds = try container.decode(IntComparisonOperations.self, forKey: .brandIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    toLocation = try container.decode(LocationRule.self, forKey: .toLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerRadius = try container.decode(CustomerRadiusSchema.self, forKey: .customerRadius)
                
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
                    productTags = try container.decode(StringComparisonOperations.self, forKey: .productTags)
                
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
                    storeTags = try container.decode(StringComparisonOperations.self, forKey: .storeTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlaceDate = try container.decode(DateOperations.self, forKey: .orderPlaceDate)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(departmentIds, forKey: .departmentIds)
            
            
            
            
            try? container.encodeIfPresent(categoryIds, forKey: .categoryIds)
            
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(toLocation, forKey: .toLocation)
            
            
            
            
            try? container.encodeIfPresent(customerRadius, forKey: .customerRadius)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(productTags, forKey: .productTags)
            
            
            
            
            try? container.encodeIfPresent(productIds, forKey: .productIds)
            
            
            
            
            try? container.encodeIfPresent(storeTags, forKey: .storeTags)
            
            
            
            
            try? container.encodeIfPresent(orderPlaceDate, forKey: .orderPlaceDate)
            
            
            
            
            try? container.encodeIfPresent(zoneIds, forKey: .zoneIds)
            
            
        }
        
    }
}


